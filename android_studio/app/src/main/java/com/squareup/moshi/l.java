package com.squareup.moshi;

import com.squareup.moshi.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Objects;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonUtf8Reader.java */
/* loaded from: classes3.dex */
public final class l extends JsonReader {
    private static final int A = 6;
    private static final int B = 7;
    private static final int C = 8;
    private static final int D = 9;
    private static final int E = 10;
    private static final int F = 11;
    private static final int G = 12;
    private static final int H = 13;
    private static final int I = 14;
    private static final int J = 15;
    private static final int K = 16;
    private static final int L = 17;
    private static final int M = 18;
    private static final int N = 0;
    private static final int O = 1;
    private static final int P = 2;
    private static final int Q = 3;
    private static final int R = 4;
    private static final int S = 5;
    private static final int T = 6;
    private static final int U = 7;

    /* renamed from: o  reason: collision with root package name */
    private static final long f55631o = -922337203685477580L;

    /* renamed from: p  reason: collision with root package name */
    private static final ByteString f55632p = ByteString.encodeUtf8("'\\");

    /* renamed from: q  reason: collision with root package name */
    private static final ByteString f55633q = ByteString.encodeUtf8("\"\\");

    /* renamed from: r  reason: collision with root package name */
    private static final ByteString f55634r = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: s  reason: collision with root package name */
    private static final ByteString f55635s = ByteString.encodeUtf8("\n\r");

    /* renamed from: t  reason: collision with root package name */
    private static final ByteString f55636t = ByteString.encodeUtf8("*/");

    /* renamed from: u  reason: collision with root package name */
    private static final int f55637u = 0;

    /* renamed from: v  reason: collision with root package name */
    private static final int f55638v = 1;

    /* renamed from: w  reason: collision with root package name */
    private static final int f55639w = 2;

    /* renamed from: x  reason: collision with root package name */
    private static final int f55640x = 3;

    /* renamed from: y  reason: collision with root package name */
    private static final int f55641y = 4;

    /* renamed from: z  reason: collision with root package name */
    private static final int f55642z = 5;

    /* renamed from: h  reason: collision with root package name */
    private final BufferedSource f55643h;

    /* renamed from: i  reason: collision with root package name */
    private final Buffer f55644i;

    /* renamed from: j  reason: collision with root package name */
    private int f55645j;

    /* renamed from: k  reason: collision with root package name */
    private long f55646k;

    /* renamed from: l  reason: collision with root package name */
    private int f55647l;
    @r7.h

    /* renamed from: m  reason: collision with root package name */
    private String f55648m;
    @r7.h

    /* renamed from: n  reason: collision with root package name */
    private o f55649n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(BufferedSource bufferedSource) {
        this.f55645j = 0;
        Objects.requireNonNull(bufferedSource, "source == null");
        this.f55643h = bufferedSource;
        this.f55644i = bufferedSource.getBuffer();
        L(6);
    }

