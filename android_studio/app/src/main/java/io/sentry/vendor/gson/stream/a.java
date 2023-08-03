package io.sentry.vendor.gson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import kotlin.text.Typography;
import m8.a;

/* compiled from: JsonReader.java */
@a.c
/* loaded from: classes4.dex */
public class a implements Closeable {
    private static final int A = 10;
    private static final int B = 11;
    private static final int C = 12;
    private static final int D = 13;
    private static final int E = 14;
    private static final int F = 15;
    private static final int G = 16;
    private static final int H = 17;
    private static final int I = 0;
    private static final int J = 1;
    private static final int K = 2;
    private static final int L = 3;
    private static final int M = 4;
    private static final int N = 5;
    private static final int O = 6;
    private static final int P = 7;

    /* renamed from: p  reason: collision with root package name */
    private static final long f84132p = -922337203685477580L;

    /* renamed from: q  reason: collision with root package name */
    private static final int f84133q = 0;

    /* renamed from: r  reason: collision with root package name */
    private static final int f84134r = 1;

    /* renamed from: s  reason: collision with root package name */
    private static final int f84135s = 2;

    /* renamed from: t  reason: collision with root package name */
    private static final int f84136t = 3;

    /* renamed from: u  reason: collision with root package name */
    private static final int f84137u = 4;

    /* renamed from: v  reason: collision with root package name */
    private static final int f84138v = 5;

    /* renamed from: w  reason: collision with root package name */
    private static final int f84139w = 6;

    /* renamed from: x  reason: collision with root package name */
    private static final int f84140x = 7;

    /* renamed from: y  reason: collision with root package name */
    private static final int f84141y = 8;

    /* renamed from: z  reason: collision with root package name */
    private static final int f84142z = 9;

    /* renamed from: a  reason: collision with root package name */
    private final Reader f84143a;

    /* renamed from: i  reason: collision with root package name */
    private long f84151i;

    /* renamed from: j  reason: collision with root package name */
    private int f84152j;

    /* renamed from: k  reason: collision with root package name */
    private String f84153k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f84154l;

    /* renamed from: n  reason: collision with root package name */
    private String[] f84156n;

    /* renamed from: o  reason: collision with root package name */
    private int[] f84157o;

    /* renamed from: b  reason: collision with root package name */
    private boolean f84144b = false;

    /* renamed from: c  reason: collision with root package name */
    private final char[] f84145c = new char[1024];

    /* renamed from: d  reason: collision with root package name */
    private int f84146d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f84147e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f84148f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f84149g = 0;

