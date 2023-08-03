package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: ReaderBasedJsonParser.java */
/* loaded from: classes.dex */
public class g extends com.fasterxml.jackson.core.base.b {

    /* renamed from: m3  reason: collision with root package name */
    private static final int f14082m3 = JsonParser.Feature.ALLOW_TRAILING_COMMA.getMask();

    /* renamed from: n3  reason: collision with root package name */
    private static final int f14083n3 = JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS.getMask();

    /* renamed from: o3  reason: collision with root package name */
    private static final int f14084o3 = JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS.getMask();

    /* renamed from: p3  reason: collision with root package name */
    private static final int f14085p3 = JsonParser.Feature.ALLOW_MISSING_VALUES.getMask();

    /* renamed from: q3  reason: collision with root package name */
    private static final int f14086q3 = JsonParser.Feature.ALLOW_SINGLE_QUOTES.getMask();

    /* renamed from: r3  reason: collision with root package name */
    private static final int f14087r3 = JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES.getMask();

    /* renamed from: s3  reason: collision with root package name */
    private static final int f14088s3 = JsonParser.Feature.ALLOW_COMMENTS.getMask();

    /* renamed from: t3  reason: collision with root package name */
    private static final int f14089t3 = JsonParser.Feature.ALLOW_YAML_COMMENTS.getMask();

    /* renamed from: u3  reason: collision with root package name */
    protected static final int[] f14090u3 = com.fasterxml.jackson.core.io.b.h();

    /* renamed from: c3  reason: collision with root package name */
    protected Reader f14091c3;

    /* renamed from: d3  reason: collision with root package name */
    protected char[] f14092d3;

    /* renamed from: e3  reason: collision with root package name */
    protected boolean f14093e3;

    /* renamed from: f3  reason: collision with root package name */
    protected com.fasterxml.jackson.core.h f14094f3;

    /* renamed from: g3  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.sym.b f14095g3;

    /* renamed from: h3  reason: collision with root package name */
    protected final int f14096h3;

    /* renamed from: i3  reason: collision with root package name */
    protected boolean f14097i3;

    /* renamed from: j3  reason: collision with root package name */
    protected long f14098j3;

    /* renamed from: k3  reason: collision with root package name */
    protected int f14099k3;

    /* renamed from: l3  reason: collision with root package name */
    protected int f14100l3;

    public g(com.fasterxml.jackson.core.io.d dVar, int i4, Reader reader, com.fasterxml.jackson.core.h hVar, com.fasterxml.jackson.core.sym.b bVar, char[] cArr, int i10, int i11, boolean z9) {
        super(dVar, i4);
        this.f14091c3 = reader;
        this.f14094f3 = hVar;
        this.f14092d3 = cArr;
        this.f13788x2 = i10;
        this.f13789y2 = i11;
        this.G2 = i10;
        this.E2 = -i10;
        this.f14095g3 = bVar;
        this.f14096h3 = bVar.o();
        this.f14093e3 = z9;
    }

    private final void C3() throws IOException {
        int i4;
        char c10;
        int i10 = this.f13788x2;
        if (i10 + 4 < this.f13789y2) {
            char[] cArr = this.f14092d3;
            if (cArr[i10] == 'a') {
                int i11 = i10 + 1;
                if (cArr[i11] == 'l') {
                    int i12 = i11 + 1;
                    if (cArr[i12] == 's') {
                        int i13 = i12 + 1;
                        if (cArr[i13] == 'e' && ((c10 = cArr[(i4 = i13 + 1)]) < '0' || c10 == ']' || c10 == '}')) {
                            this.f13788x2 = i4;
                            return;
                        }
                    }
                }
            }
        }
        E3("false", 1);
    }

    private final void D3() throws IOException {
        int i4;
        char c10;
        int i10 = this.f13788x2;
        if (i10 + 3 < this.f13789y2) {
            char[] cArr = this.f14092d3;
            if (cArr[i10] == 'u') {
                int i11 = i10 + 1;
                if (cArr[i11] == 'l') {
                    int i12 = i11 + 1;
                    if (cArr[i12] == 'l' && ((c10 = cArr[(i4 = i12 + 1)]) < '0' || c10 == ']' || c10 == '}')) {
                        this.f13788x2 = i4;
                        return;
                    }
                }
            }
        }
        E3("null", 1);
    }

    private final void F3(String str, int i4) throws IOException {
        int i10;
        char c10;
        int length = str.length();
        do {
            if ((this.f13788x2 >= this.f13789y2 && !A3()) || this.f14092d3[this.f13788x2] != str.charAt(i4)) {
                S3(str.substring(0, i4));
            }
            i10 = this.f13788x2 + 1;
            this.f13788x2 = i10;
            i4++;
        } while (i4 < length);
        if ((i10 < this.f13789y2 || A3()) && (c10 = this.f14092d3[this.f13788x2]) >= '0' && c10 != ']' && c10 != '}') {
            o3(str, i4, c10);
        }
    }

    private final void G3() throws IOException {
        int i4;
        char c10;
        int i10 = this.f13788x2;
        if (i10 + 3 < this.f13789y2) {
            char[] cArr = this.f14092d3;
            if (cArr[i10] == 'r') {
                int i11 = i10 + 1;
                if (cArr[i11] == 'u') {
                    int i12 = i11 + 1;
                    if (cArr[i12] == 'e' && ((c10 = cArr[(i4 = i12 + 1)]) < '0' || c10 == ']' || c10 == '}')) {
                        this.f13788x2 = i4;
                        return;
                    }
                }
            }
        }
        E3("true", 1);
    }