    private char A0() throws IOException {
        int i4;
        int i10;
        if (this.f55643h.request(1L)) {
            byte readByte = this.f55644i.readByte();
            if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
                return (char) readByte;
            }
            if (readByte != 98) {
                if (readByte != 102) {
                    if (readByte != 110) {
                        if (readByte != 114) {
                            if (readByte != 116) {
                                if (readByte != 117) {
                                    if (this.f55522e) {
                                        return (char) readByte;
                                    }
                                    throw n0("Invalid escape sequence: \\" + ((char) readByte));
                                } else if (this.f55643h.request(4L)) {
                                    char c10 = 0;
                                    for (int i11 = 0; i11 < 4; i11++) {
                                        byte b10 = this.f55644i.getByte(i11);
                                        char c11 = (char) (c10 << 4);
                                        if (b10 < 48 || b10 > 57) {
                                            if (b10 >= 97 && b10 <= 102) {
                                                i4 = b10 - 97;
                                            } else if (b10 < 65 || b10 > 70) {
                                                throw n0("\\u" + this.f55644i.readUtf8(4L));
                                            } else {
                                                i4 = b10 + com.fasterxml.jackson.core.json.a.f14000k;
                                            }
                                            i10 = i4 + 10;
                                        } else {
                                            i10 = b10 - 48;
                                        }
                                        c10 = (char) (c11 + i10);
                                    }
                                    this.f55644i.skip(4L);
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
        throw n0("Unterminated escape sequence");
    }

    private void B0(ByteString byteString) throws IOException {
        while (true) {
            long indexOfElement = this.f55643h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f55644i.getByte(indexOfElement) == 92) {
                    this.f55644i.skip(indexOfElement + 1);
                    A0();
                } else {
                    this.f55644i.skip(indexOfElement + 1);
                    return;
                }
            } else {
                throw n0("Unterminated string");
            }
        }
    }

    private boolean C0() throws IOException {
        BufferedSource bufferedSource = this.f55643h;
        ByteString byteString = f55636t;
        long indexOf = bufferedSource.indexOf(byteString);
        boolean z9 = indexOf != -1;
        Buffer buffer = this.f55644i;
        buffer.skip(z9 ? indexOf + byteString.size() : buffer.size());
        return z9;
    }

    private void D0() throws IOException {
        long indexOfElement = this.f55643h.indexOfElement(f55635s);
        Buffer buffer = this.f55644i;
        buffer.skip(indexOfElement != -1 ? indexOfElement + 1 : buffer.size());
    }

    private void E0() throws IOException {
        long indexOfElement = this.f55643h.indexOfElement(f55634r);
        Buffer buffer = this.f55644i;
        if (indexOfElement == -1) {
            indexOfElement = buffer.size();
        }
        buffer.skip(indexOfElement);
    }

    private void q0() throws IOException {
        if (!this.f55522e) {
            throw n0("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private int r0() throws IOException {
        int[] iArr = this.f55519b;
        int i4 = this.f55518a;
        int i10 = iArr[i4 - 1];
        if (i10 == 1) {
            iArr[i4 - 1] = 2;
        } else if (i10 == 2) {
            int v02 = v0(true);
            this.f55644i.readByte();
            if (v02 != 44) {
                if (v02 != 59) {
                    if (v02 == 93) {
                        this.f55645j = 4;
                        return 4;
                    }
                    throw n0("Unterminated array");
                }
                q0();
            }
        } else if (i10 == 3 || i10 == 5) {
            iArr[i4 - 1] = 4;
            if (i10 == 5) {
                int v03 = v0(true);
                this.f55644i.readByte();
                if (v03 != 44) {
                    if (v03 != 59) {
                        if (v03 == 125) {
                            this.f55645j = 2;
                            return 2;
                        }
                        throw n0("Unterminated object");
                    }
                    q0();
                }
            }
            int v04 = v0(true);
            if (v04 == 34) {
                this.f55644i.readByte();
                this.f55645j = 13;
                return 13;
            } else if (v04 == 39) {
                this.f55644i.readByte();
                q0();
                this.f55645j = 12;
                return 12;
            } else if (v04 != 125) {
                q0();
                if (u0((char) v04)) {
                    this.f55645j = 14;
                    return 14;
                }
                throw n0("Expected name");
            } else if (i10 != 5) {
                this.f55644i.readByte();
                this.f55645j = 2;
                return 2;
            } else {
                throw n0("Expected name");
            }
        } else if (i10 == 4) {
            iArr[i4 - 1] = 5;
            int v05 = v0(true);
            this.f55644i.readByte();
            if (v05 != 58) {
                if (v05 == 61) {
                    q0();
                    if (this.f55643h.request(1L) && this.f55644i.getByte(0L) == 62) {
                        this.f55644i.readByte();
                    }
                } else {
                    throw n0("Expected ':'");
                }
            }
        } else if (i10 == 6) {
            iArr[i4 - 1] = 7;
        } else if (i10 == 7) {
            if (v0(false) == -1) {
                this.f55645j = 18;
                return 18;
            }
            q0();
        } else if (i10 == 9) {
            this.f55649n.b();
            this.f55649n = null;
            this.f55518a--;
            return r0();
        } else if (i10 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int v06 = v0(true);
        if (v06 == 34) {
            this.f55644i.readByte();
            this.f55645j = 9;
            return 9;
        } else if (v06 == 39) {
            q0();
            this.f55644i.readByte();
            this.f55645j = 8;
            return 8;
        } else {
            if (v06 != 44 && v06 != 59) {
                if (v06 == 91) {
                    this.f55644i.readByte();
                    this.f55645j = 3;
                    return 3;
                } else if (v06 != 93) {
                    if (v06 != 123) {
                        int y02 = y0();
                        if (y02 != 0) {
                            return y02;
                        }
                        int z02 = z0();
                        if (z02 != 0) {
                            return z02;
                        }
                        if (u0(this.f55644i.getByte(0L))) {
                            q0();
                            this.f55645j = 10;
                            return 10;
                        }
                        throw n0("Expected value");
                    }
                    this.f55644i.readByte();
                    this.f55645j = 1;
                    return 1;
                } else if (i10 == 1) {
                    this.f55644i.readByte();
                    this.f55645j = 4;
                    return 4;
                }
            }
            if (i10 != 1 && i10 != 2) {
                throw n0("Unexpected value");
            }
            q0();
            this.f55645j = 7;
            return 7;
        }
    }

    private int s0(String str, JsonReader.b bVar) {
        int length = bVar.f55527a.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.equals(bVar.f55527a[i4])) {
                this.f55645j = 0;
                this.f55520c[this.f55518a - 1] = str;
                return i4;
            }
        }
        return -1;
    }

    private int t0(String str, JsonReader.b bVar) {
        int length = bVar.f55527a.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.equals(bVar.f55527a[i4])) {
                this.f55645j = 0;
                int[] iArr = this.f55521d;
                int i10 = this.f55518a - 1;
                iArr[i10] = iArr[i10] + 1;
                return i4;
            }
        }
        return -1;
    }

    private boolean u0(int i4) throws IOException {
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
        q0();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
        r6.f55644i.skip(r3 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
        if (r1 != 47) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        if (r6.f55643h.request(2) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
        q0();
        r3 = r6.f55644i.getByte(1);
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
        r6.f55644i.readByte();
        r6.f55644i.readByte();
        D0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
        r6.f55644i.readByte();
        r6.f55644i.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
        if (C0() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0073, code lost:
        throw n0("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        if (r1 != 35) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
        q0();
        D0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int v0(boolean r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
        L1:
            r1 = 0
        L2:
            okio.BufferedSource r2 = r6.f55643h
            int r3 = r1 + 1
            long r4 = (long) r3
            boolean r2 = r2.request(r4)
            if (r2 == 0) goto L82
            okio.Buffer r2 = r6.f55644i
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
            okio.Buffer r2 = r6.f55644i
            int r3 = r3 + (-1)
            long r3 = (long) r3
            r2.skip(r3)
            r2 = 47
            if (r1 != r2) goto L74
            okio.BufferedSource r3 = r6.f55643h
            r4 = 2
            boolean r3 = r3.request(r4)
            if (r3 != 0) goto L3c
            return r1
        L3c:
            r6.q0()
            okio.Buffer r3 = r6.f55644i
            r4 = 1
            byte r3 = r3.getByte(r4)
            r4 = 42
            if (r3 == r4) goto L5c
            if (r3 == r2) goto L4e
            return r1
        L4e:
            okio.Buffer r1 = r6.f55644i
            r1.readByte()
            okio.Buffer r1 = r6.f55644i
            r1.readByte()
            r6.D0()
            goto L1
        L5c:
            okio.Buffer r1 = r6.f55644i
            r1.readByte()
            okio.Buffer r1 = r6.f55644i
            r1.readByte()
            boolean r1 = r6.C0()
            if (r1 == 0) goto L6d
            goto L1
        L6d:
            java.lang.String r7 = "Unterminated comment"
            com.squareup.moshi.JsonEncodingException r7 = r6.n0(r7)
            throw r7
        L74:
            r2 = 35
            if (r1 != r2) goto L7f
            r6.q0()
            r6.D0()
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.l.v0(boolean):int");
    }

    private String w0(ByteString byteString) throws IOException {
        StringBuilder sb = null;
        while (true) {
            long indexOfElement = this.f55643h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f55644i.getByte(indexOfElement) != 92) {
                    if (sb == null) {
                        String readUtf8 = this.f55644i.readUtf8(indexOfElement);
                        this.f55644i.readByte();
                        return readUtf8;
                    }
                    sb.append(this.f55644i.readUtf8(indexOfElement));
                    this.f55644i.readByte();
                    return sb.toString();
                }
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.f55644i.readUtf8(indexOfElement));
                this.f55644i.readByte();
                sb.append(A0());
            } else {
                throw n0("Unterminated string");
            }
        }
    }

    private String x0() throws IOException {
        long indexOfElement = this.f55643h.indexOfElement(f55634r);
        return indexOfElement != -1 ? this.f55644i.readUtf8(indexOfElement) : this.f55644i.readUtf8();
    }

    private int y0() throws IOException {
        int i4;
        String str;
        String str2;
        byte b10 = this.f55644i.getByte(0L);
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
            if (!this.f55643h.request(i11)) {
                return 0;
            }
            byte b11 = this.f55644i.getByte(i10);
            if (b11 != str.charAt(i10) && b11 != str2.charAt(i10)) {
                return 0;
            }
            i10 = i11;
        }
        if (this.f55643h.request(length + 1) && u0(this.f55644i.getByte(length))) {
            return 0;
        }
        this.f55644i.skip(length);
        this.f55645j = i4;
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0087, code lost:
        if (u0(r11) != false) goto L71;
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
        r16.f55646k = r8;
        r16.f55644i.skip(r5);
        r16.f55645j = 16;
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
        r16.f55647l = r5;
        r16.f55645j = 17;
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
    private int z0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.l.z0():int");
    }

    @Override // com.squareup.moshi.JsonReader
    public String A() throws IOException {
        String str;
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 14) {
            str = x0();
        } else if (i4 == 13) {
            str = w0(f55633q);
        } else if (i4 == 12) {
            str = w0(f55632p);
        } else if (i4 == 15) {
            str = this.f55648m;
            this.f55648m = null;
        } else {
            throw new JsonDataException("Expected a name but was " + I() + " at path " + getPath());
        }
        this.f55645j = 0;
        this.f55520c[this.f55518a - 1] = str;
        return str;
    }

    @Override // com.squareup.moshi.JsonReader
    @r7.h
    public <T> T D() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 7) {
            this.f55645j = 0;
            int[] iArr = this.f55521d;
            int i10 = this.f55518a - 1;
            iArr[i10] = iArr[i10] + 1;
            return null;
        }
        throw new JsonDataException("Expected null but was " + I() + " at path " + getPath());
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00bd  */
    @Override // com.squareup.moshi.JsonReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public okio.BufferedSource E() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.l.E():okio.BufferedSource");
    }

    @Override // com.squareup.moshi.JsonReader
    public String G() throws IOException {
        String readUtf8;
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 10) {
            readUtf8 = x0();
        } else if (i4 == 9) {
            readUtf8 = w0(f55633q);
        } else if (i4 == 8) {
            readUtf8 = w0(f55632p);
        } else if (i4 == 11) {
            readUtf8 = this.f55648m;
            this.f55648m = null;
        } else if (i4 == 16) {
            readUtf8 = Long.toString(this.f55646k);
        } else if (i4 == 17) {
            readUtf8 = this.f55644i.readUtf8(this.f55647l);
        } else {
            throw new JsonDataException("Expected a string but was " + I() + " at path " + getPath());
        }
        this.f55645j = 0;
        int[] iArr = this.f55521d;
        int i10 = this.f55518a - 1;
        iArr[i10] = iArr[i10] + 1;
        return readUtf8;
    }

