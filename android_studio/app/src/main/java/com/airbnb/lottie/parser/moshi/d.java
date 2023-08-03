package com.airbnb.lottie.parser.moshi;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import java.util.Objects;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonUtf8Reader.java */
/* loaded from: classes.dex */
public final class d extends JsonReader {
    private static final int A = 7;
    private static final int B = 8;
    private static final int C = 9;
    private static final int D = 10;
    private static final int E = 11;
    private static final int F = 12;
    private static final int G = 13;
    private static final int H = 14;
    private static final int I = 15;
    private static final int J = 16;
    private static final int K = 17;
    private static final int L = 18;
    private static final int M = 0;
    private static final int N = 1;
    private static final int O = 2;
    private static final int P = 3;
    private static final int Q = 4;
    private static final int R = 5;
    private static final int S = 6;
    private static final int T = 7;

    /* renamed from: n  reason: collision with root package name */
    private static final long f4666n = -922337203685477580L;

    /* renamed from: o  reason: collision with root package name */
    private static final ByteString f4667o = ByteString.encodeUtf8("'\\");

    /* renamed from: p  reason: collision with root package name */
    private static final ByteString f4668p = ByteString.encodeUtf8("\"\\");

    /* renamed from: q  reason: collision with root package name */
    private static final ByteString f4669q = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: r  reason: collision with root package name */
    private static final ByteString f4670r = ByteString.encodeUtf8("\n\r");

    /* renamed from: s  reason: collision with root package name */
    private static final ByteString f4671s = ByteString.encodeUtf8("*/");

    /* renamed from: t  reason: collision with root package name */
    private static final int f4672t = 0;

    /* renamed from: u  reason: collision with root package name */
    private static final int f4673u = 1;

    /* renamed from: v  reason: collision with root package name */
    private static final int f4674v = 2;

    /* renamed from: w  reason: collision with root package name */
    private static final int f4675w = 3;

    /* renamed from: x  reason: collision with root package name */
    private static final int f4676x = 4;

    /* renamed from: y  reason: collision with root package name */
    private static final int f4677y = 5;

    /* renamed from: z  reason: collision with root package name */
    private static final int f4678z = 6;

    /* renamed from: h  reason: collision with root package name */
    private final BufferedSource f4679h;

    /* renamed from: i  reason: collision with root package name */
    private final Buffer f4680i;

    /* renamed from: j  reason: collision with root package name */
    private int f4681j = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f4682k;

    /* renamed from: l  reason: collision with root package name */
    private int f4683l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private String f4684m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(BufferedSource bufferedSource) {
        Objects.requireNonNull(bufferedSource, "source == null");
        this.f4679h = bufferedSource;
        this.f4680i = bufferedSource.getBuffer();
        E(6);
    }