    private final JsonToken H3() {
        this.O2 = false;
        JsonToken jsonToken = this.L2;
        this.L2 = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this.K2 = this.K2.u(this.I2, this.J2);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this.K2 = this.K2.v(this.I2, this.J2);
        }
        this.f13813h = jsonToken;
        return jsonToken;
    }

    private final JsonToken I3(int i4) throws IOException {
        if (i4 == 34) {
            this.f14097i3 = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this.f13813h = jsonToken;
            return jsonToken;
        } else if (i4 == 91) {
            this.K2 = this.K2.u(this.I2, this.J2);
            JsonToken jsonToken2 = JsonToken.START_ARRAY;
            this.f13813h = jsonToken2;
            return jsonToken2;
        } else if (i4 == 102) {
            E3("false", 1);
            JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
            this.f13813h = jsonToken3;
            return jsonToken3;
        } else if (i4 == 110) {
            E3("null", 1);
            JsonToken jsonToken4 = JsonToken.VALUE_NULL;
            this.f13813h = jsonToken4;
            return jsonToken4;
        } else if (i4 == 116) {
            E3("true", 1);
            JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
            this.f13813h = jsonToken5;
            return jsonToken5;
        } else if (i4 != 123) {
            switch (i4) {
                case 44:
                    if (!this.K2.m() && (this.f13716a & f14085p3) != 0) {
                        this.f13788x2--;
                        JsonToken jsonToken6 = JsonToken.VALUE_NULL;
                        this.f13813h = jsonToken6;
                        return jsonToken6;
                    }
                    break;
                case 45:
                    JsonToken O3 = O3();
                    this.f13813h = O3;
                    return O3;
                case 46:
                    JsonToken L3 = L3();
                    this.f13813h = L3;
                    return L3;
                default:
                    switch (i4) {
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                            JsonToken Q3 = Q3(i4);
                            this.f13813h = Q3;
                            return Q3;
                    }
            }
            JsonToken x32 = x3(i4);
            this.f13813h = x32;
            return x32;
        } else {
            this.K2 = this.K2.v(this.I2, this.J2);
            JsonToken jsonToken7 = JsonToken.START_OBJECT;
            this.f13813h = jsonToken7;
            return jsonToken7;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v18 ??, r9v12 ??, r9v5 ??, r9v3 ??, r9v9 ??, r9v7 ??, r9v10 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x006e -> B:30:0x0050). Please submit an issue!!! */
    private final com.fasterxml.jackson.core.JsonToken K3(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v18 ??, r9v12 ??, r9v5 ??, r9v3 ??, r9v9 ??, r9v7 ??, r9v10 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:227)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:222)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:167)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:372)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    private String N3(int i4, int i10, int i11) throws IOException {
        this.M2.F(this.f14092d3, i4, this.f13788x2 - i4);
        char[] v9 = this.M2.v();
        int w9 = this.M2.w();
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                k2(" in field name", JsonToken.FIELD_NAME);
            }
            char[] cArr = this.f14092d3;
            int i12 = this.f13788x2;
            this.f13788x2 = i12 + 1;
            char c10 = cArr[i12];
            if (c10 <= '\\') {
                if (c10 == '\\') {
                    c10 = F2();
                } else if (c10 <= i11) {
                    if (c10 == i11) {
                        this.M2.J(w9);
                        com.fasterxml.jackson.core.util.j jVar = this.M2;
                        return this.f14095g3.n(jVar.x(), jVar.y(), jVar.K(), i10);
                    } else if (c10 < ' ') {
                        T2(c10, "name");
                    }
                }
            }
            i10 = (i10 * 33) + c10;
            int i13 = w9 + 1;
            v9[w9] = c10;
            if (i13 >= v9.length) {
                v9 = this.M2.s();
                w9 = 0;
            } else {
                w9 = i13;
            }
        }
    }

    private final JsonToken P3(boolean z9, int i4) throws IOException {
        int i10;
        char n42;
        boolean z10;
        int i11;
        char m42;
        if (z9) {
            i4++;
        }
        this.f13788x2 = i4;
        char[] n9 = this.M2.n();
        int i12 = 0;
        if (z9) {
            n9[0] = l.f93713d;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i13 = this.f13788x2;
        if (i13 < this.f13789y2) {
            char[] cArr = this.f14092d3;
            this.f13788x2 = i13 + 1;
            n42 = cArr[i13];
        } else {
            n42 = n4("No digit following minus sign", JsonToken.VALUE_NUMBER_INT);
        }
        if (n42 == '0') {
            n42 = k4();
        }
        int i14 = 0;
        while (n42 >= '0' && n42 <= '9') {
            i14++;
            if (i10 >= n9.length) {
                n9 = this.M2.s();
                i10 = 0;
            }
            int i15 = i10 + 1;
            n9[i10] = n42;
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                i10 = i15;
                n42 = 0;
                z10 = true;
                break;
            }
            char[] cArr2 = this.f14092d3;
            int i16 = this.f13788x2;
            this.f13788x2 = i16 + 1;
            n42 = cArr2[i16];
            i10 = i15;
        }
        z10 = false;
        if (i14 == 0) {
            return u3(n42, z9);
        }
        if (n42 == '.') {
            if (i10 >= n9.length) {
                n9 = this.M2.s();
                i10 = 0;
            }
            n9[i10] = n42;
            i10++;
            i11 = 0;
            while (true) {
                if (this.f13788x2 >= this.f13789y2 && !A3()) {
                    z10 = true;
                    break;
                }
                char[] cArr3 = this.f14092d3;
                int i17 = this.f13788x2;
                this.f13788x2 = i17 + 1;
                n42 = cArr3[i17];
                if (n42 < '0' || n42 > '9') {
                    break;
                }
                i11++;
                if (i10 >= n9.length) {
                    n9 = this.M2.s();
                    i10 = 0;
                }
                n9[i10] = n42;
                i10++;
            }
            if (i11 == 0) {
                z2(n42, "Decimal point not followed by a digit");
            }
        } else {
            i11 = 0;
        }
        if (n42 == 'e' || n42 == 'E') {
            if (i10 >= n9.length) {
                n9 = this.M2.s();
                i10 = 0;
            }
            int i18 = i10 + 1;
            n9[i10] = n42;
            int i19 = this.f13788x2;
            if (i19 < this.f13789y2) {
                char[] cArr4 = this.f14092d3;
                this.f13788x2 = i19 + 1;
                m42 = cArr4[i19];
            } else {
                m42 = m4("expected a digit for number exponent");
            }
            if (m42 == '-' || m42 == '+') {
                if (i18 >= n9.length) {
                    n9 = this.M2.s();
                    i18 = 0;
                }
                int i20 = i18 + 1;
                n9[i18] = m42;
                int i21 = this.f13788x2;
                if (i21 < this.f13789y2) {
                    char[] cArr5 = this.f14092d3;
                    this.f13788x2 = i21 + 1;
                    m42 = cArr5[i21];
                } else {
                    m42 = m4("expected a digit for number exponent");
                }
                i18 = i20;
            }
            n42 = m42;
            int i22 = 0;
            while (n42 <= '9' && n42 >= '0') {
                i22++;
                if (i18 >= n9.length) {
                    n9 = this.M2.s();
                    i18 = 0;
                }
                i10 = i18 + 1;
                n9[i18] = n42;
                if (this.f13788x2 >= this.f13789y2 && !A3()) {
                    i12 = i22;
                    z10 = true;
                    break;
                }
                char[] cArr6 = this.f14092d3;
                int i23 = this.f13788x2;
                this.f13788x2 = i23 + 1;
                n42 = cArr6[i23];
                i18 = i10;
            }
            i12 = i22;
            i10 = i18;
            if (i12 == 0) {
                z2(n42, "Exponent indicator not followed by a digit");
            }
        }
        if (!z10) {
            this.f13788x2--;
            if (this.K2.m()) {
                l4(n42);
            }
        }
        this.M2.J(i10);
        return k3(z9, i14, i11, i12);
    }

    private final int U3() throws IOException {
        char c10;
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                throw k("Unexpected end-of-input within/between " + this.K2.r() + " entries");
            }
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            c10 = cArr[i4];
            if (c10 > ' ') {
                if (c10 == '/') {
                    b4();
                } else if (c10 != '#' || !g4()) {
                    break;
                }
            } else if (c10 < ' ') {
                if (c10 == '\n') {
                    this.F2++;
                    this.G2 = i10;
                } else if (c10 == '\r') {
                    W3();
                } else if (c10 != '\t') {
                    q2(c10);
                }
            }
        }
        return c10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
        k2(" in a comment", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void V3() throws java.io.IOException {
        /*
            r3 = this;
        L0:
            int r0 = r3.f13788x2
            int r1 = r3.f13789y2
            if (r0 < r1) goto Lc
            boolean r0 = r3.A3()
            if (r0 == 0) goto L26
        Lc:
            char[] r0 = r3.f14092d3
            int r1 = r3.f13788x2
            int r2 = r1 + 1
            r3.f13788x2 = r2
            char r0 = r0[r1]
            r1 = 42
            if (r0 > r1) goto L0
            if (r0 != r1) goto L3c
            int r0 = r3.f13789y2
            if (r2 < r0) goto L2d
            boolean r0 = r3.A3()
            if (r0 != 0) goto L2d
        L26:
            r0 = 0
            java.lang.String r1 = " in a comment"
            r3.k2(r1, r0)
            return
        L2d:
            char[] r0 = r3.f14092d3
            int r1 = r3.f13788x2
            char r0 = r0[r1]
            r2 = 47
            if (r0 != r2) goto L0
            int r1 = r1 + 1
            r3.f13788x2 = r1
            return
        L3c:
            r1 = 32
            if (r0 >= r1) goto L0
            r1 = 10
            if (r0 != r1) goto L4d
            int r0 = r3.F2
            int r0 = r0 + 1
            r3.F2 = r0
            r3.G2 = r2
            goto L0
        L4d:
            r1 = 13
            if (r0 != r1) goto L55
            r3.W3()
            goto L0
        L55:
            r1 = 9
            if (r0 == r1) goto L0
            r3.q2(r0)
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.g.V3():void");
    }

    private final int X3() throws IOException {
        int i4 = this.f13788x2;
        if (i4 + 4 >= this.f13789y2) {
            return Y3(false);
        }
        char[] cArr = this.f14092d3;
        char c10 = cArr[i4];
        if (c10 == ':') {
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            char c11 = cArr[i10];
            if (c11 > ' ') {
                if (c11 != '/' && c11 != '#') {
                    this.f13788x2 = i10 + 1;
                    return c11;
                }
                return Y3(true);
            }
            if (c11 == ' ' || c11 == '\t') {
                int i11 = i10 + 1;
                this.f13788x2 = i11;
                char c12 = cArr[i11];
                if (c12 > ' ') {
                    if (c12 != '/' && c12 != '#') {
                        this.f13788x2 = i11 + 1;
                        return c12;
                    }
                    return Y3(true);
                }
            }
            return Y3(true);
        }
        if (c10 == ' ' || c10 == '\t') {
            int i12 = i4 + 1;
            this.f13788x2 = i12;
            c10 = cArr[i12];
        }
        if (c10 == ':') {
            int i13 = this.f13788x2 + 1;
            this.f13788x2 = i13;
            char c13 = cArr[i13];
            if (c13 > ' ') {
                if (c13 != '/' && c13 != '#') {
                    this.f13788x2 = i13 + 1;
                    return c13;
                }
                return Y3(true);
            }
            if (c13 == ' ' || c13 == '\t') {
                int i14 = i13 + 1;
                this.f13788x2 = i14;
                char c14 = cArr[i14];
                if (c14 > ' ') {
                    if (c14 != '/' && c14 != '#') {
                        this.f13788x2 = i14 + 1;
                        return c14;
                    }
                    return Y3(true);
                }
            }
            return Y3(true);
        }
        return Y3(false);
    }

    private final int Y3(boolean z9) throws IOException {
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                k2(" within/between " + this.K2.r() + " entries", null);
                return -1;
            }
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            char c10 = cArr[i4];
            if (c10 > ' ') {
                if (c10 == '/') {
                    b4();
                } else if (c10 != '#' || !g4()) {
                    if (z9) {
                        return c10;
                    }
                    if (c10 != ':') {
                        o2(c10, "was expecting a colon to separate field name and value");
                    }
                    z9 = true;
                }
            } else if (c10 < ' ') {
                if (c10 == '\n') {
                    this.F2++;
                    this.G2 = i10;
                } else if (c10 == '\r') {
                    W3();
                } else if (c10 != '\t') {
                    q2(c10);
                }
            }
        }
    }

    private final int Z3(int i4) throws IOException {
        char[] cArr = this.f14092d3;
        int i10 = i4 + 1;
        char c10 = cArr[i4];
        if (c10 == ':') {
            int i11 = i10 + 1;
            char c11 = cArr[i10];
            if (c11 > ' ') {
                if (c11 != '/' && c11 != '#') {
                    this.f13788x2 = i11;
                    return c11;
                }
            } else if (c11 == ' ' || c11 == '\t') {
                int i12 = i11 + 1;
                char c12 = cArr[i11];
                if (c12 > ' ' && c12 != '/' && c12 != '#') {
                    this.f13788x2 = i12;
                    return c12;
                }
                i11 = i12;
            }
            this.f13788x2 = i11 - 1;
            return Y3(true);
        }
        if (c10 == ' ' || c10 == '\t') {
            int i13 = i10 + 1;
            char c13 = cArr[i10];
            i10 = i13;
            c10 = c13;
        }
        boolean z9 = c10 == ':';
        if (z9) {
            int i14 = i10 + 1;
            char c14 = cArr[i10];
            if (c14 > ' ') {
                if (c14 != '/' && c14 != '#') {
                    this.f13788x2 = i14;
                    return c14;
                }
            } else if (c14 == ' ' || c14 == '\t') {
                i10 = i14 + 1;
                char c15 = cArr[i14];
                if (c15 > ' ' && c15 != '/' && c15 != '#') {
                    this.f13788x2 = i10;
                    return c15;
                }
            }
            i10 = i14;
        }
        this.f13788x2 = i10 - 1;
        return Y3(z9);
    }

    private final int a4(int i4) throws IOException {
        if (i4 != 44) {
            o2(i4, "was expecting comma to separate " + this.K2.r() + " entries");
        }
        while (true) {
            int i10 = this.f13788x2;
            if (i10 < this.f13789y2) {
                char[] cArr = this.f14092d3;
                int i11 = i10 + 1;
                this.f13788x2 = i11;
                char c10 = cArr[i10];
                if (c10 > ' ') {
                    if (c10 == '/' || c10 == '#') {
                        this.f13788x2 = i11 - 1;
                        return U3();
                    }
                    return c10;
                } else if (c10 < ' ') {
                    if (c10 == '\n') {
                        this.F2++;
                        this.G2 = i11;
                    } else if (c10 == '\r') {
                        W3();
                    } else if (c10 != '\t') {
                        q2(c10);
                    }
                }
            } else {
                return U3();
            }
        }
    }

    private void b4() throws IOException {
        if ((this.f13716a & f14088s3) == 0) {
            o2(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.f13788x2 >= this.f13789y2 && !A3()) {
            k2(" in a comment", null);
        }
        char[] cArr = this.f14092d3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        char c10 = cArr[i4];
        if (c10 == '/') {
            c4();
        } else if (c10 == '*') {
            V3();
        } else {
            o2(c10, "was expecting either '*' or '/' for a comment");
        }
    }

    private void c4() throws IOException {
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                return;
            }
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            char c10 = cArr[i4];
            if (c10 < ' ') {
                if (c10 == '\n') {
                    this.F2++;
                    this.G2 = i10;
                    return;
                } else if (c10 == '\r') {
                    W3();
                    return;
                } else if (c10 != '\t') {
                    q2(c10);
                }
            }
        }
    }

    private final int e4() throws IOException {
        if (this.f13788x2 >= this.f13789y2 && !A3()) {
            return G2();
        }
        char[] cArr = this.f14092d3;
        int i4 = this.f13788x2;
        int i10 = i4 + 1;
        this.f13788x2 = i10;
        char c10 = cArr[i4];
        if (c10 > ' ') {
            if (c10 == '/' || c10 == '#') {
                this.f13788x2 = i10 - 1;
                return f4();
            }
            return c10;
        }
        if (c10 != ' ') {
            if (c10 == '\n') {
                this.F2++;
                this.G2 = i10;
            } else if (c10 == '\r') {
                W3();
            } else if (c10 != '\t') {
                q2(c10);
            }
        }
        while (true) {
            int i11 = this.f13788x2;
            if (i11 < this.f13789y2) {
                char[] cArr2 = this.f14092d3;
                int i12 = i11 + 1;
                this.f13788x2 = i12;
                char c11 = cArr2[i11];
                if (c11 > ' ') {
                    if (c11 == '/' || c11 == '#') {
                        this.f13788x2 = i12 - 1;
                        return f4();
                    }
                    return c11;
                } else if (c11 != ' ') {
                    if (c11 == '\n') {
                        this.F2++;
                        this.G2 = i12;
                    } else if (c11 == '\r') {
                        W3();
                    } else if (c11 != '\t') {
                        q2(c11);
                    }
                }
            } else {
                return f4();
            }
        }
    }

    private int f4() throws IOException {
        char c10;
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                return G2();
            }
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            int i10 = i4 + 1;
            this.f13788x2 = i10;
            c10 = cArr[i4];
            if (c10 > ' ') {
                if (c10 == '/') {
                    b4();
                } else if (c10 != '#' || !g4()) {
                    break;
                }
            } else if (c10 != ' ') {
                if (c10 == '\n') {
                    this.F2++;
                    this.G2 = i10;
                } else if (c10 == '\r') {
                    W3();
                } else if (c10 != '\t') {
                    q2(c10);
                }
            }
        }
        return c10;
    }

    private boolean g4() throws IOException {
        if ((this.f13716a & f14089t3) == 0) {
            return false;
        }
        c4();
        return true;
    }

    private final void h4() {
        int i4 = this.f13788x2;
        this.H2 = this.E2 + i4;
        this.I2 = this.F2;
        this.J2 = i4 - this.G2;
    }

    private final void i4() {
        int i4 = this.f13788x2;
        this.f14098j3 = i4;
        this.f14099k3 = this.F2;
        this.f14100l3 = i4 - this.G2;
    }

    private char j4() throws IOException {
        char c10;
        if ((this.f13788x2 < this.f13789y2 || A3()) && (c10 = this.f14092d3[this.f13788x2]) >= '0' && c10 <= '9') {
            if ((this.f13716a & f14083n3) == 0) {
                s2("Leading zeroes not allowed");
            }
            this.f13788x2++;
            if (c10 == '0') {
                do {
                    if (this.f13788x2 >= this.f13789y2 && !A3()) {
                        break;
                    }
                    char[] cArr = this.f14092d3;
                    int i4 = this.f13788x2;
                    c10 = cArr[i4];
                    if (c10 < '0' || c10 > '9') {
                        return '0';
                    }
                    this.f13788x2 = i4 + 1;
                } while (c10 == '0');
            }
            return c10;
        }
        return '0';
    }

    private final char k4() throws IOException {
        char c10;
        int i4 = this.f13788x2;
        if (i4 >= this.f13789y2 || ((c10 = this.f14092d3[i4]) >= '0' && c10 <= '9')) {
            return j4();
        }
        return '0';
    }

    private final void l4(int i4) throws IOException {
        int i10 = this.f13788x2 + 1;
        this.f13788x2 = i10;
        if (i4 != 9) {
            if (i4 == 10) {
                this.F2++;
                this.G2 = i10;
            } else if (i4 == 13) {
                W3();
            } else if (i4 != 32) {
                n2(i4);
            }
        }
    }

    private final void o3(String str, int i4, int i10) throws IOException {
        if (Character.isJavaIdentifierPart((char) i10)) {
            S3(str.substring(0, i4));
        }
    }

    private void p3(int i4) throws JsonParseException {
        if (i4 == 93) {
            h4();
            if (!this.K2.k()) {
                R2(i4, '}');
            }
            this.K2 = this.K2.t();
            this.f13813h = JsonToken.END_ARRAY;
        }
        if (i4 == 125) {
            h4();
            if (!this.K2.l()) {
                R2(i4, ']');
            }
            this.K2 = this.K2.t();
            this.f13813h = JsonToken.END_OBJECT;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String w3(int r5, int r6, int[] r7) throws java.io.IOException {
        /*
            r4 = this;
            com.fasterxml.jackson.core.util.j r0 = r4.M2
            char[] r1 = r4.f14092d3
            int r2 = r4.f13788x2
            int r2 = r2 - r5
            r0.F(r1, r5, r2)
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            char[] r5 = r5.v()
            com.fasterxml.jackson.core.util.j r0 = r4.M2
            int r0 = r0.w()
            int r1 = r7.length
        L17:
            int r2 = r4.f13788x2
            int r3 = r4.f13789y2
            if (r2 < r3) goto L24
            boolean r2 = r4.A3()
            if (r2 != 0) goto L24
            goto L37
        L24:
            char[] r2 = r4.f14092d3
            int r3 = r4.f13788x2
            char r2 = r2[r3]
            if (r2 >= r1) goto L31
            r3 = r7[r2]
            if (r3 == 0) goto L51
            goto L37
        L31:
            boolean r3 = java.lang.Character.isJavaIdentifierPart(r2)
            if (r3 != 0) goto L51
        L37:
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            r5.J(r0)
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            char[] r7 = r5.x()
            int r0 = r5.y()
            int r5 = r5.K()
            com.fasterxml.jackson.core.sym.b r1 = r4.f14095g3
            java.lang.String r5 = r1.n(r7, r0, r5, r6)
            return r5
        L51:
            int r3 = r4.f13788x2
            int r3 = r3 + 1
            r4.f13788x2 = r3
            int r6 = r6 * 33
            int r6 = r6 + r2
            int r3 = r0 + 1
            r5[r0] = r2
            int r0 = r5.length
            if (r3 < r0) goto L69
            com.fasterxml.jackson.core.util.j r5 = r4.M2
            char[] r5 = r5.s()
            r0 = 0
            goto L17
        L69:
            r0 = r3
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.g.w3(int, int, int[]):java.lang.String");
    }

    private final void z3(int i4) throws IOException {
        this.f13813h = JsonToken.FIELD_NAME;
        h4();
        if (i4 == 34) {
            this.f14097i3 = true;
            this.L2 = JsonToken.VALUE_STRING;
        } else if (i4 == 91) {
            this.L2 = JsonToken.START_ARRAY;
        } else if (i4 == 102) {
            E3("false", 1);
            this.L2 = JsonToken.VALUE_FALSE;
        } else if (i4 == 110) {
            E3("null", 1);
            this.L2 = JsonToken.VALUE_NULL;
        } else if (i4 == 116) {
            E3("true", 1);
            this.L2 = JsonToken.VALUE_TRUE;
        } else if (i4 == 123) {
            this.L2 = JsonToken.START_OBJECT;
        } else if (i4 == 45) {
            this.L2 = O3();
        } else if (i4 != 46) {
            switch (i4) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    this.L2 = Q3(i4);
                    return;
                default:
                    this.L2 = x3(i4);
                    return;
            }
        } else {
            this.L2 = L3();
        }
    }

    protected boolean A3() throws IOException {
        Reader reader = this.f14091c3;
        if (reader != null) {
            char[] cArr = this.f14092d3;
            int read = reader.read(cArr, 0, cArr.length);
            if (read > 0) {
                int i4 = this.f13789y2;
                long j4 = i4;
                this.E2 += j4;
                this.G2 -= i4;
                this.f14098j3 -= j4;
                this.f13788x2 = 0;
                this.f13789y2 = read;
                return true;
            }
            B2();
            if (read == 0) {
                throw new IOException("Reader returned 0 characters when trying to read " + this.f13789y2);
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected void B2() throws IOException {
        if (this.f14091c3 != null) {
            if (this.f13786g2.r() || m1(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this.f14091c3.close();
            }
            this.f14091c3 = null;
        }
    }

    protected void B3() throws IOException {
        if (A3()) {
            return;
        }
        i2();
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int D1(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
        if (this.f14097i3 && this.f13813h == JsonToken.VALUE_STRING) {
            byte[] d4 = this.f13786g2.d();
            try {
                return R3(base64Variant, outputStream, d4);
            } finally {
                this.f13786g2.s(d4);
            }
        }
        byte[] p02 = p0(base64Variant);
        outputStream.write(p02);
        return p02.length;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public Object E0() {
        return this.f14091c3;
    }

    protected final void E3(String str, int i4) throws IOException {
        int i10;
        int length = str.length();
        if (this.f13788x2 + length >= this.f13789y2) {
            F3(str, i4);
            return;
        }
        do {
            if (this.f14092d3[this.f13788x2] != str.charAt(i4)) {
                S3(str.substring(0, i4));
            }
            i10 = this.f13788x2 + 1;
            this.f13788x2 = i10;
            i4++;
        } while (i4 < length);
        char c10 = this.f14092d3[i10];
        if (c10 < '0' || c10 == ']' || c10 == '}') {
            return;
        }
        o3(str, i4, c10);
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected char F2() throws IOException {
        if (this.f13788x2 >= this.f13789y2 && !A3()) {
            k2(" in character escape sequence", JsonToken.VALUE_STRING);
        }
        char[] cArr = this.f14092d3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        char c10 = cArr[i4];
        if (c10 == '\"' || c10 == '/' || c10 == '\\') {
            return c10;
        }
        if (c10 != 'b') {
            if (c10 != 'f') {
                if (c10 != 'n') {
                    if (c10 != 'r') {
                        if (c10 != 't') {
                            if (c10 != 'u') {
                                return L2(c10);
                            }
                            int i10 = 0;
                            for (int i11 = 0; i11 < 4; i11++) {
                                if (this.f13788x2 >= this.f13789y2 && !A3()) {
                                    k2(" in character escape sequence", JsonToken.VALUE_STRING);
                                }
                                char[] cArr2 = this.f14092d3;
                                int i12 = this.f13788x2;
                                this.f13788x2 = i12 + 1;
                                char c11 = cArr2[i12];
                                int b10 = com.fasterxml.jackson.core.io.b.b(c11);
                                if (b10 < 0) {
                                    o2(c11, "expected a hex-digit for character escape sequence");
                                }
                                i10 = (i10 << 4) | b10;
                            }
                            return (char) i10;
                        }
                        return '\t';
                    }
                    return '\r';
                }
                return '\n';
            }
            return '\f';
        }
        return '\b';
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected final void H2() throws IOException {
        int i4 = this.f13788x2;
        int i10 = this.f13789y2;
        if (i4 < i10) {
            int[] iArr = f14090u3;
            int length = iArr.length;
            while (true) {
                char[] cArr = this.f14092d3;
                char c10 = cArr[i4];
                if (c10 >= length || iArr[c10] == 0) {
                    i4++;
                    if (i4 >= i10) {
                        break;
                    }
                } else if (c10 == '\"') {
                    com.fasterxml.jackson.core.util.j jVar = this.M2;
                    int i11 = this.f13788x2;
                    jVar.F(cArr, i11, i4 - i11);
                    this.f13788x2 = i4 + 1;
                    return;
                }
            }
        }
        com.fasterxml.jackson.core.util.j jVar2 = this.M2;
        char[] cArr2 = this.f14092d3;
        int i12 = this.f13788x2;
        jVar2.D(cArr2, i12, i4 - i12);
        this.f13788x2 = i4;
        r3();
    }

    protected String J3() throws IOException {
        int i4 = this.f13788x2;
        int i10 = this.f14096h3;
        int i11 = this.f13789y2;
        if (i4 < i11) {
            int[] iArr = f14090u3;
            int length = iArr.length;
            do {
                char[] cArr = this.f14092d3;
                char c10 = cArr[i4];
                if (c10 == '\'') {
                    int i12 = this.f13788x2;
                    this.f13788x2 = i4 + 1;
                    return this.f14095g3.n(cArr, i12, i4 - i12, i10);
                } else if (c10 < length && iArr[c10] != 0) {
                    break;
                } else {
                    i10 = (i10 * 33) + c10;
                    i4++;
                }
            } while (i4 < i11);
        }
        int i13 = this.f13788x2;
        this.f13788x2 = i4;
        return N3(i13, i10, 39);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int L1(Writer writer) throws IOException {
        int i4 = this.f13789y2;
        int i10 = this.f13788x2;
        int i11 = i4 - i10;
        if (i11 < 1) {
            return 0;
        }
        this.f13788x2 = i10 + i11;
        writer.write(this.f14092d3, i10, i11);
        return i11;
    }

    protected final JsonToken L3() throws IOException {
        if (!m1(JsonReadFeature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.mappedFeature())) {
            return x3(46);
        }
        int i4 = this.f13788x2;
        return K3(46, i4 - 1, i4, false, 0);
    }

    protected final String M3() throws IOException {
        int i4 = this.f13788x2;
        int i10 = this.f14096h3;
        int[] iArr = f14090u3;
        while (true) {
            if (i4 >= this.f13789y2) {
                break;
            }
            char[] cArr = this.f14092d3;
            char c10 = cArr[i4];
            if (c10 >= iArr.length || iArr[c10] == 0) {
                i10 = (i10 * 33) + c10;
                i4++;
            } else if (c10 == '\"') {
                int i11 = this.f13788x2;
                this.f13788x2 = i4 + 1;
                return this.f14095g3.n(cArr, i11, i4 - i11, i10);
            }
        }
        int i12 = this.f13788x2;
        this.f13788x2 = i4;
        return N3(i12, i10, 34);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void N1(com.fasterxml.jackson.core.h hVar) {
        this.f14094f3 = hVar;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.util.f<StreamReadCapability> O0() {
        return com.fasterxml.jackson.core.base.b.f13784b3;
    }

    protected final JsonToken O3() throws IOException {
        int i4 = this.f13788x2;
        int i10 = i4 - 1;
        int i11 = this.f13789y2;
        if (i4 >= i11) {
            return P3(true, i10);
        }
        int i12 = i4 + 1;
        char c10 = this.f14092d3[i4];
        if (c10 > '9' || c10 < '0') {
            this.f13788x2 = i12;
            return u3(c10, true);
        } else if (c10 == '0') {
            return P3(true, i10);
        } else {
            int i13 = 1;
            while (i12 < i11) {
                int i14 = i12 + 1;
                char c11 = this.f14092d3[i12];
                if (c11 < '0' || c11 > '9') {
                    if (c11 != '.' && c11 != 'e' && c11 != 'E') {
                        int i15 = i14 - 1;
                        this.f13788x2 = i15;
                        if (this.K2.m()) {
                            l4(c11);
                        }
                        this.M2.F(this.f14092d3, i10, i15 - i10);
                        return n3(true, i13);
                    }
                    this.f13788x2 = i14;
                    return K3(c11, i10, i14, true, i13);
                }
                i13++;
                i12 = i14;
            }
            return P3(true, i10);
        }
    }

    @Override // com.fasterxml.jackson.core.base.b
    protected void Q2() throws IOException {
        char[] cArr;
        super.Q2();
        this.f14095g3.u();
        if (!this.f14093e3 || (cArr = this.f14092d3) == null) {
            return;
        }
        this.f14092d3 = null;
        this.f13786g2.w(cArr);
    }

    protected final JsonToken Q3(int i4) throws IOException {
        int i10 = this.f13788x2;
        int i11 = i10 - 1;
        int i12 = this.f13789y2;
        if (i4 == 48) {
            return P3(false, i11);
        }
        int i13 = 1;
        while (i10 < i12) {
            int i14 = i10 + 1;
            char c10 = this.f14092d3[i10];
            if (c10 < '0' || c10 > '9') {
                if (c10 != '.' && c10 != 'e' && c10 != 'E') {
                    int i15 = i14 - 1;
                    this.f13788x2 = i15;
                    if (this.K2.m()) {
                        l4(c10);
                    }
                    this.M2.F(this.f14092d3, i11, i15 - i11);
                    return n3(false, i13);
                }
                this.f13788x2 = i14;
                return K3(c10, i11, i14, false, i13);
            }
            i13++;
            i10 = i14;
        }
        this.f13788x2 = i11;
        return P3(false, i11);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public int R0(Writer writer) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14097i3) {
                this.f14097i3 = false;
                H2();
            }
            return this.M2.m(writer);
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            String b10 = this.K2.b();
            writer.write(b10);
            return b10.length();
        } else if (jsonToken != null) {
            if (jsonToken.isNumeric()) {
                return this.M2.m(writer);
            }
            char[] asCharArray = jsonToken.asCharArray();
            writer.write(asCharArray);
            return asCharArray.length;
        } else {
            return 0;
        }
    }

    protected int R3(Base64Variant base64Variant, OutputStream outputStream, byte[] bArr) throws IOException {
        int i4 = 3;
        int length = bArr.length - 3;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (this.f13788x2 >= this.f13789y2) {
                B3();
            }
            char[] cArr = this.f14092d3;
            int i12 = this.f13788x2;
            this.f13788x2 = i12 + 1;
            char c10 = cArr[i12];
            if (c10 > ' ') {
                int decodeBase64Char = base64Variant.decodeBase64Char(c10);
                if (decodeBase64Char < 0) {
                    if (c10 == '\"') {
                        break;
                    }
                    decodeBase64Char = D2(base64Variant, c10, 0);
                    if (decodeBase64Char < 0) {
                    }
                }
                if (i10 > length) {
                    i11 += i10;
                    outputStream.write(bArr, 0, i10);
                    i10 = 0;
                }
                if (this.f13788x2 >= this.f13789y2) {
                    B3();
                }
                char[] cArr2 = this.f14092d3;
                int i13 = this.f13788x2;
                this.f13788x2 = i13 + 1;
                char c11 = cArr2[i13];
                int decodeBase64Char2 = base64Variant.decodeBase64Char(c11);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = D2(base64Variant, c11, 1);
                }
                int i14 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (this.f13788x2 >= this.f13789y2) {
                    B3();
                }
                char[] cArr3 = this.f14092d3;
                int i15 = this.f13788x2;
                this.f13788x2 = i15 + 1;
                char c12 = cArr3[i15];
                int decodeBase64Char3 = base64Variant.decodeBase64Char(c12);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (c12 == '\"') {
                            int i16 = i10 + 1;
                            bArr[i10] = (byte) (i14 >> 4);
                            if (base64Variant.usesPadding()) {
                                this.f13788x2--;
                                K2(base64Variant);
                            }
                            i10 = i16;
                        } else {
                            decodeBase64Char3 = D2(base64Variant, c12, 2);
                        }
                    }
                    if (decodeBase64Char3 == -2) {
                        if (this.f13788x2 >= this.f13789y2) {
                            B3();
                        }
                        char[] cArr4 = this.f14092d3;
                        int i17 = this.f13788x2;
                        this.f13788x2 = i17 + 1;
                        char c13 = cArr4[i17];
                        if (!base64Variant.usesPaddingChar(c13) && D2(base64Variant, c13, i4) != -2) {
                            throw j3(base64Variant, c13, i4, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        bArr[i10] = (byte) (i14 >> 4);
                        i10++;
                    }
                }
                int i18 = (i14 << 6) | decodeBase64Char3;
                if (this.f13788x2 >= this.f13789y2) {
                    B3();
                }
                char[] cArr5 = this.f14092d3;
                int i19 = this.f13788x2;
                this.f13788x2 = i19 + 1;
                char c14 = cArr5[i19];
                int decodeBase64Char4 = base64Variant.decodeBase64Char(c14);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (c14 == '\"') {
                            int i20 = i18 >> 2;
                            int i21 = i10 + 1;
                            bArr[i10] = (byte) (i20 >> 8);
                            i10 = i21 + 1;
                            bArr[i21] = (byte) i20;
                            if (base64Variant.usesPadding()) {
                                this.f13788x2--;
                                K2(base64Variant);
                            }
                        } else {
                            decodeBase64Char4 = D2(base64Variant, c14, 3);
                        }
                    }
                    if (decodeBase64Char4 == -2) {
                        int i22 = i18 >> 2;
                        int i23 = i10 + 1;
                        bArr[i10] = (byte) (i22 >> 8);
                        i10 = i23 + 1;
                        bArr[i23] = (byte) i22;
                        i4 = 3;
                    }
                }
                int i24 = (i18 << 6) | decodeBase64Char4;
                int i25 = i10 + 1;
                bArr[i10] = (byte) (i24 >> 16);
                int i26 = i25 + 1;
                bArr[i25] = (byte) (i24 >> 8);
                bArr[i26] = (byte) i24;
                i10 = i26 + 1;
                i4 = 3;
            }
            i4 = 3;
        }
        this.f14097i3 = false;
        if (i10 > 0) {
            int i27 = i11 + i10;
            outputStream.write(bArr, 0, i10);
            return i27;
        }
        return i11;
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public final String S0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14097i3) {
                this.f14097i3 = false;
                H2();
            }
            return this.M2.l();
        }
        return s3(jsonToken);
    }

    protected void S3(String str) throws IOException {
        T3(str, U2());
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public final char[] T0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6) {
                    if (id != 7 && id != 8) {
                        return this.f13813h.asCharArray();
                    }
                } else if (this.f14097i3) {
                    this.f14097i3 = false;
                    H2();
                }
                return this.M2.x();
            }
            if (!this.O2) {
                String b10 = this.K2.b();
                int length = b10.length();
                char[] cArr = this.N2;
                if (cArr == null) {
                    this.N2 = this.f13786g2.g(length);
                } else if (cArr.length < length) {
                    this.N2 = new char[length];
                }
                b10.getChars(0, length, this.N2, 0);
                this.O2 = true;
            }
            return this.N2;
        }
        return null;
    }

    protected void T3(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                break;
            }
            char c10 = this.f14092d3[this.f13788x2];
            if (!Character.isJavaIdentifierPart(c10)) {
                break;
            }
            this.f13788x2++;
            sb.append(c10);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        g2("Unrecognized token '%s': was expecting %s", sb, str2);
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public final int U0() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != null) {
            int id = jsonToken.id();
            if (id != 5) {
                if (id != 6) {
                    if (id != 7 && id != 8) {
                        return this.f13813h.asCharArray().length;
                    }
                } else if (this.f14097i3) {
                    this.f14097i3 = false;
                    H2();
                }
                return this.M2.K();
            }
            return this.K2.b().length();
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0011, code lost:
        if (r0 != 8) goto L15;
     */
    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int V0() throws java.io.IOException {
        /*
            r3 = this;
            com.fasterxml.jackson.core.JsonToken r0 = r3.f13813h
            r1 = 0
            if (r0 == 0) goto L24
            int r0 = r0.id()
            r2 = 6
            if (r0 == r2) goto L14
            r2 = 7
            if (r0 == r2) goto L1d
            r2 = 8
            if (r0 == r2) goto L1d
            goto L24
        L14:
            boolean r0 = r3.f14097i3
            if (r0 == 0) goto L1d
            r3.f14097i3 = r1
            r3.H2()
        L1d:
            com.fasterxml.jackson.core.util.j r0 = r3.M2
            int r0 = r0.y()
            return r0
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.g.V0():int");
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation W0() {
        if (this.f13813h == JsonToken.FIELD_NAME) {
            return new JsonLocation(C2(), -1L, this.E2 + (this.f14098j3 - 1), this.f14099k3, this.f14100l3);
        }
        return new JsonLocation(C2(), -1L, this.H2 - 1, this.I2, this.J2);
    }

    protected final void W3() throws IOException {
        if (this.f13788x2 < this.f13789y2 || A3()) {
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            if (cArr[i4] == '\n') {
                this.f13788x2 = i4 + 1;
            }
        }
        this.F2++;
        this.G2 = this.f13788x2;
    }

    protected final void d4() throws IOException {
        this.f14097i3 = false;
        int i4 = this.f13788x2;
        int i10 = this.f13789y2;
        char[] cArr = this.f14092d3;
        while (true) {
            if (i4 >= i10) {
                this.f13788x2 = i4;
                if (!A3()) {
                    k2(": was expecting closing quote for a string value", JsonToken.VALUE_STRING);
                }
                i4 = this.f13788x2;
                i10 = this.f13789y2;
            }
            int i11 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 <= '\\') {
                if (c10 == '\\') {
                    this.f13788x2 = i11;
                    F2();
                    i4 = this.f13788x2;
                    i10 = this.f13789y2;
                } else if (c10 <= '\"') {
                    if (c10 == '\"') {
                        this.f13788x2 = i11;
                        return;
                    } else if (c10 < ' ') {
                        this.f13788x2 = i11;
                        T2(c10, "string value");
                    }
                }
            }
            i4 = i11;
        }
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public final String g1() throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14097i3) {
                this.f14097i3 = false;
                H2();
            }
            return this.M2.l();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        } else {
            return super.h1(null);
        }
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public final String h1(String str) throws IOException {
        JsonToken jsonToken = this.f13813h;
        if (jsonToken == JsonToken.VALUE_STRING) {
            if (this.f14097i3) {
                this.f14097i3 = false;
                H2();
            }
            return this.M2.l();
        } else if (jsonToken == JsonToken.FIELD_NAME) {
            return u0();
        } else {
            return super.h1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public void l0() throws IOException {
        if (this.f14097i3) {
            this.f14097i3 = false;
            H2();
        }
    }

    @Deprecated
    protected char m4(String str) throws IOException {
        return n4(str, null);
    }

    protected char n4(String str, JsonToken jsonToken) throws IOException {
        if (this.f13788x2 >= this.f13789y2 && !A3()) {
            k2(str, jsonToken);
        }
        char[] cArr = this.f14092d3;
        int i4 = this.f13788x2;
        this.f13788x2 = i4 + 1;
        return cArr[i4];
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public byte[] p0(Base64Variant base64Variant) throws IOException {
        byte[] bArr;
        JsonToken jsonToken = this.f13813h;
        if (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT || (bArr = this.Q2) == null) {
            if (jsonToken != JsonToken.VALUE_STRING) {
                e2("Current token (" + this.f13813h + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
            }
            if (this.f14097i3) {
                try {
                    this.Q2 = q3(base64Variant);
                    this.f14097i3 = false;
                } catch (IllegalArgumentException e4) {
                    throw k("Failed to decode VALUE_STRING as base64 (" + base64Variant + "): " + e4.getMessage());
                }
            } else if (this.Q2 == null) {
                com.fasterxml.jackson.core.util.c I2 = I2();
                Y1(S0(), I2, base64Variant);
                this.Q2 = I2.E();
            }
            return this.Q2;
        }
        return bArr;
    }

    protected byte[] q3(Base64Variant base64Variant) throws IOException {
        com.fasterxml.jackson.core.util.c I2 = I2();
        while (true) {
            if (this.f13788x2 >= this.f13789y2) {
                B3();
            }
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            this.f13788x2 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 > ' ') {
                int decodeBase64Char = base64Variant.decodeBase64Char(c10);
                if (decodeBase64Char < 0) {
                    if (c10 == '\"') {
                        return I2.E();
                    }
                    decodeBase64Char = D2(base64Variant, c10, 0);
                    if (decodeBase64Char < 0) {
                        continue;
                    }
                }
                if (this.f13788x2 >= this.f13789y2) {
                    B3();
                }
                char[] cArr2 = this.f14092d3;
                int i10 = this.f13788x2;
                this.f13788x2 = i10 + 1;
                char c11 = cArr2[i10];
                int decodeBase64Char2 = base64Variant.decodeBase64Char(c11);
                if (decodeBase64Char2 < 0) {
                    decodeBase64Char2 = D2(base64Variant, c11, 1);
                }
                int i11 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (this.f13788x2 >= this.f13789y2) {
                    B3();
                }
                char[] cArr3 = this.f14092d3;
                int i12 = this.f13788x2;
                this.f13788x2 = i12 + 1;
                char c12 = cArr3[i12];
                int decodeBase64Char3 = base64Variant.decodeBase64Char(c12);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        if (c12 == '\"') {
                            I2.b(i11 >> 4);
                            if (base64Variant.usesPadding()) {
                                this.f13788x2--;
                                K2(base64Variant);
                            }
                            return I2.E();
                        }
                        decodeBase64Char3 = D2(base64Variant, c12, 2);
                    }
                    if (decodeBase64Char3 == -2) {
                        if (this.f13788x2 >= this.f13789y2) {
                            B3();
                        }
                        char[] cArr4 = this.f14092d3;
                        int i13 = this.f13788x2;
                        this.f13788x2 = i13 + 1;
                        char c13 = cArr4[i13];
                        if (!base64Variant.usesPaddingChar(c13) && D2(base64Variant, c13, 3) != -2) {
                            throw j3(base64Variant, c13, 3, "expected padding character '" + base64Variant.getPaddingChar() + "'");
                        }
                        I2.b(i11 >> 4);
                    }
                }
                int i14 = (i11 << 6) | decodeBase64Char3;
                if (this.f13788x2 >= this.f13789y2) {
                    B3();
                }
                char[] cArr5 = this.f14092d3;
                int i15 = this.f13788x2;
                this.f13788x2 = i15 + 1;
                char c14 = cArr5[i15];
                int decodeBase64Char4 = base64Variant.decodeBase64Char(c14);
                if (decodeBase64Char4 < 0) {
                    if (decodeBase64Char4 != -2) {
                        if (c14 == '\"') {
                            I2.i(i14 >> 2);
                            if (base64Variant.usesPadding()) {
                                this.f13788x2--;
                                K2(base64Variant);
                            }
                            return I2.E();
                        }
                        decodeBase64Char4 = D2(base64Variant, c14, 3);
                    }
                    if (decodeBase64Char4 == -2) {
                        I2.i(i14 >> 2);
                    }
                }
                I2.h((i14 << 6) | decodeBase64Char4);
            }
        }
    }

    protected void r3() throws IOException {
        char[] v9 = this.M2.v();
        int w9 = this.M2.w();
        int[] iArr = f14090u3;
        int length = iArr.length;
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                k2(": was expecting closing quote for a string value", JsonToken.VALUE_STRING);
            }
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            this.f13788x2 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 < length && iArr[c10] != 0) {
                if (c10 == '\"') {
                    this.M2.J(w9);
                    return;
                } else if (c10 == '\\') {
                    c10 = F2();
                } else if (c10 < ' ') {
                    T2(c10, "string value");
                }
            }
            if (w9 >= v9.length) {
                v9 = this.M2.s();
                w9 = 0;
            }
            v9[w9] = c10;
            w9++;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public com.fasterxml.jackson.core.h s0() {
        return this.f14094f3;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public final Boolean s1() throws IOException {
        if (this.f13813h == JsonToken.FIELD_NAME) {
            this.O2 = false;
            JsonToken jsonToken = this.L2;
            this.L2 = null;
            this.f13813h = jsonToken;
            if (jsonToken == JsonToken.VALUE_TRUE) {
                return Boolean.TRUE;
            }
            if (jsonToken == JsonToken.VALUE_FALSE) {
                return Boolean.FALSE;
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this.K2 = this.K2.u(this.I2, this.J2);
            } else if (jsonToken == JsonToken.START_OBJECT) {
                this.K2 = this.K2.v(this.I2, this.J2);
            }
            return null;
        }
        JsonToken y12 = y1();
        if (y12 != null) {
            int id = y12.id();
            if (id == 9) {
                return Boolean.TRUE;
            }
            if (id == 10) {
                return Boolean.FALSE;
            }
        }
        return null;
    }

    protected final String s3(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        int id = jsonToken.id();
        if (id != 5) {
            if (id != 6 && id != 7 && id != 8) {
                return jsonToken.asString();
            }
            return this.M2.l();
        }
        return this.K2.b();
    }

    @Override // com.fasterxml.jackson.core.base.b, com.fasterxml.jackson.core.JsonParser
    public JsonLocation t0() {
        return new JsonLocation(C2(), -1L, this.f13788x2 + this.E2, this.F2, (this.f13788x2 - this.G2) + 1);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public String t1() throws IOException {
        JsonToken O3;
        this.R2 = 0;
        JsonToken jsonToken = this.f13813h;
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (jsonToken == jsonToken2) {
            H3();
            return null;
        }
        if (this.f14097i3) {
            d4();
        }
        int e4 = e4();
        if (e4 < 0) {
            close();
            this.f13813h = null;
            return null;
        }
        this.Q2 = null;
        if (e4 != 93 && e4 != 125) {
            if (this.K2.y()) {
                e4 = a4(e4);
                if ((this.f13716a & f14082m3) != 0 && (e4 == 93 || e4 == 125)) {
                    p3(e4);
                    return null;
                }
            }
            if (!this.K2.l()) {
                h4();
                I3(e4);
                return null;
            }
            i4();
            String M3 = e4 == 34 ? M3() : v3(e4);
            this.K2.C(M3);
            this.f13813h = jsonToken2;
            int X3 = X3();
            h4();
            if (X3 == 34) {
                this.f14097i3 = true;
                this.L2 = JsonToken.VALUE_STRING;
                return M3;
            }
            if (X3 == 45) {
                O3 = O3();
            } else if (X3 == 46) {
                O3 = L3();
            } else if (X3 == 91) {
                O3 = JsonToken.START_ARRAY;
            } else if (X3 == 102) {
                C3();
                O3 = JsonToken.VALUE_FALSE;
            } else if (X3 == 110) {
                D3();
                O3 = JsonToken.VALUE_NULL;
            } else if (X3 == 116) {
                G3();
                O3 = JsonToken.VALUE_TRUE;
            } else if (X3 != 123) {
                switch (X3) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        O3 = Q3(X3);
                        break;
                    default:
                        O3 = x3(X3);
                        break;
                }
            } else {
                O3 = JsonToken.START_OBJECT;
            }
            this.L2 = O3;
            return M3;
        }
        p3(e4);
        return null;
    }

    protected JsonToken t3() throws IOException {
        char[] n9 = this.M2.n();
        int w9 = this.M2.w();
        while (true) {
            if (this.f13788x2 >= this.f13789y2 && !A3()) {
                k2(": was expecting closing quote for a string value", JsonToken.VALUE_STRING);
            }
            char[] cArr = this.f14092d3;
            int i4 = this.f13788x2;
            this.f13788x2 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 <= '\\') {
                if (c10 == '\\') {
                    c10 = F2();
                } else if (c10 <= '\'') {
                    if (c10 == '\'') {
                        this.M2.J(w9);
                        return JsonToken.VALUE_STRING;
                    } else if (c10 < ' ') {
                        T2(c10, "string value");
                    }
                }
            }
            if (w9 >= n9.length) {
                n9 = this.M2.s();
                w9 = 0;
            }
            n9[w9] = c10;
            w9++;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public boolean u1(com.fasterxml.jackson.core.j jVar) throws IOException {
        int i4 = 0;
        this.R2 = 0;
        if (this.f13813h == JsonToken.FIELD_NAME) {
            H3();
            return false;
        }
        if (this.f14097i3) {
            d4();
        }
        int e4 = e4();
        if (e4 < 0) {
            close();
            this.f13813h = null;
            return false;
        }
        this.Q2 = null;
        if (e4 != 93 && e4 != 125) {
            if (this.K2.y()) {
                e4 = a4(e4);
                if ((this.f13716a & f14082m3) != 0 && (e4 == 93 || e4 == 125)) {
                    p3(e4);
                    return false;
                }
            }
            if (!this.K2.l()) {
                h4();
                I3(e4);
                return false;
            }
            i4();
            if (e4 == 34) {
                char[] asQuotedChars = jVar.asQuotedChars();
                int length = asQuotedChars.length;
                int i10 = this.f13788x2;
                if (i10 + length + 4 < this.f13789y2) {
                    int i11 = length + i10;
                    if (this.f14092d3[i11] == '\"') {
                        while (i10 != i11) {
                            if (asQuotedChars[i4] == this.f14092d3[i10]) {
                                i4++;
                                i10++;
                            }
                        }
                        this.K2.C(jVar.getValue());
                        z3(Z3(i10 + 1));
                        return true;
                    }
                }
            }
            return y3(e4, jVar.getValue());
        }
        p3(e4);
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r10v0 ??, r10v1 ??, r10v5 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    protected com.fasterxml.jackson.core.JsonToken u3(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r10v0 ??, r10v1 ??, r10v5 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r10v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:227)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:222)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:167)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:372)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    @Override // com.fasterxml.jackson.core.JsonParser
    public final int v1(int i4) throws IOException {
        if (this.f13813h != JsonToken.FIELD_NAME) {
            return y1() == JsonToken.VALUE_NUMBER_INT ? F0() : i4;
        }
        this.O2 = false;
        JsonToken jsonToken = this.L2;
        this.L2 = null;
        this.f13813h = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return F0();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this.K2 = this.K2.u(this.I2, this.J2);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this.K2 = this.K2.v(this.I2, this.J2);
        }
        return i4;
    }

    protected String v3(int i4) throws IOException {
        boolean isJavaIdentifierPart;
        if (i4 == 39 && (this.f13716a & f14086q3) != 0) {
            return J3();
        }
        if ((this.f13716a & f14087r3) == 0) {
            o2(i4, "was expecting double-quote to start field name");
        }
        int[] i10 = com.fasterxml.jackson.core.io.b.i();
        int length = i10.length;
        if (i4 < length) {
            isJavaIdentifierPart = i10[i4] == 0;
        } else {
            isJavaIdentifierPart = Character.isJavaIdentifierPart((char) i4);
        }
        if (!isJavaIdentifierPart) {
            o2(i4, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i11 = this.f13788x2;
        int i12 = this.f14096h3;
        int i13 = this.f13789y2;
        if (i11 < i13) {
            do {
                char[] cArr = this.f14092d3;
                char c10 = cArr[i11];
                if (c10 < length) {
                    if (i10[c10] != 0) {
                        int i14 = this.f13788x2 - 1;
                        this.f13788x2 = i11;
                        return this.f14095g3.n(cArr, i14, i11 - i14, i12);
                    }
                } else if (!Character.isJavaIdentifierPart(c10)) {
                    int i15 = this.f13788x2 - 1;
                    this.f13788x2 = i11;
                    return this.f14095g3.n(this.f14092d3, i15, i11 - i15, i12);
                }
                i12 = (i12 * 33) + c10;
                i11++;
            } while (i11 < i13);
            this.f13788x2 = i11;
            return w3(this.f13788x2 - 1, i12, i10);
        }
        this.f13788x2 = i11;
        return w3(this.f13788x2 - 1, i12, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public final long w1(long j4) throws IOException {
        if (this.f13813h != JsonToken.FIELD_NAME) {
            return y1() == JsonToken.VALUE_NUMBER_INT ? H0() : j4;
        }
        this.O2 = false;
        JsonToken jsonToken = this.L2;
        this.L2 = null;
        this.f13813h = jsonToken;
        if (jsonToken == JsonToken.VALUE_NUMBER_INT) {
            return H0();
        }
        if (jsonToken == JsonToken.START_ARRAY) {
            this.K2 = this.K2.u(this.I2, this.J2);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this.K2 = this.K2.v(this.I2, this.J2);
        }
        return j4;
    }

    @Override // com.fasterxml.jackson.core.JsonParser
    public final String x1() throws IOException {
        if (this.f13813h == JsonToken.FIELD_NAME) {
            this.O2 = false;
            JsonToken jsonToken = this.L2;
            this.L2 = null;
            this.f13813h = jsonToken;
            if (jsonToken == JsonToken.VALUE_STRING) {
                if (this.f14097i3) {
                    this.f14097i3 = false;
                    H2();
                }
                return this.M2.l();
            }
            if (jsonToken == JsonToken.START_ARRAY) {
                this.K2 = this.K2.u(this.I2, this.J2);
            } else if (jsonToken == JsonToken.START_OBJECT) {
                this.K2 = this.K2.v(this.I2, this.J2);
            }
            return null;
        } else if (y1() == JsonToken.VALUE_STRING) {
            return S0();
        } else {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
        if (r4 != 44) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
        if (r3.K2.k() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
        if (r3.K2.m() != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
        if ((r3.f13716a & com.fasterxml.jackson.core.json.g.f14085p3) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
        r3.f13788x2--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005b, code lost:
        return com.fasterxml.jackson.core.JsonToken.VALUE_NULL;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.fasterxml.jackson.core.JsonToken x3(int r4) throws java.io.IOException {
        /*
            r3 = this;
            r0 = 39
            if (r4 == r0) goto L8e
            r0 = 73
            r1 = 1
            if (r4 == r0) goto L75
            r0 = 78
            if (r4 == r0) goto L5c
            r0 = 93
            if (r4 == r0) goto L3c
            r0 = 43
            if (r4 == r0) goto L1b
            r0 = 44
            if (r4 == r0) goto L45
            goto L9a
        L1b:
            int r4 = r3.f13788x2
            int r0 = r3.f13789y2
            if (r4 < r0) goto L2c
            boolean r4 = r3.A3()
            if (r4 != 0) goto L2c
            com.fasterxml.jackson.core.JsonToken r4 = com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_INT
            r3.m2(r4)
        L2c:
            char[] r4 = r3.f14092d3
            int r0 = r3.f13788x2
            int r1 = r0 + 1
            r3.f13788x2 = r1
            char r4 = r4[r0]
            r0 = 0
            com.fasterxml.jackson.core.JsonToken r4 = r3.u3(r4, r0)
            return r4
        L3c:
            com.fasterxml.jackson.core.json.d r0 = r3.K2
            boolean r0 = r0.k()
            if (r0 != 0) goto L45
            goto L9a
        L45:
            com.fasterxml.jackson.core.json.d r0 = r3.K2
            boolean r0 = r0.m()
            if (r0 != 0) goto L9a
            int r0 = r3.f13716a
            int r2 = com.fasterxml.jackson.core.json.g.f14085p3
            r0 = r0 & r2
            if (r0 == 0) goto L9a
            int r4 = r3.f13788x2
            int r4 = r4 - r1
            r3.f13788x2 = r4
            com.fasterxml.jackson.core.JsonToken r4 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL
            return r4
        L5c:
            java.lang.String r0 = "NaN"
            r3.E3(r0, r1)
            int r1 = r3.f13716a
            int r2 = com.fasterxml.jackson.core.json.g.f14084o3
            r1 = r1 & r2
            if (r1 == 0) goto L6f
            r1 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            com.fasterxml.jackson.core.JsonToken r4 = r3.l3(r0, r1)
            return r4
        L6f:
            java.lang.String r0 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r3.e2(r0)
            goto L9a
        L75:
            java.lang.String r0 = "Infinity"
            r3.E3(r0, r1)
            int r1 = r3.f13716a
            int r2 = com.fasterxml.jackson.core.json.g.f14084o3
            r1 = r1 & r2
            if (r1 == 0) goto L88
            r1 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            com.fasterxml.jackson.core.JsonToken r4 = r3.l3(r0, r1)
            return r4
        L88:
            java.lang.String r0 = "Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r3.e2(r0)
            goto L9a
        L8e:
            int r0 = r3.f13716a
            int r1 = com.fasterxml.jackson.core.json.g.f14086q3
            r0 = r0 & r1
            if (r0 == 0) goto L9a
            com.fasterxml.jackson.core.JsonToken r4 = r3.t3()
            return r4
        L9a:
            boolean r0 = java.lang.Character.isJavaIdentifierStart(r4)
            if (r0 == 0) goto Lb9
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = ""
            r0.append(r1)
            char r1 = (char) r4
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = r3.U2()
            r3.T3(r0, r1)
        Lb9:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "expected a valid value "
            r0.append(r1)
            java.lang.String r1 = r3.V2()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r3.o2(r4, r0)
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.g.x3(int):com.fasterxml.jackson.core.JsonToken");
    }

    @Override // com.fasterxml.jackson.core.base.c, com.fasterxml.jackson.core.JsonParser
    public final JsonToken y1() throws IOException {
        JsonToken jsonToken;
        JsonToken jsonToken2 = this.f13813h;
        JsonToken jsonToken3 = JsonToken.FIELD_NAME;
        if (jsonToken2 == jsonToken3) {
            return H3();
        }
        this.R2 = 0;
        if (this.f14097i3) {
            d4();
        }
        int e4 = e4();
        if (e4 < 0) {
            close();
            this.f13813h = null;
            return null;
        }
        this.Q2 = null;
        if (e4 != 93 && e4 != 125) {
            if (this.K2.y()) {
                e4 = a4(e4);
                if ((this.f13716a & f14082m3) != 0 && (e4 == 93 || e4 == 125)) {
                    p3(e4);
                    return this.f13813h;
                }
            }
            boolean l10 = this.K2.l();
            if (l10) {
                i4();
                this.K2.C(e4 == 34 ? M3() : v3(e4));
                this.f13813h = jsonToken3;
                e4 = X3();
            }
            h4();
            if (e4 == 34) {
                this.f14097i3 = true;
                jsonToken = JsonToken.VALUE_STRING;
            } else if (e4 == 91) {
                if (!l10) {
                    this.K2 = this.K2.u(this.I2, this.J2);
                }
                jsonToken = JsonToken.START_ARRAY;
            } else if (e4 == 102) {
                C3();
                jsonToken = JsonToken.VALUE_FALSE;
            } else if (e4 != 110) {
                if (e4 != 116) {
                    if (e4 == 123) {
                        if (!l10) {
                            this.K2 = this.K2.v(this.I2, this.J2);
                        }
                        jsonToken = JsonToken.START_OBJECT;
                    } else if (e4 == 125) {
                        o2(e4, "expected a value");
                    } else if (e4 == 45) {
                        jsonToken = O3();
                    } else if (e4 != 46) {
                        switch (e4) {
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                                jsonToken = Q3(e4);
                                break;
                            default:
                                jsonToken = x3(e4);
                                break;
                        }
                    } else {
                        jsonToken = L3();
                    }
                }
                G3();
                jsonToken = JsonToken.VALUE_TRUE;
            } else {
                D3();
                jsonToken = JsonToken.VALUE_NULL;
            }
            if (l10) {
                this.L2 = jsonToken;
                return this.f13813h;
            }
            this.f13813h = jsonToken;
            return jsonToken;
        }
        p3(e4);
        return this.f13813h;
    }

    protected boolean y3(int i4, String str) throws IOException {
        JsonToken O3;
        String M3 = i4 == 34 ? M3() : v3(i4);
        this.K2.C(M3);
        this.f13813h = JsonToken.FIELD_NAME;
        int X3 = X3();
        h4();
        if (X3 == 34) {
            this.f14097i3 = true;
            this.L2 = JsonToken.VALUE_STRING;
            return str.equals(M3);
        }
        if (X3 == 45) {
            O3 = O3();
        } else if (X3 == 46) {
            O3 = L3();
        } else if (X3 == 91) {
            O3 = JsonToken.START_ARRAY;
        } else if (X3 == 102) {
            C3();
            O3 = JsonToken.VALUE_FALSE;
        } else if (X3 == 110) {
            D3();
            O3 = JsonToken.VALUE_NULL;
        } else if (X3 == 116) {
            G3();
            O3 = JsonToken.VALUE_TRUE;
        } else if (X3 != 123) {
            switch (X3) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    O3 = Q3(X3);
                    break;
                default:
                    O3 = x3(X3);
                    break;
            }
        } else {
            O3 = JsonToken.START_OBJECT;
        }
        this.L2 = O3;
        return str.equals(M3);
    }

    public g(com.fasterxml.jackson.core.io.d dVar, int i4, Reader reader, com.fasterxml.jackson.core.h hVar, com.fasterxml.jackson.core.sym.b bVar) {
        super(dVar, i4);
        this.f14091c3 = reader;
        this.f14092d3 = dVar.j();
        this.f13788x2 = 0;
        this.f13789y2 = 0;
        this.f14094f3 = hVar;
        this.f14095g3 = bVar;
        this.f14096h3 = bVar.o();
        this.f14093e3 = true;
    }
}