    @Override // com.squareup.moshi.JsonReader
    public JsonReader.Token I() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
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

    @Override // com.squareup.moshi.JsonReader
    public JsonReader J() {
        return new l(this);
    }

    @Override // com.squareup.moshi.JsonReader
    public void K() throws IOException {
        if (k()) {
            this.f55648m = A();
            this.f55645j = 11;
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public int W(JsonReader.b bVar) throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 < 12 || i4 > 15) {
            return -1;
        }
        if (i4 == 15) {
            return s0(this.f55648m, bVar);
        }
        int select = this.f55643h.select(bVar.f55528b);
        if (select != -1) {
            this.f55645j = 0;
            this.f55520c[this.f55518a - 1] = bVar.f55527a[select];
            return select;
        }
        String str = this.f55520c[this.f55518a - 1];
        String A2 = A();
        int s02 = s0(A2, bVar);
        if (s02 == -1) {
            this.f55645j = 15;
            this.f55648m = A2;
            this.f55520c[this.f55518a - 1] = str;
        }
        return s02;
    }

    @Override // com.squareup.moshi.JsonReader
    public int X(JsonReader.b bVar) throws IOException {
        int[] iArr;
        int i4;
        int i10 = this.f55645j;
        if (i10 == 0) {
            i10 = r0();
        }
        if (i10 < 8 || i10 > 11) {
            return -1;
        }
        if (i10 == 11) {
            return t0(this.f55648m, bVar);
        }
        int select = this.f55643h.select(bVar.f55528b);
        if (select != -1) {
            this.f55645j = 0;
            int[] iArr2 = this.f55521d;
            int i11 = this.f55518a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return select;
        }
        String G2 = G();
        int t02 = t0(G2, bVar);
        if (t02 == -1) {
            this.f55645j = 11;
            this.f55648m = G2;
            this.f55521d[this.f55518a - 1] = iArr[i4] - 1;
        }
        return t02;
    }