    private void L() throws IOException {
        if (!this.f4653e) {
            throw K("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private int M() throws IOException {
        int[] iArr = this.f4650b;
        int i4 = this.f4649a;
        int i10 = iArr[i4 - 1];
        if (i10 == 1) {
            iArr[i4 - 1] = 2;
        } else if (i10 == 2) {
            int d02 = d0(true);
            this.f4680i.readByte();
            if (d02 != 44) {
                if (d02 != 59) {
                    if (d02 == 93) {
                        this.f4681j = 4;
                        return 4;
                    }
                    throw K("Unterminated array");
                }
                L();
            }
        } else if (i10 == 3 || i10 == 5) {
            iArr[i4 - 1] = 4;
            if (i10 == 5) {
                int d03 = d0(true);
                this.f4680i.readByte();
                if (d03 != 44) {
                    if (d03 != 59) {
                        if (d03 == 125) {
                            this.f4681j = 2;
                            return 2;
                        }
                        throw K("Unterminated object");
                    }
                    L();
                }
            }
            int d04 = d0(true);
            if (d04 == 34) {
                this.f4680i.readByte();
                this.f4681j = 13;
                return 13;
            } else if (d04 == 39) {
                this.f4680i.readByte();
                L();
                this.f4681j = 12;
                return 12;
            } else if (d04 != 125) {
                L();
                if (b0((char) d04)) {
                    this.f4681j = 14;
                    return 14;
                }
                throw K("Expected name");
            } else if (i10 != 5) {
                this.f4680i.readByte();
                this.f4681j = 2;
                return 2;
            } else {
                throw K("Expected name");
            }
        } else if (i10 == 4) {
            iArr[i4 - 1] = 5;
            int d05 = d0(true);
            this.f4680i.readByte();
            if (d05 != 58) {
                if (d05 == 61) {
                    L();
                    if (this.f4679h.request(1L) && this.f4680i.getByte(0L) == 62) {
                        this.f4680i.readByte();
                    }
                } else {
                    throw K("Expected ':'");
                }
            }
        } else if (i10 == 6) {
            iArr[i4 - 1] = 7;
        } else if (i10 == 7) {
            if (d0(false) == -1) {
                this.f4681j = 18;
                return 18;
            }
            L();
        } else if (i10 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int d06 = d0(true);
        if (d06 == 34) {
            this.f4680i.readByte();
            this.f4681j = 9;
            return 9;
        } else if (d06 == 39) {
            L();
            this.f4680i.readByte();
            this.f4681j = 8;
            return 8;
        } else {
            if (d06 != 44 && d06 != 59) {
                if (d06 == 91) {
                    this.f4680i.readByte();
                    this.f4681j = 3;
                    return 3;
                } else if (d06 != 93) {
                    if (d06 != 123) {
                        int l02 = l0();
                        if (l02 != 0) {
                            return l02;
                        }
                        int n02 = n0();
                        if (n02 != 0) {
                            return n02;
                        }
                        if (b0(this.f4680i.getByte(0L))) {
                            L();
                            this.f4681j = 10;
                            return 10;
                        }
                        throw K("Expected value");
                    }
                    this.f4680i.readByte();
                    this.f4681j = 1;
                    return 1;
                } else if (i10 == 1) {
                    this.f4680i.readByte();
                    this.f4681j = 4;
                    return 4;
                }
            }
            if (i10 != 1 && i10 != 2) {
                throw K("Unexpected value");
            }
            L();
            this.f4681j = 7;
            return 7;
        }
    }

    private int W(String str, JsonReader.a aVar) {
        int length = aVar.f4656a.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.equals(aVar.f4656a[i4])) {
                this.f4681j = 0;
                this.f4651c[this.f4649a - 1] = str;
                return i4;
            }
        }
        return -1;
    }

    private int X(String str, JsonReader.a aVar) {
        int length = aVar.f4656a.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.equals(aVar.f4656a[i4])) {
                this.f4681j = 0;
                int[] iArr = this.f4652d;
                int i10 = this.f4649a - 1;
                iArr[i10] = iArr[i10] + 1;
                return i4;
            }
        }
        return -1;
    }

    private boolean b0(int i4) throws IOException {
        if (i4 == 9 || i4 == 10 || i4 == 12 || i4 == 13 || i4 == 32) {
            return false;
        }
        if (i4 != 35) {
            if (i4 == 44) {
                return false;
            }
            if (i4 != 47 && i4 != 61) {
                if (i4 == 123 || i4 == 125 || i4 == 58) {
                    return false;
                }
                if (i4 != 59) {
                    switch (i4) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        L();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
        r6.f4680i.skip(r3 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
        if (r1 != 47) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        if (r6.f4679h.request(2) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
        L();
        r3 = r6.f4680i.getByte(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
        if (r3 == 42) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
        if (r3 == 47) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004d, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004e, code lost:
        r6.f4680i.readByte();
        r6.f4680i.readByte();
        r0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
        r6.f4680i.readByte();
        r6.f4680i.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
        if (q0() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0073, code lost:
        throw K("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        if (r1 != 35) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
        L();
        r0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int d0(boolean r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
        L1:
            r1 = 0
        L2:
            okio.BufferedSource r2 = r6.f4679h
            int r3 = r1 + 1
            long r4 = (long) r3
            boolean r2 = r2.request(r4)
            if (r2 == 0) goto L82
            okio.Buffer r2 = r6.f4680i
            long r4 = (long) r1
            byte r1 = r2.getByte(r4)
            r2 = 10
            if (r1 == r2) goto L80
            r2 = 32
            if (r1 == r2) goto L80
            r2 = 13
            if (r1 == r2) goto L80
            r2 = 9
            if (r1 != r2) goto L25
            goto L80
        L25:
            okio.Buffer r2 = r6.f4680i
            int r3 = r3 + (-1)
            long r3 = (long) r3
            r2.skip(r3)
            r2 = 47
            if (r1 != r2) goto L74
            okio.BufferedSource r3 = r6.f4679h
            r4 = 2
            boolean r3 = r3.request(r4)
            if (r3 != 0) goto L3c
            return r1
        L3c:
            r6.L()
            okio.Buffer r3 = r6.f4680i
            r4 = 1
            byte r3 = r3.getByte(r4)
            r4 = 42
            if (r3 == r4) goto L5c
            if (r3 == r2) goto L4e
            return r1
        L4e:
            okio.Buffer r1 = r6.f4680i
            r1.readByte()
            okio.Buffer r1 = r6.f4680i
            r1.readByte()
            r6.r0()
            goto L1
        L5c:
            okio.Buffer r1 = r6.f4680i
            r1.readByte()
            okio.Buffer r1 = r6.f4680i
            r1.readByte()
            boolean r1 = r6.q0()
            if (r1 == 0) goto L6d
            goto L1
        L6d:
            java.lang.String r7 = "Unterminated comment"
            com.airbnb.lottie.parser.moshi.b r7 = r6.K(r7)
            throw r7
        L74:
            r2 = 35
            if (r1 != r2) goto L7f
            r6.L()
            r6.r0()
            goto L1
        L7f:
            return r1
        L80:
            r1 = r3
            goto L2
        L82:
            if (r7 != 0) goto L86
            r7 = -1
            return r7
        L86:
            java.io.EOFException r7 = new java.io.EOFException
            java.lang.String r0 = "End of input"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.d.d0(boolean):int");
    }

    private String g0(ByteString byteString) throws IOException {
        StringBuilder sb = null;
        while (true) {
            long indexOfElement = this.f4679h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f4680i.getByte(indexOfElement) != 92) {
                    if (sb == null) {
                        String readUtf8 = this.f4680i.readUtf8(indexOfElement);
                        this.f4680i.readByte();
                        return readUtf8;
                    }
                    sb.append(this.f4680i.readUtf8(indexOfElement));
                    this.f4680i.readByte();
                    return sb.toString();
                }
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.f4680i.readUtf8(indexOfElement));
                this.f4680i.readByte();
                sb.append(o0());
            } else {
                throw K("Unterminated string");
            }
        }
    }

    private String h0() throws IOException {
        long indexOfElement = this.f4679h.indexOfElement(f4669q);
        return indexOfElement != -1 ? this.f4680i.readUtf8(indexOfElement) : this.f4680i.readUtf8();
    }

    private int l0() throws IOException {
        int i4;
        String str;
        String str2;
        byte b10 = this.f4680i.getByte(0L);
        if (b10 == 116 || b10 == 84) {
            i4 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (b10 == 102 || b10 == 70) {
            i4 = 6;
            str = "false";
            str2 = "FALSE";
        } else if (b10 != 110 && b10 != 78) {
            return 0;
        } else {
            i4 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        int i10 = 1;
        while (i10 < length) {
            int i11 = i10 + 1;
            if (!this.f4679h.request(i11)) {
                return 0;
            }
            byte b11 = this.f4680i.getByte(i10);
            if (b11 != str.charAt(i10) && b11 != str2.charAt(i10)) {
                return 0;
            }
            i10 = i11;
        }
        if (this.f4679h.request(length + 1) && b0(this.f4680i.getByte(length))) {
            return 0;
        }
        this.f4680i.skip(length);
        this.f4681j = i4;
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0087, code lost:
        if (b0(r11) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0089, code lost:
        if (r6 != 2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008b, code lost:
        if (r7 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0091, code lost:
        if (r8 != Long.MIN_VALUE) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0093, code lost:
        if (r10 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0097, code lost:
        if (r8 != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0099, code lost:
        if (r10 != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009b, code lost:
        if (r10 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009e, code lost:
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009f, code lost:
        r16.f4682k = r8;
        r16.f4680i.skip(r5);
        r16.f4681j = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ab, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ac, code lost:
        if (r6 == 2) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00af, code lost:
        if (r6 == 4) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b2, code lost:
        if (r6 != 7) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b5, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b7, code lost:
        r16.f4683l = r5;
        r16.f4681j = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00bd, code lost:
        return 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00be, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int n0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.d.n0():int");
    }

    private char o0() throws IOException {
        int i4;
        int i10;
        if (this.f4679h.request(1L)) {
            byte readByte = this.f4680i.readByte();
            if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
                return (char) readByte;
            }
            if (readByte != 98) {
                if (readByte != 102) {
                    if (readByte != 110) {
                        if (readByte != 114) {
                            if (readByte != 116) {
                                if (readByte != 117) {
                                    if (this.f4653e) {
                                        return (char) readByte;
                                    }
                                    throw K("Invalid escape sequence: \\" + ((char) readByte));
                                } else if (this.f4679h.request(4L)) {
                                    char c10 = 0;
                                    for (int i11 = 0; i11 < 4; i11++) {
                                        byte b10 = this.f4680i.getByte(i11);
                                        char c11 = (char) (c10 << 4);
                                        if (b10 < 48 || b10 > 57) {
                                            if (b10 >= 97 && b10 <= 102) {
                                                i4 = b10 - 97;
                                            } else if (b10 < 65 || b10 > 70) {
                                                throw K("\\u" + this.f4680i.readUtf8(4L));
                                            } else {
                                                i4 = b10 + com.fasterxml.jackson.core.json.a.f14000k;
                                            }
                                            i10 = i4 + 10;
                                        } else {
                                            i10 = b10 - 48;
                                        }
                                        c10 = (char) (c11 + i10);
                                    }
                                    this.f4680i.skip(4L);
                                    return c10;
                                } else {
                                    throw new EOFException("Unterminated escape sequence at path " + getPath());
                                }
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
        throw K("Unterminated escape sequence");
    }

    private void p0(ByteString byteString) throws IOException {
        while (true) {
            long indexOfElement = this.f4679h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f4680i.getByte(indexOfElement) == 92) {
                    this.f4680i.skip(indexOfElement + 1);
                    o0();
                } else {
                    this.f4680i.skip(indexOfElement + 1);
                    return;
                }
            } else {
                throw K("Unterminated string");
            }
        }
    }

    private boolean q0() throws IOException {
        BufferedSource bufferedSource = this.f4679h;
        ByteString byteString = f4671s;
        long indexOf = bufferedSource.indexOf(byteString);
        boolean z9 = indexOf != -1;
        Buffer buffer = this.f4680i;
        buffer.skip(z9 ? indexOf + byteString.size() : buffer.size());
        return z9;
    }

    private void r0() throws IOException {
        long indexOfElement = this.f4679h.indexOfElement(f4670r);
        Buffer buffer = this.f4680i;
        buffer.skip(indexOfElement != -1 ? indexOfElement + 1 : buffer.size());
    }

    private void s0() throws IOException {
        long indexOfElement = this.f4679h.indexOfElement(f4669q);
        Buffer buffer = this.f4680i;
        if (indexOfElement == -1) {
            indexOfElement = buffer.size();
        }
        buffer.skip(indexOfElement);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token D() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        switch (i4) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int G(JsonReader.a aVar) throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 < 12 || i4 > 15) {
            return -1;
        }
        if (i4 == 15) {
            return W(this.f4684m, aVar);
        }
        int select = this.f4679h.select(aVar.f4657b);
        if (select != -1) {
            this.f4681j = 0;
            this.f4651c[this.f4649a - 1] = aVar.f4656a[select];
            return select;
        }
        String str = this.f4651c[this.f4649a - 1];
        String s9 = s();
        int W = W(s9, aVar);
        if (W == -1) {
            this.f4681j = 15;
            this.f4684m = s9;
            this.f4651c[this.f4649a - 1] = str;
        }
        return W;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void H() throws IOException {
        if (!this.f4654f) {
            int i4 = this.f4681j;
            if (i4 == 0) {
                i4 = M();
            }
            if (i4 == 14) {
                s0();
            } else if (i4 == 13) {
                p0(f4668p);
            } else if (i4 == 12) {
                p0(f4667o);
            } else if (i4 != 15) {
                throw new a("Expected a name but was " + D() + " at path " + getPath());
            }
            this.f4681j = 0;
            this.f4651c[this.f4649a - 1] = "null";
            return;
        }
        throw new a("Cannot skip unexpected " + D() + " at " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void I() throws IOException {
        if (!this.f4654f) {
            int i4 = 0;
            do {
                int i10 = this.f4681j;
                if (i10 == 0) {
                    i10 = M();
                }
                if (i10 == 3) {
                    E(1);
                } else if (i10 == 1) {
                    E(3);
                } else {
                    if (i10 == 4) {
                        i4--;
                        if (i4 >= 0) {
                            this.f4649a--;
                        } else {
                            throw new a("Expected a value but was " + D() + " at path " + getPath());
                        }
                    } else if (i10 == 2) {
                        i4--;
                        if (i4 >= 0) {
                            this.f4649a--;
                        } else {
                            throw new a("Expected a value but was " + D() + " at path " + getPath());
                        }
                    } else if (i10 == 14 || i10 == 10) {
                        s0();
                    } else if (i10 == 9 || i10 == 13) {
                        p0(f4668p);
                    } else if (i10 == 8 || i10 == 12) {
                        p0(f4667o);
                    } else if (i10 == 17) {
                        this.f4680i.skip(this.f4683l);
                    } else if (i10 == 18) {
                        throw new a("Expected a value but was " + D() + " at path " + getPath());
                    }
                    this.f4681j = 0;
                }
                i4++;
                this.f4681j = 0;
            } while (i4 != 0);
            int[] iArr = this.f4652d;
            int i11 = this.f4649a;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f4651c[i11 - 1] = "null";
            return;
        }
        throw new a("Cannot skip unexpected " + D() + " at " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void b() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 3) {
            E(1);
            this.f4652d[this.f4649a - 1] = 0;
            this.f4681j = 0;
            return;
        }
        throw new a("Expected BEGIN_ARRAY but was " + D() + " at path " + getPath());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4681j = 0;
        this.f4650b[0] = 8;
        this.f4649a = 1;
        this.f4680i.clear();
        this.f4679h.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void d() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 1) {
            E(3);
            this.f4681j = 0;
            return;
        }
        throw new a("Expected BEGIN_OBJECT but was " + D() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void h() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 4) {
            int i10 = this.f4649a - 1;
            this.f4649a = i10;
            int[] iArr = this.f4652d;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f4681j = 0;
            return;
        }
        throw new a("Expected END_ARRAY but was " + D() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void i() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 2) {
            int i10 = this.f4649a - 1;
            this.f4649a = i10;
            this.f4651c[i10] = null;
            int[] iArr = this.f4652d;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f4681j = 0;
            return;
        }
        throw new a("Expected END_OBJECT but was " + D() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean k() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        return (i4 == 2 || i4 == 4 || i4 == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean p() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 5) {
            this.f4681j = 0;
            int[] iArr = this.f4652d;
            int i10 = this.f4649a - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        } else if (i4 == 6) {
            this.f4681j = 0;
            int[] iArr2 = this.f4652d;
            int i11 = this.f4649a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        } else {
            throw new a("Expected a boolean but was " + D() + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double q() throws IOException {
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 16) {
            this.f4681j = 0;
            int[] iArr = this.f4652d;
            int i10 = this.f4649a - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f4682k;
        }
        if (i4 == 17) {
            this.f4684m = this.f4680i.readUtf8(this.f4683l);
        } else if (i4 == 9) {
            this.f4684m = g0(f4668p);
        } else if (i4 == 8) {
            this.f4684m = g0(f4667o);
        } else if (i4 == 10) {
            this.f4684m = h0();
        } else if (i4 != 11) {
            throw new a("Expected a double but was " + D() + " at path " + getPath());
        }
        this.f4681j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f4684m);
            if (!this.f4653e && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                throw new b("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.f4684m = null;
            this.f4681j = 0;
            int[] iArr2 = this.f4652d;
            int i11 = this.f4649a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new a("Expected a double but was " + this.f4684m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int r() throws IOException {
        String g02;
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 16) {
            long j4 = this.f4682k;
            int i10 = (int) j4;
            if (j4 == i10) {
                this.f4681j = 0;
                int[] iArr = this.f4652d;
                int i11 = this.f4649a - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new a("Expected an int but was " + this.f4682k + " at path " + getPath());
        }
        if (i4 == 17) {
            this.f4684m = this.f4680i.readUtf8(this.f4683l);
        } else if (i4 == 9 || i4 == 8) {
            if (i4 == 9) {
                g02 = g0(f4668p);
            } else {
                g02 = g0(f4667o);
            }
            this.f4684m = g02;
            try {
                int parseInt = Integer.parseInt(g02);
                this.f4681j = 0;
                int[] iArr2 = this.f4652d;
                int i12 = this.f4649a - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i4 != 11) {
            throw new a("Expected an int but was " + D() + " at path " + getPath());
        }
        this.f4681j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f4684m);
            int i13 = (int) parseDouble;
            if (i13 == parseDouble) {
                this.f4684m = null;
                this.f4681j = 0;
                int[] iArr3 = this.f4652d;
                int i14 = this.f4649a - 1;
                iArr3[i14] = iArr3[i14] + 1;
                return i13;
            }
            throw new a("Expected an int but was " + this.f4684m + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new a("Expected an int but was " + this.f4684m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String s() throws IOException {
        String str;
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 14) {
            str = h0();
        } else if (i4 == 13) {
            str = g0(f4668p);
        } else if (i4 == 12) {
            str = g0(f4667o);
        } else if (i4 == 15) {
            str = this.f4684m;
        } else {
            throw new a("Expected a name but was " + D() + " at path " + getPath());
        }
        this.f4681j = 0;
        this.f4651c[this.f4649a - 1] = str;
        return str;
    }

    public String toString() {
        return "JsonReader(" + this.f4679h + ")";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String y() throws IOException {
        String readUtf8;
        int i4 = this.f4681j;
        if (i4 == 0) {
            i4 = M();
        }
        if (i4 == 10) {
            readUtf8 = h0();
        } else if (i4 == 9) {
            readUtf8 = g0(f4668p);
        } else if (i4 == 8) {
            readUtf8 = g0(f4667o);
        } else if (i4 == 11) {
            readUtf8 = this.f4684m;
            this.f4684m = null;
        } else if (i4 == 16) {
            readUtf8 = Long.toString(this.f4682k);
        } else if (i4 == 17) {
            readUtf8 = this.f4680i.readUtf8(this.f4683l);
        } else {
            throw new a("Expected a string but was " + D() + " at path " + getPath());
        }
        this.f4681j = 0;
        int[] iArr = this.f4652d;
        int i10 = this.f4649a - 1;
        iArr[i10] = iArr[i10] + 1;
        return readUtf8;
    }
}
