package androidx.constraintlayout.core.parser;

/* loaded from: classes.dex */
public class CLParser {
    static boolean DEBUG = false;
    private boolean hasComment = false;
    private int lineNumber;
    private String mContent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.parser.CLParser$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE;

        static {
            int[] iArr = new int[TYPE.values().length];
            $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE = iArr;
            try {
                iArr[TYPE.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public CLParser(String str) {
        this.mContent = str;
    }

    private CLElement createElement(CLElement cLElement, int i4, TYPE type, boolean z9, char[] cArr) {
        CLElement allocate;
        if (DEBUG) {
            System.out.println("CREATE " + type + " at " + cArr[i4]);
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[type.ordinal()]) {
            case 1:
                allocate = CLObject.allocate(cArr);
                i4++;
                break;
            case 2:
                allocate = CLArray.allocate(cArr);
                i4++;
                break;
            case 3:
                allocate = CLString.allocate(cArr);
                break;
            case 4:
                allocate = CLNumber.allocate(cArr);
                break;
            case 5:
                allocate = CLKey.allocate(cArr);
                break;
            case 6:
                allocate = CLToken.allocate(cArr);
                break;
            default:
                allocate = null;
                break;
        }
        if (allocate == null) {
            return null;
        }
        allocate.setLine(this.lineNumber);
        if (z9) {
            allocate.setStart(i4);
        }
        if (cLElement instanceof CLContainer) {
            allocate.setContainer((CLContainer) cLElement);
        }
        return allocate;
    }

    private CLElement getNextJsonElement(int i4, char c10, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\r' || c10 == ' ') {
            return cLElement;
        }
        if (c10 == '\"' || c10 == '\'') {
            if (cLElement instanceof CLObject) {
                return createElement(cLElement, i4, TYPE.KEY, true, cArr);
            }
            return createElement(cLElement, i4, TYPE.STRING, true, cArr);
        } else if (c10 != '[') {
            if (c10 != ']') {
                if (c10 == '{') {
                    return createElement(cLElement, i4, TYPE.OBJECT, true, cArr);
                }
                if (c10 != '}') {
                    switch (c10) {
                        case '+':
                        case '-':
                        case '.':
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            return createElement(cLElement, i4, TYPE.NUMBER, true, cArr);
                        case ',':
                        case ':':
                            return cLElement;
                        case '/':
                            int i10 = i4 + 1;
                            if (i10 >= cArr.length || cArr[i10] != '/') {
                                return cLElement;
                            }
                            this.hasComment = true;
                            return cLElement;
                        default:
                            if ((cLElement instanceof CLContainer) && !(cLElement instanceof CLObject)) {
                                CLElement createElement = createElement(cLElement, i4, TYPE.TOKEN, true, cArr);
                                CLToken cLToken = (CLToken) createElement;
                                if (cLToken.validate(c10, i4)) {
                                    return createElement;
                                }
                                throw new CLParsingException("incorrect token <" + c10 + "> at line " + this.lineNumber, cLToken);
                            }
                            return createElement(cLElement, i4, TYPE.KEY, true, cArr);
                    }
                }
            }
            cLElement.setEnd(i4 - 1);
            CLElement container = cLElement.getContainer();
            container.setEnd(i4);
            return container;
        } else {
            return createElement(cLElement, i4, TYPE.ARRAY, true, cArr);
        }
    }

    public static CLObject parse(String str) throws CLParsingException {
        return new CLParser(str).parse();
    }

    public CLObject parse() throws CLParsingException {
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        int i4 = 1;
        this.lineNumber = 1;
        boolean z9 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            char c10 = charArray[i10];
            if (c10 == '{') {
                break;
            }
            if (c10 == '\n') {
                this.lineNumber++;
            }
            i10++;
        }
        if (i10 != -1) {
            CLObject allocate = CLObject.allocate(charArray);
            allocate.setLine(this.lineNumber);
            allocate.setStart(i10);
            int i11 = i10 + 1;
            CLObject cLObject = allocate;
            while (i11 < length) {
                char c11 = charArray[i11];
                if (c11 == '\n') {
                    this.lineNumber += i4;
                }
                if (this.hasComment) {
                    if (c11 == '\n') {
                        this.hasComment = z9;
                    } else {
                        continue;
                        i11++;
                        i4 = 1;
                        z9 = false;
                    }
                }
                if (cLObject == null) {
                    break;
                }
                if (cLObject.isDone()) {
                    cLObject = getNextJsonElement(i11, c11, cLObject, charArray);
                } else if (cLObject instanceof CLObject) {
                    if (c11 == '}') {
                        cLObject.setEnd(i11 - 1);
                    } else {
                        cLObject = getNextJsonElement(i11, c11, cLObject, charArray);
                    }
                } else if (!(cLObject instanceof CLArray)) {
                    boolean z10 = cLObject instanceof CLString;
                    if (z10) {
                        long j4 = cLObject.start;
                        if (charArray[(int) j4] == c11) {
                            cLObject.setStart(j4 + 1);
                            cLObject.setEnd(i11 - 1);
                        }
                    } else {
                        if (cLObject instanceof CLToken) {
                            CLToken cLToken = (CLToken) cLObject;
                            if (!cLToken.validate(c11, i11)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.lineNumber, cLToken);
                            }
                        }
                        if ((cLObject instanceof CLKey) || z10) {
                            long j10 = cLObject.start;
                            char c12 = charArray[(int) j10];
                            if ((c12 == '\'' || c12 == '\"') && c12 == c11) {
                                cLObject.setStart(j10 + 1);
                                cLObject.setEnd(i11 - 1);
                            }
                        }
                        if (!cLObject.isDone() && (c11 == '}' || c11 == ']' || c11 == ',' || c11 == ' ' || c11 == '\t' || c11 == '\r' || c11 == '\n' || c11 == ':')) {
                            long j11 = i11 - 1;
                            cLObject.setEnd(j11);
                            if (c11 == '}' || c11 == ']') {
                                cLObject = cLObject.getContainer();
                                cLObject.setEnd(j11);
                                if (cLObject instanceof CLKey) {
                                    cLObject = cLObject.getContainer();
                                    cLObject.setEnd(j11);
                                }
                            }
                        }
                    }
                } else if (c11 == ']') {
                    cLObject.setEnd(i11 - 1);
                } else {
                    cLObject = getNextJsonElement(i11, c11, cLObject, charArray);
                }
                if (cLObject.isDone() && (!(cLObject instanceof CLKey) || ((CLKey) cLObject).mElements.size() > 0)) {
                    cLObject = cLObject.getContainer();
                }
                i11++;
                i4 = 1;
                z9 = false;
            }
            while (cLObject != null && !cLObject.isDone()) {
                if (cLObject instanceof CLString) {
                    cLObject.setStart(((int) cLObject.start) + 1);
                }
                cLObject.setEnd(length - 1);
                cLObject = cLObject.getContainer();
            }
            if (DEBUG) {
                System.out.println("Root: " + allocate.toJSON());
            }
            return allocate;
        }
        throw new CLParsingException("invalid json content", null);
    }
}