    @Override // com.squareup.moshi.JsonReader
    public void a() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 3) {
            L(1);
            this.f55521d[this.f55518a - 1] = 0;
            this.f55645j = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_ARRAY but was " + I() + " at path " + getPath());
    }

    @Override // com.squareup.moshi.JsonReader
    public void b() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 1) {
            L(3);
            this.f55645j = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + I() + " at path " + getPath());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f55645j = 0;
        this.f55519b[0] = 8;
        this.f55518a = 1;
        this.f55644i.clear();
        this.f55643h.close();
    }

    @Override // com.squareup.moshi.JsonReader
    public void d() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 4) {
            int i10 = this.f55518a - 1;
            this.f55518a = i10;
            int[] iArr = this.f55521d;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f55645j = 0;
            return;
        }
        throw new JsonDataException("Expected END_ARRAY but was " + I() + " at path " + getPath());
    }

    @Override // com.squareup.moshi.JsonReader
    public void h() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 2) {
            int i10 = this.f55518a - 1;
            this.f55518a = i10;
            this.f55520c[i10] = null;
            int[] iArr = this.f55521d;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f55645j = 0;
            return;
        }
        throw new JsonDataException("Expected END_OBJECT but was " + I() + " at path " + getPath());
    }

    @Override // com.squareup.moshi.JsonReader
    public void h0() throws IOException {
        if (!this.f55523f) {
            int i4 = this.f55645j;
            if (i4 == 0) {
                i4 = r0();
            }
            if (i4 == 14) {
                E0();
            } else if (i4 == 13) {
                B0(f55633q);
            } else if (i4 == 12) {
                B0(f55632p);
            } else if (i4 != 15) {
                throw new JsonDataException("Expected a name but was " + I() + " at path " + getPath());
            }
            this.f55645j = 0;
            this.f55520c[this.f55518a - 1] = "null";
            return;
        }
        JsonReader.Token I2 = I();
        A();
        throw new JsonDataException("Cannot skip unexpected " + I2 + " at " + getPath());
    }

    @Override // com.squareup.moshi.JsonReader
    public boolean k() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        return (i4 == 2 || i4 == 4 || i4 == 18) ? false : true;
    }

    @Override // com.squareup.moshi.JsonReader
    public void l0() throws IOException {
        if (!this.f55523f) {
            int i4 = 0;
            do {
                int i10 = this.f55645j;
                if (i10 == 0) {
                    i10 = r0();
                }
                if (i10 == 3) {
                    L(1);
                } else if (i10 == 1) {
                    L(3);
                } else {
                    if (i10 == 4) {
                        i4--;
                        if (i4 >= 0) {
                            this.f55518a--;
                        } else {
                            throw new JsonDataException("Expected a value but was " + I() + " at path " + getPath());
                        }
                    } else if (i10 == 2) {
                        i4--;
                        if (i4 >= 0) {
                            this.f55518a--;
                        } else {
                            throw new JsonDataException("Expected a value but was " + I() + " at path " + getPath());
                        }
                    } else if (i10 == 14 || i10 == 10) {
                        E0();
                    } else if (i10 == 9 || i10 == 13) {
                        B0(f55633q);
                    } else if (i10 == 8 || i10 == 12) {
                        B0(f55632p);
                    } else if (i10 == 17) {
                        this.f55644i.skip(this.f55647l);
                    } else if (i10 == 18) {
                        throw new JsonDataException("Expected a value but was " + I() + " at path " + getPath());
                    }
                    this.f55645j = 0;
                }
                i4++;
                this.f55645j = 0;
            } while (i4 != 0);
            int[] iArr = this.f55521d;
            int i11 = this.f55518a;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f55520c[i11 - 1] = "null";
            return;
        }
        throw new JsonDataException("Cannot skip unexpected " + I() + " at " + getPath());
    }

    @Override // com.squareup.moshi.JsonReader
    public boolean q() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 5) {
            this.f55645j = 0;
            int[] iArr = this.f55521d;
            int i10 = this.f55518a - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        } else if (i4 == 6) {
            this.f55645j = 0;
            int[] iArr2 = this.f55521d;
            int i11 = this.f55518a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        } else {
            throw new JsonDataException("Expected a boolean but was " + I() + " at path " + getPath());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public double r() throws IOException {
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 16) {
            this.f55645j = 0;
            int[] iArr = this.f55521d;
            int i10 = this.f55518a - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f55646k;
        }
        if (i4 == 17) {
            this.f55648m = this.f55644i.readUtf8(this.f55647l);
        } else if (i4 == 9) {
            this.f55648m = w0(f55633q);
        } else if (i4 == 8) {
            this.f55648m = w0(f55632p);
        } else if (i4 == 10) {
            this.f55648m = x0();
        } else if (i4 != 11) {
            throw new JsonDataException("Expected a double but was " + I() + " at path " + getPath());
        }
        this.f55645j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f55648m);
            if (!this.f55522e && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                throw new JsonEncodingException("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.f55648m = null;
            this.f55645j = 0;
            int[] iArr2 = this.f55521d;
            int i11 = this.f55518a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.f55648m + " at path " + getPath());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public int s() throws IOException {
        String w02;
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 16) {
            long j4 = this.f55646k;
            int i10 = (int) j4;
            if (j4 == i10) {
                this.f55645j = 0;
                int[] iArr = this.f55521d;
                int i11 = this.f55518a - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new JsonDataException("Expected an int but was " + this.f55646k + " at path " + getPath());
        }
        if (i4 == 17) {
            this.f55648m = this.f55644i.readUtf8(this.f55647l);
        } else if (i4 == 9 || i4 == 8) {
            if (i4 == 9) {
                w02 = w0(f55633q);
            } else {
                w02 = w0(f55632p);
            }
            this.f55648m = w02;
            try {
                int parseInt = Integer.parseInt(w02);
                this.f55645j = 0;
                int[] iArr2 = this.f55521d;
                int i12 = this.f55518a - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i4 != 11) {
            throw new JsonDataException("Expected an int but was " + I() + " at path " + getPath());
        }
        this.f55645j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f55648m);
            int i13 = (int) parseDouble;
            if (i13 == parseDouble) {
                this.f55648m = null;
                this.f55645j = 0;
                int[] iArr3 = this.f55521d;
                int i14 = this.f55518a - 1;
                iArr3[i14] = iArr3[i14] + 1;
                return i13;
            }
            throw new JsonDataException("Expected an int but was " + this.f55648m + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.f55648m + " at path " + getPath());
        }
    }

    public String toString() {
        return "JsonReader(" + this.f55643h + ")";
    }

    @Override // com.squareup.moshi.JsonReader
    public long y() throws IOException {
        String w02;
        int i4 = this.f55645j;
        if (i4 == 0) {
            i4 = r0();
        }
        if (i4 == 16) {
            this.f55645j = 0;
            int[] iArr = this.f55521d;
            int i10 = this.f55518a - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f55646k;
        }
        if (i4 == 17) {
            this.f55648m = this.f55644i.readUtf8(this.f55647l);
        } else if (i4 == 9 || i4 == 8) {
            if (i4 == 9) {
                w02 = w0(f55633q);
            } else {
                w02 = w0(f55632p);
            }
            this.f55648m = w02;
            try {
                long parseLong = Long.parseLong(w02);
                this.f55645j = 0;
                int[] iArr2 = this.f55521d;
                int i11 = this.f55518a - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        } else if (i4 != 11) {
            throw new JsonDataException("Expected a long but was " + I() + " at path " + getPath());
        }
        this.f55645j = 11;
        try {
            long longValueExact = new BigDecimal(this.f55648m).longValueExact();
            this.f55648m = null;
            this.f55645j = 0;
            int[] iArr3 = this.f55521d;
            int i12 = this.f55518a - 1;
            iArr3[i12] = iArr3[i12] + 1;
            return longValueExact;
        } catch (ArithmeticException | NumberFormatException unused2) {
            throw new JsonDataException("Expected a long but was " + this.f55648m + " at path " + getPath());
        }
    }

    l(l lVar) {
        super(lVar);
        this.f55645j = 0;
        BufferedSource peek = lVar.f55643h.peek();
        this.f55643h = peek;
        this.f55644i = peek.getBuffer();
        this.f55645j = lVar.f55645j;
        this.f55646k = lVar.f55646k;
        this.f55647l = lVar.f55647l;
        this.f55648m = lVar.f55648m;
        try {
            peek.require(lVar.f55644i.size());
        } catch (IOException unused) {
            throw new AssertionError();
        }
    }
}