    /* renamed from: h  reason: collision with root package name */
    int f84150h = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f84155m = 0 + 1;

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f84154l = iArr;
        iArr[0] = 6;
        this.f84156n = new String[32];
        this.f84157o = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f84143a = reader;
    }

    private int J(boolean z9) throws IOException {
        char[] cArr = this.f84145c;
        int i4 = this.f84146d;
        int i10 = this.f84147e;
        while (true) {
            if (i4 == i10) {
                this.f84146d = i4;
                if (!q(1)) {
                    if (z9) {
                        throw new EOFException("End of input" + A());
                    }
                    return -1;
                }
                i4 = this.f84146d;
                i10 = this.f84147e;
            }
            int i11 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 == '\n') {
                this.f84148f++;
                this.f84149g = i11;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f84146d = i11;
                    if (i11 == i10) {
                        this.f84146d = i11 - 1;
                        boolean q9 = q(2);
                        this.f84146d++;
                        if (!q9) {
                            return c10;
                        }
                    }
                    d();
                    int i12 = this.f84146d;
                    char c11 = cArr[i12];
                    if (c11 == '*') {
                        this.f84146d = i12 + 1;
                        if (o0("*/")) {
                            i4 = this.f84146d + 2;
                            i10 = this.f84147e;
                        } else {
                            throw s0("Unterminated comment");
                        }
                    } else if (c11 != '/') {
                        return c10;
                    } else {
                        this.f84146d = i12 + 1;
                        p0();
                        i4 = this.f84146d;
                        i10 = this.f84147e;
                    }
                } else if (c10 == '#') {
                    this.f84146d = i11;
                    d();
                    p0();
                    i4 = this.f84146d;
                    i10 = this.f84147e;
                } else {
                    this.f84146d = i11;
                    return c10;
                }
            }
            i4 = i11;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
        if (r1 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
        r1.append(r0, r3, r2 - r3);
        r9.f84146d = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String L(char r10) throws java.io.IOException {
        /*
            r9 = this;
            char[] r0 = r9.f84145c
            r1 = 0
        L3:
            int r2 = r9.f84146d
            int r3 = r9.f84147e
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L5c
            int r7 = r2 + 1
            char r2 = r0[r2]
            if (r2 != r10) goto L28
            r9.f84146d = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L20
            java.lang.String r10 = new java.lang.String
            r10.<init>(r0, r3, r7)
            return r10
        L20:
            r1.append(r0, r3, r7)
            java.lang.String r10 = r1.toString()
            return r10
        L28:
            r8 = 92
            if (r2 != r8) goto L4f
            r9.f84146d = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L40
            int r1 = r7 + 1
            int r1 = r1 * 2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r2.<init>(r1)
            r1 = r2
        L40:
            r1.append(r0, r3, r7)
            char r2 = r9.h0()
            r1.append(r2)
            int r2 = r9.f84146d
            int r3 = r9.f84147e
            goto L7
        L4f:
            r5 = 10
            if (r2 != r5) goto L5a
            int r2 = r9.f84148f
            int r2 = r2 + r6
            r9.f84148f = r2
            r9.f84149g = r7
        L5a:
            r2 = r7
            goto L9
        L5c:
            if (r1 != 0) goto L6c
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L6c:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r9.f84146d = r2
            boolean r2 = r9.q(r6)
            if (r2 == 0) goto L7a
            goto L3
        L7a:
            java.lang.String r10 = "Unterminated string"
            java.io.IOException r10 = r9.s0(r10)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.L(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        d();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String W() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r6.f84146d
            int r4 = r3 + r2
            int r5 = r6.f84147e
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f84145c
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.d()
            goto L5c
        L4e:
            char[] r3 = r6.f84145c
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.q(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.f84145c
            int r4 = r6.f84146d
            r1.append(r3, r4, r2)
            int r3 = r6.f84146d
            int r3 = r3 + r2
            r6.f84146d = r3
            r2 = 1
            boolean r2 = r6.q(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f84145c
            int r3 = r6.f84146d
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.f84145c
            int r3 = r6.f84146d
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.f84146d
            int r2 = r2 + r0
            r6.f84146d = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.W():java.lang.String");
    }

    private int b0() throws IOException {
        int i4;
        String str;
        String str2;
        char c10 = this.f84145c[this.f84146d];
        if (c10 == 't' || c10 == 'T') {
            i4 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (c10 == 'f' || c10 == 'F') {
            i4 = 6;
            str = "false";
            str2 = "FALSE";
        } else if (c10 != 'n' && c10 != 'N') {
            return 0;
        } else {
            i4 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int i10 = 1; i10 < length; i10++) {
            if (this.f84146d + i10 >= this.f84147e && !q(i10 + 1)) {
                return 0;
            }
            char c11 = this.f84145c[this.f84146d + i10];
            if (c11 != str.charAt(i10) && c11 != str2.charAt(i10)) {
                return 0;
            }
        }
        if ((this.f84146d + length < this.f84147e || q(length + 1)) && y(this.f84145c[this.f84146d + length])) {
            return 0;
        }
        this.f84146d += length;
        this.f84150h = i4;
        return i4;
    }

    private void d() throws IOException {
        if (!this.f84144b) {
            throw s0("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0095, code lost:
        if (y(r14) != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0097, code lost:
        if (r9 != 2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0099, code lost:
        if (r10 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009f, code lost:
        if (r11 != Long.MIN_VALUE) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a1, code lost:
        if (r13 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a7, code lost:
        if (r11 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a9, code lost:
        if (r13 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ab, code lost:
        if (r13 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ae, code lost:
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00af, code lost:
        r18.f84151i = r11;
        r18.f84146d += r8;
        r18.f84150h = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ba, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bb, code lost:
        if (r9 == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00be, code lost:
        if (r9 == 4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00c1, code lost:
        if (r9 != 7) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00c4, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c6, code lost:
        r18.f84152j = r8;
        r18.f84150h = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00cc, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00cd, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int d0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.d0():int");
    }

    private void g0(int i4) {
        int i10 = this.f84155m;
        int[] iArr = this.f84154l;
        if (i10 == iArr.length) {
            int i11 = i10 * 2;
            this.f84154l = Arrays.copyOf(iArr, i11);
            this.f84157o = Arrays.copyOf(this.f84157o, i11);
            this.f84156n = (String[]) Arrays.copyOf(this.f84156n, i11);
        }
        int[] iArr2 = this.f84154l;
        int i12 = this.f84155m;
        this.f84155m = i12 + 1;
        iArr2[i12] = i4;
    }

    private void h() throws IOException {
        J(true);
        int i4 = this.f84146d - 1;
        this.f84146d = i4;
        if (i4 + 5 <= this.f84147e || q(5)) {
            char[] cArr = this.f84145c;
            if (cArr[i4] == ')' && cArr[i4 + 1] == ']' && cArr[i4 + 2] == '}' && cArr[i4 + 3] == '\'' && cArr[i4 + 4] == '\n') {
                this.f84146d += 5;
            }
        }
    }

    private char h0() throws IOException {
        int i4;
        int i10;
        if (this.f84146d == this.f84147e && !q(1)) {
            throw s0("Unterminated escape sequence");
        }
        char[] cArr = this.f84145c;
        int i11 = this.f84146d;
        int i12 = i11 + 1;
        this.f84146d = i12;
        char c10 = cArr[i11];
        if (c10 == '\n') {
            this.f84148f++;
            this.f84149g = i12;
        } else if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
            if (c10 != 'b') {
                if (c10 != 'f') {
                    if (c10 != 'n') {
                        if (c10 != 'r') {
                            if (c10 != 't') {
                                if (c10 == 'u') {
                                    if (i12 + 4 > this.f84147e && !q(4)) {
                                        throw s0("Unterminated escape sequence");
                                    }
                                    char c11 = 0;
                                    int i13 = this.f84146d;
                                    int i14 = i13 + 4;
                                    while (i13 < i14) {
                                        char c12 = this.f84145c[i13];
                                        char c13 = (char) (c11 << 4);
                                        if (c12 < '0' || c12 > '9') {
                                            if (c12 >= 'a' && c12 <= 'f') {
                                                i4 = c12 - 'a';
                                            } else if (c12 < 'A' || c12 > 'F') {
                                                throw new NumberFormatException("\\u" + new String(this.f84145c, this.f84146d, 4));
                                            } else {
                                                i4 = c12 - 'A';
                                            }
                                            i10 = i4 + 10;
                                        } else {
                                            i10 = c12 - '0';
                                        }
                                        c11 = (char) (c13 + i10);
                                        i13++;
                                    }
                                    this.f84146d += 4;
                                    return c11;
                                }
                                throw s0("Invalid escape sequence");
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
        return c10;
    }

    private void n0(char c10) throws IOException {
        char[] cArr = this.f84145c;
        do {
            int i4 = this.f84146d;
            int i10 = this.f84147e;
            while (i4 < i10) {
                int i11 = i4 + 1;
                char c11 = cArr[i4];
                if (c11 == c10) {
                    this.f84146d = i11;
                    return;
                } else if (c11 == '\\') {
                    this.f84146d = i11;
                    h0();
                    i4 = this.f84146d;
                    i10 = this.f84147e;
                } else {
                    if (c11 == '\n') {
                        this.f84148f++;
                        this.f84149g = i11;
                    }
                    i4 = i11;
                }
            }
            this.f84146d = i4;
        } while (q(1));
        throw s0("Unterminated string");
    }

    private boolean o0(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f84146d + length > this.f84147e && !q(length)) {
                return false;
            }
            char[] cArr = this.f84145c;
            int i4 = this.f84146d;
            if (cArr[i4] != '\n') {
                for (int i10 = 0; i10 < length; i10++) {
                    if (this.f84145c[this.f84146d + i10] != str.charAt(i10)) {
                        break;
                    }
                }
                return true;
            }
            this.f84148f++;
            this.f84149g = i4 + 1;
            this.f84146d++;
        }
    }

    private void p0() throws IOException {
        char c10;
        do {
            if (this.f84146d >= this.f84147e && !q(1)) {
                return;
            }
            char[] cArr = this.f84145c;
            int i4 = this.f84146d;
            int i10 = i4 + 1;
            this.f84146d = i10;
            c10 = cArr[i4];
            if (c10 == '\n') {
                this.f84148f++;
                this.f84149g = i10;
                return;
            }
        } while (c10 != '\r');
    }

    private boolean q(int i4) throws IOException {
        int i10;
        int i11;
        char[] cArr = this.f84145c;
        int i12 = this.f84149g;
        int i13 = this.f84146d;
        this.f84149g = i12 - i13;
        int i14 = this.f84147e;
        if (i14 != i13) {
            int i15 = i14 - i13;
            this.f84147e = i15;
            System.arraycopy(cArr, i13, cArr, 0, i15);
        } else {
            this.f84147e = 0;
        }
        this.f84146d = 0;
        do {
            Reader reader = this.f84143a;
            int i16 = this.f84147e;
            int read = reader.read(cArr, i16, cArr.length - i16);
            if (read == -1) {
                return false;
            }
            i10 = this.f84147e + read;
            this.f84147e = i10;
            if (this.f84148f == 0 && (i11 = this.f84149g) == 0 && i10 > 0 && cArr[0] == 65279) {
                this.f84146d++;
                this.f84149g = i11 + 1;
                i4++;
                continue;
            }
        } while (i10 < i4);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
        d();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void q0() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f84146d
            int r2 = r1 + r0
            int r3 = r4.f84147e
            if (r2 >= r3) goto L51
            char[] r2 = r4.f84145c
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.d()
        L4b:
            int r1 = r4.f84146d
            int r1 = r1 + r0
            r4.f84146d = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f84146d = r1
            r0 = 1
            boolean r0 = r4.q(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.gson.stream.a.q0():void");
    }

    private IOException s0(String str) throws IOException {
        throw new MalformedJsonException(str + A());
    }

    private boolean y(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        d();
        return false;
    }

    String A() {
        return " at line " + (this.f84148f + 1) + " column " + ((this.f84146d - this.f84149g) + 1) + " path " + getPath();
    }

    public boolean D() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 5) {
            this.f84150h = 0;
            int[] iArr = this.f84157o;
            int i10 = this.f84155m - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        } else if (i4 == 6) {
            this.f84150h = 0;
            int[] iArr2 = this.f84157o;
            int i11 = this.f84155m - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + X() + A());
        }
    }

    public double E() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 15) {
            this.f84150h = 0;
            int[] iArr = this.f84157o;
            int i10 = this.f84155m - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f84151i;
        }
        if (i4 == 16) {
            this.f84153k = new String(this.f84145c, this.f84146d, this.f84152j);
            this.f84146d += this.f84152j;
        } else if (i4 == 8 || i4 == 9) {
            this.f84153k = L(i4 == 8 ? '\'' : '\"');
        } else if (i4 == 10) {
            this.f84153k = W();
        } else if (i4 != 11) {
            throw new IllegalStateException("Expected a double but was " + X() + A());
        }
        this.f84150h = 11;
        double parseDouble = Double.parseDouble(this.f84153k);
        if (!this.f84144b && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + A());
        }
        this.f84153k = null;
        this.f84150h = 0;
        int[] iArr2 = this.f84157o;
        int i11 = this.f84155m - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return parseDouble;
    }

    public int G() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 15) {
            long j4 = this.f84151i;
            int i10 = (int) j4;
            if (j4 == i10) {
                this.f84150h = 0;
                int[] iArr = this.f84157o;
                int i11 = this.f84155m - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new NumberFormatException("Expected an int but was " + this.f84151i + A());
        }
        if (i4 == 16) {
            this.f84153k = new String(this.f84145c, this.f84146d, this.f84152j);
            this.f84146d += this.f84152j;
        } else if (i4 != 8 && i4 != 9 && i4 != 10) {
            throw new IllegalStateException("Expected an int but was " + X() + A());
        } else {
            if (i4 == 10) {
                this.f84153k = W();
            } else {
                this.f84153k = L(i4 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f84153k);
                this.f84150h = 0;
                int[] iArr2 = this.f84157o;
                int i12 = this.f84155m - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f84150h = 11;
        double parseDouble = Double.parseDouble(this.f84153k);
        int i13 = (int) parseDouble;
        if (i13 == parseDouble) {
            this.f84153k = null;
            this.f84150h = 0;
            int[] iArr3 = this.f84157o;
            int i14 = this.f84155m - 1;
            iArr3[i14] = iArr3[i14] + 1;
            return i13;
        }
        throw new NumberFormatException("Expected an int but was " + this.f84153k + A());
    }

    public long H() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 15) {
            this.f84150h = 0;
            int[] iArr = this.f84157o;
            int i10 = this.f84155m - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f84151i;
        }
        if (i4 == 16) {
            this.f84153k = new String(this.f84145c, this.f84146d, this.f84152j);
            this.f84146d += this.f84152j;
        } else if (i4 != 8 && i4 != 9 && i4 != 10) {
            throw new IllegalStateException("Expected a long but was " + X() + A());
        } else {
            if (i4 == 10) {
                this.f84153k = W();
            } else {
                this.f84153k = L(i4 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f84153k);
                this.f84150h = 0;
                int[] iArr2 = this.f84157o;
                int i11 = this.f84155m - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f84150h = 11;
        double parseDouble = Double.parseDouble(this.f84153k);
        long j4 = (long) parseDouble;
        if (j4 == parseDouble) {
            this.f84153k = null;
            this.f84150h = 0;
            int[] iArr3 = this.f84157o;
            int i12 = this.f84155m - 1;
            iArr3[i12] = iArr3[i12] + 1;
            return j4;
        }
        throw new NumberFormatException("Expected a long but was " + this.f84153k + A());
    }

    public String I() throws IOException {
        String L2;
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 14) {
            L2 = W();
        } else if (i4 == 12) {
            L2 = L('\'');
        } else if (i4 == 13) {
            L2 = L('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + X() + A());
        }
        this.f84150h = 0;
        this.f84156n[this.f84155m - 1] = L2;
        return L2;
    }

    public void K() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 7) {
            this.f84150h = 0;
            int[] iArr = this.f84157o;
            int i10 = this.f84155m - 1;
            iArr[i10] = iArr[i10] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + X() + A());
    }

    public String M() throws IOException {
        String str;
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 10) {
            str = W();
        } else if (i4 == 8) {
            str = L('\'');
        } else if (i4 == 9) {
            str = L('\"');
        } else if (i4 == 11) {
            str = this.f84153k;
            this.f84153k = null;
        } else if (i4 == 15) {
            str = Long.toString(this.f84151i);
        } else if (i4 == 16) {
            str = new String(this.f84145c, this.f84146d, this.f84152j);
            this.f84146d += this.f84152j;
        } else {
            throw new IllegalStateException("Expected a string but was " + X() + A());
        }
        this.f84150h = 0;
        int[] iArr = this.f84157o;
        int i10 = this.f84155m - 1;
        iArr[i10] = iArr[i10] + 1;
        return str;
    }

    public JsonToken X() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        switch (i4) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public void a() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 3) {
            g0(1);
            this.f84157o[this.f84155m - 1] = 0;
            this.f84150h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + X() + A());
    }

    public void b() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 1) {
            g0(3);
            this.f84150h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + X() + A());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f84150h = 0;
        this.f84154l[0] = 8;
        this.f84155m = 1;
        this.f84143a.close();
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append(Typography.dollar);
        int i4 = this.f84155m;
        for (int i10 = 0; i10 < i4; i10++) {
            int i11 = this.f84154l[i10];
            if (i11 == 1 || i11 == 2) {
                sb.append('[');
                sb.append(this.f84157o[i10]);
                sb.append(']');
            } else if (i11 == 3 || i11 == 4 || i11 == 5) {
                sb.append('.');
                String[] strArr = this.f84156n;
                if (strArr[i10] != null) {
                    sb.append(strArr[i10]);
                }
            }
        }
        return sb.toString();
    }

    int i() throws IOException {
        int J2;
        int[] iArr = this.f84154l;
        int i4 = this.f84155m;
        int i10 = iArr[i4 - 1];
        if (i10 == 1) {
            iArr[i4 - 1] = 2;
        } else if (i10 == 2) {
            int J3 = J(true);
            if (J3 != 44) {
                if (J3 != 59) {
                    if (J3 == 93) {
                        this.f84150h = 4;
                        return 4;
                    }
                    throw s0("Unterminated array");
                }
                d();
            }
        } else if (i10 == 3 || i10 == 5) {
            iArr[i4 - 1] = 4;
            if (i10 == 5 && (J2 = J(true)) != 44) {
                if (J2 != 59) {
                    if (J2 == 125) {
                        this.f84150h = 2;
                        return 2;
                    }
                    throw s0("Unterminated object");
                }
                d();
            }
            int J4 = J(true);
            if (J4 == 34) {
                this.f84150h = 13;
                return 13;
            } else if (J4 == 39) {
                d();
                this.f84150h = 12;
                return 12;
            } else if (J4 == 125) {
                if (i10 != 5) {
                    this.f84150h = 2;
                    return 2;
                }
                throw s0("Expected name");
            } else {
                d();
                this.f84146d--;
                if (y((char) J4)) {
                    this.f84150h = 14;
                    return 14;
                }
                throw s0("Expected name");
            }
        } else if (i10 == 4) {
            iArr[i4 - 1] = 5;
            int J5 = J(true);
            if (J5 != 58) {
                if (J5 == 61) {
                    d();
                    if (this.f84146d < this.f84147e || q(1)) {
                        char[] cArr = this.f84145c;
                        int i11 = this.f84146d;
                        if (cArr[i11] == '>') {
                            this.f84146d = i11 + 1;
                        }
                    }
                } else {
                    throw s0("Expected ':'");
                }
            }
        } else if (i10 == 6) {
            if (this.f84144b) {
                h();
            }
            this.f84154l[this.f84155m - 1] = 7;
        } else if (i10 == 7) {
            if (J(false) == -1) {
                this.f84150h = 17;
                return 17;
            }
            d();
            this.f84146d--;
        } else if (i10 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int J6 = J(true);
        if (J6 == 34) {
            this.f84150h = 9;
            return 9;
        } else if (J6 == 39) {
            d();
            this.f84150h = 8;
            return 8;
        } else {
            if (J6 != 44 && J6 != 59) {
                if (J6 == 91) {
                    this.f84150h = 3;
                    return 3;
                } else if (J6 != 93) {
                    if (J6 != 123) {
                        this.f84146d--;
                        int b02 = b0();
                        if (b02 != 0) {
                            return b02;
                        }
                        int d02 = d0();
                        if (d02 != 0) {
                            return d02;
                        }
                        if (y(this.f84145c[this.f84146d])) {
                            d();
                            this.f84150h = 10;
                            return 10;
                        }
                        throw s0("Expected value");
                    }
                    this.f84150h = 1;
                    return 1;
                } else if (i10 == 1) {
                    this.f84150h = 4;
                    return 4;
                }
            }
            if (i10 != 1 && i10 != 2) {
                throw s0("Unexpected value");
            }
            d();
            this.f84146d--;
            this.f84150h = 7;
            return 7;
        }
    }

    public void k() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 4) {
            int i10 = this.f84155m - 1;
            this.f84155m = i10;
            int[] iArr = this.f84157o;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f84150h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + X() + A());
    }

    public final void l0(boolean z9) {
        this.f84144b = z9;
    }

    public void p() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        if (i4 == 2) {
            int i10 = this.f84155m - 1;
            this.f84155m = i10;
            this.f84156n[i10] = null;
            int[] iArr = this.f84157o;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f84150h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + X() + A());
    }

    public boolean r() throws IOException {
        int i4 = this.f84150h;
        if (i4 == 0) {
            i4 = i();
        }
        return (i4 == 2 || i4 == 4) ? false : true;
    }

    public void r0() throws IOException {
        int i4 = 0;
        do {
            int i10 = this.f84150h;
            if (i10 == 0) {
                i10 = i();
            }
            if (i10 == 3) {
                g0(1);
            } else if (i10 == 1) {
                g0(3);
            } else {
                if (i10 == 4) {
                    this.f84155m--;
                } else if (i10 == 2) {
                    this.f84155m--;
                } else {
                    if (i10 == 14 || i10 == 10) {
                        q0();
                    } else if (i10 == 8 || i10 == 12) {
                        n0('\'');
                    } else if (i10 == 9 || i10 == 13) {
                        n0('\"');
                    } else if (i10 == 16) {
                        this.f84146d += this.f84152j;
                    }
                    this.f84150h = 0;
                }
                i4--;
                this.f84150h = 0;
            }
            i4++;
            this.f84150h = 0;
        } while (i4 != 0);
        int[] iArr = this.f84157o;
        int i11 = this.f84155m;
        int i12 = i11 - 1;
        iArr[i12] = iArr[i12] + 1;
        this.f84156n[i11 - 1] = "null";
    }

    public final boolean s() {
        return this.f84144b;
    }

    public String toString() {
        return getClass().getSimpleName() + A();
    }
}
