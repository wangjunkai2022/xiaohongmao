package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: WriterBasedJsonGenerator.java */
/* loaded from: classes.dex */
public class k extends c {
    protected static final int M = 32;
    protected static final char[] N = com.fasterxml.jackson.core.io.b.d();
    protected final Writer D;
    protected char E;
    protected char[] F;
    protected int G;
    protected int H;
    protected int I;
    protected char[] J;
    protected com.fasterxml.jackson.core.j K;
    protected char[] L;

    @Deprecated
    public k(com.fasterxml.jackson.core.io.d dVar, int i4, com.fasterxml.jackson.core.h hVar, Writer writer) {
        this(dVar, i4, hVar, writer, '\"');
    }

    private void A2(short s9) throws IOException {
        if (this.H + 8 >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        int i10 = i4 + 1;
        this.H = i10;
        cArr[i4] = this.E;
        int r9 = com.fasterxml.jackson.core.io.h.r(s9, cArr, i10);
        char[] cArr2 = this.F;
        this.H = r9 + 1;
        cArr2[r9] = this.E;
    }

    private void B2(int i4) throws IOException {
        char[] cArr;
        char c10;
        int[] iArr = this.f14058w;
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < i4) {
            do {
                cArr = this.F;
                c10 = cArr[i10];
                if (c10 < length && iArr[c10] != 0) {
                    break;
                }
                i10++;
            } while (i10 < i4);
            int i12 = i10 - i11;
            if (i12 > 0) {
                this.D.write(cArr, i11, i12);
                if (i10 >= i4) {
                    return;
                }
            }
            i10++;
            i11 = j2(this.F, i10, i4, c10, iArr[c10]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0021 A[EDGE_INSN: B:26:0x0021->B:13:0x0021 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void C2(int r13, int r14) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r12 = this;
            int[] r0 = r12.f14058w
            int r1 = r0.length
            int r2 = r14 + 1
            int r1 = java.lang.Math.min(r1, r2)
            r2 = 0
            r3 = 0
            r4 = 0
        Lc:
            if (r2 >= r13) goto L3a
        Le:
            char[] r5 = r12.F
            char r10 = r5[r2]
            if (r10 >= r1) goto L19
            r4 = r0[r10]
            if (r4 == 0) goto L1d
            goto L21
        L19:
            if (r10 <= r14) goto L1d
            r4 = -1
            goto L21
        L1d:
            int r2 = r2 + 1
            if (r2 < r13) goto Le
        L21:
            int r6 = r2 - r3
            if (r6 <= 0) goto L2d
            java.io.Writer r7 = r12.D
            r7.write(r5, r3, r6)
            if (r2 < r13) goto L2d
            goto L3a
        L2d:
            int r2 = r2 + 1
            char[] r7 = r12.F
            r6 = r12
            r8 = r2
            r9 = r13
            r11 = r4
            int r3 = r6.j2(r7, r8, r9, r10, r11)
            goto Lc
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.k.C2(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0035 A[EDGE_INSN: B:31:0x0035->B:19:0x0035 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void D2(int r15) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r14 = this;
            int[] r0 = r14.f14058w
            int r1 = r14.f14059x
            r2 = 1
            if (r1 >= r2) goto La
            r1 = 65535(0xffff, float:9.1834E-41)
        La:
            int r2 = r0.length
            int r3 = r1 + 1
            int r2 = java.lang.Math.min(r2, r3)
            com.fasterxml.jackson.core.io.CharacterEscapes r3 = r14.f14060y
            r4 = 0
            r5 = 0
            r6 = 0
        L16:
            if (r4 >= r15) goto L50
        L18:
            char[] r7 = r14.F
            char r12 = r7[r4]
            if (r12 >= r2) goto L23
            r6 = r0[r12]
            if (r6 == 0) goto L31
            goto L35
        L23:
            if (r12 <= r1) goto L27
            r6 = -1
            goto L35
        L27:
            com.fasterxml.jackson.core.j r7 = r3.getEscapeSequence(r12)
            r14.K = r7
            if (r7 == 0) goto L31
            r6 = -2
            goto L35
        L31:
            int r4 = r4 + 1
            if (r4 < r15) goto L18
        L35:
            int r7 = r4 - r5
            if (r7 <= 0) goto L43
            java.io.Writer r8 = r14.D
            char[] r9 = r14.F
            r8.write(r9, r5, r7)
            if (r4 < r15) goto L43
            goto L50
        L43:
            int r4 = r4 + 1
            char[] r9 = r14.F
            r8 = r14
            r10 = r4
            r11 = r15
            r13 = r6
            int r5 = r8.j2(r9, r10, r11, r12, r13)
            goto L16
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.k.D2(int):void");
    }

    private void E2(String str) throws IOException {
        int length = str.length();
        int i4 = this.I;
        if (length > i4) {
            s2(str);
            return;
        }
        if (this.H + length > i4) {
            i2();
        }
        str.getChars(0, length, this.F, this.H);
        if (this.f14060y != null) {
            K2(length);
            return;
        }
        int i10 = this.f14059x;
        if (i10 != 0) {
            I2(length, i10);
        } else {
            G2(length);
        }
    }

    private void F2(char[] cArr, int i4, int i10) throws IOException {
        if (this.f14060y != null) {
            L2(cArr, i4, i10);
            return;
        }
        int i11 = this.f14059x;
        if (i11 != 0) {
            J2(cArr, i4, i10, i11);
            return;
        }
        int i12 = i10 + i4;
        int[] iArr = this.f14058w;
        int length = iArr.length;
        while (i4 < i12) {
            int i13 = i4;
            do {
                char c10 = cArr[i13];
                if (c10 < length && iArr[c10] != 0) {
                    break;
                }
                i13++;
            } while (i13 < i12);
            int i14 = i13 - i4;
            if (i14 < 32) {
                if (this.H + i14 > this.I) {
                    i2();
                }
                if (i14 > 0) {
                    System.arraycopy(cArr, i4, this.F, this.H, i14);
                    this.H += i14;
                }
            } else {
                i2();
                this.D.write(cArr, i4, i14);
            }
            if (i13 >= i12) {
                return;
            }
            i4 = i13 + 1;
            char c11 = cArr[i13];
            h2(c11, iArr[c11]);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        if (r3 <= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        r6.D.write(r2, r4, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
        r2 = r6.F;
        r3 = r6.H;
        r6.H = r3 + 1;
        r2 = r2[r3];
        k2(r2, r7[r2]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        r4 = r6.G;
        r3 = r3 - r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void G2(int r7) throws java.io.IOException {
        /*
            r6 = this;
            int r0 = r6.H
            int r0 = r0 + r7
            int[] r7 = r6.f14058w
            int r1 = r7.length
        L6:
            int r2 = r6.H
            if (r2 >= r0) goto L36
        La:
            char[] r2 = r6.F
            int r3 = r6.H
            char r4 = r2[r3]
            if (r4 >= r1) goto L30
            r4 = r7[r4]
            if (r4 == 0) goto L30
            int r4 = r6.G
            int r3 = r3 - r4
            if (r3 <= 0) goto L20
            java.io.Writer r5 = r6.D
            r5.write(r2, r4, r3)
        L20:
            char[] r2 = r6.F
            int r3 = r6.H
            int r4 = r3 + 1
            r6.H = r4
            char r2 = r2[r3]
            r3 = r7[r2]
            r6.k2(r2, r3)
            goto L6
        L30:
            int r3 = r3 + 1
            r6.H = r3
            if (r3 < r0) goto La
        L36:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.k.G2(int):void");
    }

    private void H2(com.fasterxml.jackson.core.j jVar) throws IOException {
        char[] asQuotedChars = jVar.asQuotedChars();
        int length = asQuotedChars.length;
        if (length < 32) {
            if (length > this.I - this.H) {
                i2();
            }
            System.arraycopy(asQuotedChars, 0, this.F, this.H, length);
            this.H += length;
        } else {
            i2();
            this.D.write(asQuotedChars, 0, length);
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = this.E;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void I2(int r9, int r10) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r8 = this;
            int r0 = r8.H
            int r0 = r0 + r9
            int[] r9 = r8.f14058w
            int r1 = r9.length
            int r2 = r10 + 1
            int r1 = java.lang.Math.min(r1, r2)
        Lc:
            int r2 = r8.H
            if (r2 >= r0) goto L3a
        L10:
            char[] r2 = r8.F
            int r3 = r8.H
            char r4 = r2[r3]
            if (r4 >= r1) goto L1d
            r5 = r9[r4]
            if (r5 == 0) goto L34
            goto L20
        L1d:
            if (r4 <= r10) goto L34
            r5 = -1
        L20:
            int r6 = r8.G
            int r3 = r3 - r6
            if (r3 <= 0) goto L2a
            java.io.Writer r7 = r8.D
            r7.write(r2, r6, r3)
        L2a:
            int r2 = r8.H
            int r2 = r2 + 1
            r8.H = r2
            r8.k2(r4, r5)
            goto Lc
        L34:
            int r3 = r3 + 1
            r8.H = r3
            if (r3 < r0) goto L10
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.k.I2(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x001f A[EDGE_INSN: B:30:0x001f->B:14:0x001f ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void J2(char[] r9, int r10, int r11, int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r8 = this;
            int r11 = r11 + r10
            int[] r0 = r8.f14058w
            int r1 = r0.length
            int r2 = r12 + 1
            int r1 = java.lang.Math.min(r1, r2)
            r2 = 0
        Lb:
            if (r10 >= r11) goto L4f
            r3 = r10
        Le:
            char r4 = r9[r3]
            if (r4 >= r1) goto L17
            r2 = r0[r4]
            if (r2 == 0) goto L1b
            goto L1f
        L17:
            if (r4 <= r12) goto L1b
            r2 = -1
            goto L1f
        L1b:
            int r3 = r3 + 1
            if (r3 < r11) goto Le
        L1f:
            int r5 = r3 - r10
            r6 = 32
            if (r5 >= r6) goto L3e
            int r6 = r8.H
            int r6 = r6 + r5
            int r7 = r8.I
            if (r6 <= r7) goto L2f
            r8.i2()
        L2f:
            if (r5 <= 0) goto L46
            char[] r6 = r8.F
            int r7 = r8.H
            java.lang.System.arraycopy(r9, r10, r6, r7, r5)
            int r10 = r8.H
            int r10 = r10 + r5
            r8.H = r10
            goto L46
        L3e:
            r8.i2()
            java.io.Writer r6 = r8.D
            r6.write(r9, r10, r5)
        L46:
            if (r3 < r11) goto L49
            goto L4f
        L49:
            int r10 = r3 + 1
            r8.h2(r4, r2)
            goto Lb
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.k.J2(char[], int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0052 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void K2(int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r11 = this;
            int r0 = r11.H
            int r0 = r0 + r12
            int[] r12 = r11.f14058w
            int r1 = r11.f14059x
            r2 = 1
            if (r1 >= r2) goto Ld
            r1 = 65535(0xffff, float:9.1834E-41)
        Ld:
            int r3 = r12.length
            int r4 = r1 + 1
            int r3 = java.lang.Math.min(r3, r4)
            com.fasterxml.jackson.core.io.CharacterEscapes r4 = r11.f14060y
        L16:
            int r5 = r11.H
            if (r5 >= r0) goto L52
        L1a:
            char[] r5 = r11.F
            int r6 = r11.H
            char r5 = r5[r6]
            if (r5 >= r3) goto L27
            r6 = r12[r5]
            if (r6 == 0) goto L4b
            goto L34
        L27:
            if (r5 <= r1) goto L2b
            r6 = -1
            goto L34
        L2b:
            com.fasterxml.jackson.core.j r6 = r4.getEscapeSequence(r5)
            r11.K = r6
            if (r6 == 0) goto L4b
            r6 = -2
        L34:
            int r7 = r11.H
            int r8 = r11.G
            int r7 = r7 - r8
            if (r7 <= 0) goto L42
            java.io.Writer r9 = r11.D
            char[] r10 = r11.F
            r9.write(r10, r8, r7)
        L42:
            int r7 = r11.H
            int r7 = r7 + r2
            r11.H = r7
            r11.k2(r5, r6)
            goto L16
        L4b:
            int r5 = r11.H
            int r5 = r5 + r2
            r11.H = r5
            if (r5 < r0) goto L1a
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.k.K2(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0033 A[EDGE_INSN: B:34:0x0033->B:20:0x0033 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void L2(char[] r11, int r12, int r13) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
            r10 = this;
            int r13 = r13 + r12
            int[] r0 = r10.f14058w
            int r1 = r10.f14059x
            r2 = 1
            if (r1 >= r2) goto Lb
            r1 = 65535(0xffff, float:9.1834E-41)
        Lb:
            int r2 = r0.length
            int r3 = r1 + 1
            int r2 = java.lang.Math.min(r2, r3)
            com.fasterxml.jackson.core.io.CharacterEscapes r3 = r10.f14060y
            r4 = 0
        L15:
            if (r12 >= r13) goto L63
            r5 = r12
        L18:
            char r6 = r11[r5]
            if (r6 >= r2) goto L21
            r4 = r0[r6]
            if (r4 == 0) goto L2f
            goto L33
        L21:
            if (r6 <= r1) goto L25
            r4 = -1
            goto L33
        L25:
            com.fasterxml.jackson.core.j r7 = r3.getEscapeSequence(r6)
            r10.K = r7
            if (r7 == 0) goto L2f
            r4 = -2
            goto L33
        L2f:
            int r5 = r5 + 1
            if (r5 < r13) goto L18
        L33:
            int r7 = r5 - r12
            r8 = 32
            if (r7 >= r8) goto L52
            int r8 = r10.H
            int r8 = r8 + r7
            int r9 = r10.I
            if (r8 <= r9) goto L43
            r10.i2()
        L43:
            if (r7 <= 0) goto L5a
            char[] r8 = r10.F
            int r9 = r10.H
            java.lang.System.arraycopy(r11, r12, r8, r9, r7)
            int r12 = r10.H
            int r12 = r12 + r7
            r10.H = r12
            goto L5a
        L52:
            r10.i2()
            java.io.Writer r8 = r10.D
            r8.write(r11, r12, r7)
        L5a:
            if (r5 < r13) goto L5d
            goto L63
        L5d:
            int r12 = r5 + 1
            r10.h2(r6, r4)
            goto L15
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.k.L2(char[], int, int):void");
    }

    private void M2(String str) throws IOException {
        int i4 = this.I;
        int i10 = this.H;
        int i11 = i4 - i10;
        str.getChars(0, i11, this.F, i10);
        this.H += i11;
        i2();
        int length = str.length() - i11;
        while (true) {
            int i12 = this.I;
            if (length > i12) {
                int i13 = i11 + i12;
                str.getChars(i11, i13, this.F, 0);
                this.G = 0;
                this.H = i12;
                i2();
                length -= i12;
                i11 = i13;
            } else {
                str.getChars(i11, i11 + length, this.F, 0);
                this.G = 0;
                this.H = length;
                return;
            }
        }
    }

    private char[] f2() {
        if (this.L == null) {
            this.L = this.f14057v.g(2000);
        }
        return this.L;
    }

    private char[] g2() {
        char[] cArr = {'\\', 0, '\\', 'u', '0', '0', 0, 0, '\\', 'u'};
        this.J = cArr;
        return cArr;
    }

    private void h2(char c10, int i4) throws IOException, JsonGenerationException {
        String value;
        int i10;
        if (i4 >= 0) {
            if (this.H + 2 > this.I) {
                i2();
            }
            char[] cArr = this.F;
            int i11 = this.H;
            int i12 = i11 + 1;
            this.H = i12;
            cArr[i11] = '\\';
            this.H = i12 + 1;
            cArr[i12] = (char) i4;
        } else if (i4 != -2) {
            if (this.H + 5 >= this.I) {
                i2();
            }
            int i13 = this.H;
            char[] cArr2 = this.F;
            int i14 = i13 + 1;
            cArr2[i13] = '\\';
            int i15 = i14 + 1;
            cArr2[i14] = 'u';
            if (c10 > 255) {
                int i16 = 255 & (c10 >> '\b');
                int i17 = i15 + 1;
                char[] cArr3 = N;
                cArr2[i15] = cArr3[i16 >> 4];
                i10 = i17 + 1;
                cArr2[i17] = cArr3[i16 & 15];
                c10 = (char) (c10 & 255);
            } else {
                int i18 = i15 + 1;
                cArr2[i15] = '0';
                i10 = i18 + 1;
                cArr2[i18] = '0';
            }
            int i19 = i10 + 1;
            char[] cArr4 = N;
            cArr2[i10] = cArr4[c10 >> 4];
            cArr2[i19] = cArr4[c10 & 15];
            this.H = i19 + 1;
        } else {
            com.fasterxml.jackson.core.j jVar = this.K;
            if (jVar == null) {
                value = this.f14060y.getEscapeSequence(c10).getValue();
            } else {
                value = jVar.getValue();
                this.K = null;
            }
            int length = value.length();
            if (this.H + length > this.I) {
                i2();
                if (length > this.I) {
                    this.D.write(value);
                    return;
                }
            }
            value.getChars(0, length, this.F, this.H);
            this.H += length;
        }
    }

    private int j2(char[] cArr, int i4, int i10, char c10, int i11) throws IOException, JsonGenerationException {
        String value;
        int i12;
        if (i11 >= 0) {
            if (i4 > 1 && i4 < i10) {
                int i13 = i4 - 2;
                cArr[i13] = '\\';
                cArr[i13 + 1] = (char) i11;
                return i13;
            }
            char[] cArr2 = this.J;
            if (cArr2 == null) {
                cArr2 = g2();
            }
            cArr2[1] = (char) i11;
            this.D.write(cArr2, 0, 2);
            return i4;
        } else if (i11 == -2) {
            com.fasterxml.jackson.core.j jVar = this.K;
            if (jVar == null) {
                value = this.f14060y.getEscapeSequence(c10).getValue();
            } else {
                value = jVar.getValue();
                this.K = null;
            }
            int length = value.length();
            if (i4 >= length && i4 < i10) {
                int i14 = i4 - length;
                value.getChars(0, length, cArr, i14);
                return i14;
            }
            this.D.write(value);
            return i4;
        } else if (i4 > 5 && i4 < i10) {
            int i15 = i4 - 6;
            int i16 = i15 + 1;
            cArr[i15] = '\\';
            int i17 = i16 + 1;
            cArr[i16] = 'u';
            if (c10 > 255) {
                int i18 = (c10 >> '\b') & 255;
                int i19 = i17 + 1;
                char[] cArr3 = N;
                cArr[i17] = cArr3[i18 >> 4];
                i12 = i19 + 1;
                cArr[i19] = cArr3[i18 & 15];
                c10 = (char) (c10 & 255);
            } else {
                int i20 = i17 + 1;
                cArr[i17] = '0';
                i12 = i20 + 1;
                cArr[i20] = '0';
            }
            int i21 = i12 + 1;
            char[] cArr4 = N;
            cArr[i12] = cArr4[c10 >> 4];
            cArr[i21] = cArr4[c10 & 15];
            return i21 - 5;
        } else {
            char[] cArr5 = this.J;
            if (cArr5 == null) {
                cArr5 = g2();
            }
            this.G = this.H;
            if (c10 > 255) {
                int i22 = (c10 >> '\b') & 255;
                int i23 = c10 & 255;
                char[] cArr6 = N;
                cArr5[10] = cArr6[i22 >> 4];
                cArr5[11] = cArr6[i22 & 15];
                cArr5[12] = cArr6[i23 >> 4];
                cArr5[13] = cArr6[i23 & 15];
                this.D.write(cArr5, 8, 6);
                return i4;
            }
            char[] cArr7 = N;
            cArr5[6] = cArr7[c10 >> 4];
            cArr5[7] = cArr7[c10 & 15];
            this.D.write(cArr5, 2, 6);
            return i4;
        }
    }

    private void k2(char c10, int i4) throws IOException, JsonGenerationException {
        String value;
        int i10;
        if (i4 >= 0) {
            int i11 = this.H;
            if (i11 >= 2) {
                int i12 = i11 - 2;
                this.G = i12;
                char[] cArr = this.F;
                cArr[i12] = '\\';
                cArr[i12 + 1] = (char) i4;
                return;
            }
            char[] cArr2 = this.J;
            if (cArr2 == null) {
                cArr2 = g2();
            }
            this.G = this.H;
            cArr2[1] = (char) i4;
            this.D.write(cArr2, 0, 2);
        } else if (i4 != -2) {
            int i13 = this.H;
            if (i13 >= 6) {
                char[] cArr3 = this.F;
                int i14 = i13 - 6;
                this.G = i14;
                cArr3[i14] = '\\';
                int i15 = i14 + 1;
                cArr3[i15] = 'u';
                if (c10 > 255) {
                    int i16 = (c10 >> '\b') & 255;
                    int i17 = i15 + 1;
                    char[] cArr4 = N;
                    cArr3[i17] = cArr4[i16 >> 4];
                    i10 = i17 + 1;
                    cArr3[i10] = cArr4[i16 & 15];
                    c10 = (char) (c10 & 255);
                } else {
                    int i18 = i15 + 1;
                    cArr3[i18] = '0';
                    i10 = i18 + 1;
                    cArr3[i10] = '0';
                }
                int i19 = i10 + 1;
                char[] cArr5 = N;
                cArr3[i19] = cArr5[c10 >> 4];
                cArr3[i19 + 1] = cArr5[c10 & 15];
                return;
            }
            char[] cArr6 = this.J;
            if (cArr6 == null) {
                cArr6 = g2();
            }
            this.G = this.H;
            if (c10 > 255) {
                int i20 = (c10 >> '\b') & 255;
                int i21 = c10 & 255;
                char[] cArr7 = N;
                cArr6[10] = cArr7[i20 >> 4];
                cArr6[11] = cArr7[i20 & 15];
                cArr6[12] = cArr7[i21 >> 4];
                cArr6[13] = cArr7[i21 & 15];
                this.D.write(cArr6, 8, 6);
                return;
            }
            char[] cArr8 = N;
            cArr6[6] = cArr8[c10 >> 4];
            cArr6[7] = cArr8[c10 & 15];
            this.D.write(cArr6, 2, 6);
        } else {
            com.fasterxml.jackson.core.j jVar = this.K;
            if (jVar == null) {
                value = this.f14060y.getEscapeSequence(c10).getValue();
            } else {
                value = jVar.getValue();
                this.K = null;
            }
            int length = value.length();
            int i22 = this.H;
            if (i22 >= length) {
                int i23 = i22 - length;
                this.G = i23;
                value.getChars(0, length, this.F, i23);
                return;
            }
            this.G = i22;
            this.D.write(value);
        }
    }

    private int l2(InputStream inputStream, byte[] bArr, int i4, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i4 < i10) {
            bArr[i12] = bArr[i4];
            i12++;
            i4++;
        }
        int min = Math.min(i11, bArr.length);
        do {
            int i13 = min - i12;
            if (i13 == 0) {
                break;
            }
            int read = inputStream.read(bArr, i12, i13);
            if (read < 0) {
                return i12;
            }
            i12 += read;
        } while (i12 < 3);
        return i12;
    }

    private final void r2(com.fasterxml.jackson.core.j jVar) throws IOException {
        char[] asQuotedChars = jVar.asQuotedChars();
        A1(asQuotedChars, 0, asQuotedChars.length);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = this.E;
    }

    private void s2(String str) throws IOException {
        i2();
        int length = str.length();
        int i4 = 0;
        while (true) {
            int i10 = this.I;
            if (i4 + i10 > length) {
                i10 = length - i4;
            }
            int i11 = i4 + i10;
            str.getChars(i4, i11, this.F, 0);
            if (this.f14060y != null) {
                D2(i10);
            } else {
                int i12 = this.f14059x;
                if (i12 != 0) {
                    C2(i10, i12);
                } else {
                    B2(i10);
                }
            }
            if (i11 >= length) {
                return;
            }
            i4 = i11;
        }
    }

    private final void t2() throws IOException {
        if (this.H + 4 >= this.I) {
            i2();
        }
        int i4 = this.H;
        char[] cArr = this.F;
        cArr[i4] = 'n';
        int i10 = i4 + 1;
        cArr[i10] = 'u';
        int i11 = i10 + 1;
        cArr[i11] = 'l';
        int i12 = i11 + 1;
        cArr[i12] = 'l';
        this.H = i12 + 1;
    }

    private void w2(int i4) throws IOException {
        if (this.H + 13 >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i10 = this.H;
        int i11 = i10 + 1;
        this.H = i11;
        cArr[i10] = this.E;
        int r9 = com.fasterxml.jackson.core.io.h.r(i4, cArr, i11);
        char[] cArr2 = this.F;
        this.H = r9 + 1;
        cArr2[r9] = this.E;
    }

    private void x2(long j4) throws IOException {
        if (this.H + 23 >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        int i10 = i4 + 1;
        this.H = i10;
        cArr[i4] = this.E;
        int t9 = com.fasterxml.jackson.core.io.h.t(j4, cArr, i10);
        char[] cArr2 = this.F;
        this.H = t9 + 1;
        cArr2[t9] = this.E;
    }

    private void y2(String str) throws IOException {
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = this.E;
        y1(str);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i10 = this.H;
        this.H = i10 + 1;
        cArr2[i10] = this.E;
    }

    private void z2(char[] cArr, int i4, int i10) throws IOException {
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i11 = this.H;
        this.H = i11 + 1;
        cArr2[i11] = this.E;
        A1(cArr, i4, i10);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr3 = this.F;
        int i12 = this.H;
        this.H = i12 + 1;
        cArr3[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void A1(char[] cArr, int i4, int i10) throws IOException {
        if (i10 < 32) {
            if (i10 > this.I - this.H) {
                i2();
            }
            System.arraycopy(cArr, i4, this.F, this.H, i10);
            this.H += i10;
            return;
        }
        i2();
        this.D.write(cArr, i4, i10);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void B1(byte[] bArr, int i4, int i10) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void G1() throws IOException {
        c2("start an array");
        this.f13782h = this.f13782h.u();
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartArray(this);
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = '[';
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public int I0(Base64Variant base64Variant, InputStream inputStream, int i4) throws IOException, JsonGenerationException {
        c2("write a binary value");
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i10 = this.H;
        this.H = i10 + 1;
        cArr[i10] = this.E;
        byte[] d4 = this.f14057v.d();
        try {
            if (i4 < 0) {
                i4 = m2(base64Variant, inputStream, d4);
            } else {
                int n22 = n2(base64Variant, inputStream, d4, i4);
                if (n22 > 0) {
                    b("Too few bytes available: missing " + n22 + " bytes (out of " + i4 + ")");
                }
            }
            this.f14057v.s(d4);
            if (this.H >= this.I) {
                i2();
            }
            char[] cArr2 = this.F;
            int i11 = this.H;
            this.H = i11 + 1;
            cArr2[i11] = this.E;
            return i4;
        } catch (Throwable th) {
            this.f14057v.s(d4);
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void I1(Object obj) throws IOException {
        c2("start an array");
        this.f13782h = this.f13782h.v(obj);
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartArray(this);
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void J1(Object obj, int i4) throws IOException {
        c2("start an array");
        this.f13782h = this.f13782h.v(obj);
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartArray(this);
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i10 = this.H;
        this.H = i10 + 1;
        cArr[i10] = '[';
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void K0(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException, JsonGenerationException {
        c2("write a binary value");
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i11 = this.H;
        this.H = i11 + 1;
        cArr[i11] = this.E;
        o2(base64Variant, bArr, i4, i10 + i4);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i12 = this.H;
        this.H = i12 + 1;
        cArr2[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void K1() throws IOException {
        c2("start an object");
        this.f13782h = this.f13782h.w();
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartObject(this);
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = '{';
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public void L1(Object obj) throws IOException {
        c2("start an object");
        this.f13782h = this.f13782h.x(obj);
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartObject(this);
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = '{';
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public void N1(com.fasterxml.jackson.core.j jVar) throws IOException {
        c2("write a string");
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        int i10 = i4 + 1;
        this.H = i10;
        cArr[i4] = this.E;
        int appendQuoted = jVar.appendQuoted(cArr, i10);
        if (appendQuoted < 0) {
            H2(jVar);
            return;
        }
        int i11 = this.H + appendQuoted;
        this.H = i11;
        if (i11 >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i12 = this.H;
        this.H = i12 + 1;
        cArr2[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void O0(boolean z9) throws IOException {
        int i4;
        c2("write a boolean value");
        if (this.H + 5 >= this.I) {
            i2();
        }
        int i10 = this.H;
        char[] cArr = this.F;
        if (z9) {
            cArr[i10] = 't';
            int i11 = i10 + 1;
            cArr[i11] = 'r';
            int i12 = i11 + 1;
            cArr[i12] = 'u';
            i4 = i12 + 1;
            cArr[i4] = 'e';
        } else {
            cArr[i10] = 'f';
            int i13 = i10 + 1;
            cArr[i13] = 'a';
            int i14 = i13 + 1;
            cArr[i14] = 'l';
            int i15 = i14 + 1;
            cArr[i15] = 's';
            i4 = i15 + 1;
            cArr[i4] = 'e';
        }
        this.H = i4 + 1;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void O1(Reader reader, int i4) throws IOException {
        c2("write a string");
        if (reader == null) {
            b("null reader");
            return;
        }
        int i10 = i4 >= 0 ? i4 : Integer.MAX_VALUE;
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i11 = this.H;
        this.H = i11 + 1;
        cArr[i11] = this.E;
        char[] f22 = f2();
        while (i10 > 0) {
            int read = reader.read(f22, 0, Math.min(i10, f22.length));
            if (read <= 0) {
                break;
            }
            F2(f22, 0, read);
            i10 -= read;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i12 = this.H;
        this.H = i12 + 1;
        cArr2[i12] = this.E;
        if (i10 <= 0 || i4 < 0) {
            return;
        }
        b("Didn't read enough from reader");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void P1(String str) throws IOException {
        c2("write a string");
        if (str == null) {
            t2();
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = this.E;
        E2(str);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i10 = this.H;
        this.H = i10 + 1;
        cArr2[i10] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Q1(char[] cArr, int i4, int i10) throws IOException {
        c2("write a string");
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i11 = this.H;
        this.H = i11 + 1;
        cArr2[i11] = this.E;
        F2(cArr, i4, i10);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr3 = this.F;
        int i12 = this.H;
        this.H = i12 + 1;
        cArr3[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void R0() throws IOException {
        if (!this.f13782h.k()) {
            b("Current context not Array but " + this.f13782h.r());
        }
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeEndArray(this, this.f13782h.d());
        } else {
            if (this.H >= this.I) {
                i2();
            }
            char[] cArr = this.F;
            int i4 = this.H;
            this.H = i4 + 1;
            cArr[i4] = ']';
        }
        this.f13782h = this.f13782h.t();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void S0() throws IOException {
        if (!this.f13782h.l()) {
            b("Current context not Object but " + this.f13782h.r());
        }
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeEndObject(this, this.f13782h.d());
        } else {
            if (this.H >= this.I) {
                i2();
            }
            char[] cArr = this.F;
            int i4 = this.H;
            this.H = i4 + 1;
            cArr[i4] = '}';
        }
        this.f13782h = this.f13782h.t();
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public void U0(com.fasterxml.jackson.core.j jVar) throws IOException {
        int F = this.f13782h.F(jVar.getValue());
        if (F == 4) {
            b("Can not write a field name, expecting a value");
        }
        p2(jVar, F == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void V0(String str) throws IOException {
        int F = this.f13782h.F(str);
        if (F == 4) {
            b("Can not write a field name, expecting a value");
        }
        q2(str, F == 1);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W0() throws IOException {
        c2("write a null");
        t2();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W1(byte[] bArr, int i4, int i10) throws IOException {
        d();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Y0(double d4) throws IOException {
        if (!this.f13781g && (!com.fasterxml.jackson.core.io.h.o(d4) || !q0(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            c2("write a number");
            y1(String.valueOf(d4));
            return;
        }
        P1(String.valueOf(d4));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Z0(float f10) throws IOException {
        if (!this.f13781g && (!com.fasterxml.jackson.core.io.h.p(f10) || !q0(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            c2("write a number");
            y1(String.valueOf(f10));
            return;
        }
        P1(String.valueOf(f10));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void a1(int i4) throws IOException {
        c2("write a number");
        if (this.f13781g) {
            w2(i4);
            return;
        }
        if (this.H + 11 >= this.I) {
            i2();
        }
        this.H = com.fasterxml.jackson.core.io.h.r(i4, this.F, this.H);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void b1(long j4) throws IOException {
        c2("write a number");
        if (this.f13781g) {
            x2(j4);
            return;
        }
        if (this.H + 21 >= this.I) {
            i2();
        }
        this.H = com.fasterxml.jackson.core.io.h.t(j4, this.F, this.H);
    }

    @Override // com.fasterxml.jackson.core.base.a
    protected void b2() {
        char[] cArr = this.F;
        if (cArr != null) {
            this.F = null;
            this.f14057v.t(cArr);
        }
        char[] cArr2 = this.L;
        if (cArr2 != null) {
            this.L = null;
            this.f14057v.u(cArr2);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void c1(String str) throws IOException {
        c2("write a number");
        if (str == null) {
            t2();
        } else if (this.f13781g) {
            y2(str);
        } else {
            y1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.base.a
    protected final void c2(String str) throws IOException {
        char c10;
        int G = this.f13782h.G();
        if (this.f13698a != null) {
            e2(str, G);
            return;
        }
        if (G == 1) {
            c10 = ',';
        } else if (G != 2) {
            if (G != 3) {
                if (G != 5) {
                    return;
                }
                d2(str);
                return;
            }
            com.fasterxml.jackson.core.j jVar = this.f14061z;
            if (jVar != null) {
                y1(jVar.getValue());
                return;
            }
            return;
        } else {
            c10 = ':';
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = c10;
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.F != null && q0(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                com.fasterxml.jackson.core.f h02 = h0();
                if (h02.k()) {
                    R0();
                } else if (!h02.l()) {
                    break;
                } else {
                    S0();
                }
            }
        }
        i2();
        this.G = 0;
        this.H = 0;
        if (this.D != null) {
            if (!this.f14057v.r() && !q0(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                if (q0(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                    this.D.flush();
                }
            } else {
                this.D.close();
            }
        }
        b2();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void d1(BigDecimal bigDecimal) throws IOException {
        c2("write a number");
        if (bigDecimal == null) {
            t2();
        } else if (this.f13781g) {
            y2(X1(bigDecimal));
        } else {
            y1(X1(bigDecimal));
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void e1(BigInteger bigInteger) throws IOException {
        c2("write a number");
        if (bigInteger == null) {
            t2();
        } else if (this.f13781g) {
            y2(bigInteger.toString());
        } else {
            y1(bigInteger.toString());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void f1(short s9) throws IOException {
        c2("write a number");
        if (this.f13781g) {
            A2(s9);
            return;
        }
        if (this.H + 6 >= this.I) {
            i2();
        }
        this.H = com.fasterxml.jackson.core.io.h.r(s9, this.F, this.H);
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        i2();
        if (this.D == null || !q0(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this.D.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int g0() {
        return Math.max(0, this.H - this.G);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void g1(char[] cArr, int i4, int i10) throws IOException {
        c2("write a number");
        if (this.f13781g) {
            z2(cArr, i4, i10);
        } else {
            A1(cArr, i4, i10);
        }
    }

    protected void i2() throws IOException {
        int i4 = this.H;
        int i10 = this.G;
        int i11 = i4 - i10;
        if (i11 > 0) {
            this.G = 0;
            this.H = 0;
            this.D.write(this.F, i10, i11);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object l0() {
        return this.D;
    }

    protected final int m2(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int i4 = this.I - 6;
        int i10 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i11 = -3;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i12 > i11) {
                i13 = l2(inputStream, bArr, i12, i13, bArr.length);
                if (i13 < 3) {
                    break;
                }
                i11 = i13 - 3;
                i12 = 0;
            }
            if (this.H > i4) {
                i2();
            }
            int i15 = i12 + 1;
            int i16 = i15 + 1;
            i12 = i16 + 1;
            i14 += 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i15] & 255) | (bArr[i12] << 8)) << 8) | (bArr[i16] & 255), this.F, this.H);
            this.H = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                char[] cArr = this.F;
                int i17 = encodeBase64Chunk + 1;
                this.H = i17;
                cArr[encodeBase64Chunk] = '\\';
                this.H = i17 + 1;
                cArr[i17] = 'n';
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i13 > 0) {
            if (this.H > i4) {
                i2();
            }
            int i18 = bArr[0] << 16;
            if (1 < i13) {
                i18 |= (bArr[1] & 255) << 8;
            } else {
                i10 = 1;
            }
            int i19 = i14 + i10;
            this.H = base64Variant.encodeBase64Partial(i18, i10, this.F, this.H);
            return i19;
        }
        return i14;
    }

    protected final int n2(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i4) throws IOException, JsonGenerationException {
        int l22;
        int i10 = this.I - 6;
        int i11 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i12 = -3;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i4 <= 2) {
                break;
            }
            if (i13 > i12) {
                i14 = l2(inputStream, bArr, i13, i14, i4);
                if (i14 < 3) {
                    i13 = 0;
                    break;
                }
                i12 = i14 - 3;
                i13 = 0;
            }
            if (this.H > i10) {
                i2();
            }
            int i15 = i13 + 1;
            int i16 = i15 + 1;
            i13 = i16 + 1;
            i4 -= 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i15] & 255) | (bArr[i13] << 8)) << 8) | (bArr[i16] & 255), this.F, this.H);
            this.H = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                char[] cArr = this.F;
                int i17 = encodeBase64Chunk + 1;
                this.H = i17;
                cArr[encodeBase64Chunk] = '\\';
                this.H = i17 + 1;
                cArr[i17] = 'n';
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i4 <= 0 || (l22 = l2(inputStream, bArr, i13, i14, i4)) <= 0) {
            return i4;
        }
        if (this.H > i10) {
            i2();
        }
        int i18 = bArr[0] << 16;
        if (1 < l22) {
            i18 |= (bArr[1] & 255) << 8;
        } else {
            i11 = 1;
        }
        this.H = base64Variant.encodeBase64Partial(i18, i11, this.F, this.H);
        return i4 - i11;
    }

    protected final void o2(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException, JsonGenerationException {
        int i11 = i10 - 3;
        int i12 = this.I - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i4 <= i11) {
            if (this.H > i12) {
                i2();
            }
            int i13 = i4 + 1;
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i4] << 8) | (bArr[i13] & 255)) << 8) | (bArr[i14] & 255), this.F, this.H);
            this.H = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                char[] cArr = this.F;
                int i16 = encodeBase64Chunk + 1;
                this.H = i16;
                cArr[encodeBase64Chunk] = '\\';
                this.H = i16 + 1;
                cArr[i16] = 'n';
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            i4 = i15;
        }
        int i17 = i10 - i4;
        if (i17 > 0) {
            if (this.H > i12) {
                i2();
            }
            int i18 = i4 + 1;
            int i19 = bArr[i4] << 16;
            if (i17 == 2) {
                i19 |= (bArr[i18] & 255) << 8;
            }
            this.H = base64Variant.encodeBase64Partial(i19, i17, this.F, this.H);
        }
    }

    protected final void p2(com.fasterxml.jackson.core.j jVar, boolean z9) throws IOException {
        if (this.f13698a != null) {
            u2(jVar, z9);
            return;
        }
        if (this.H + 1 >= this.I) {
            i2();
        }
        if (z9) {
            char[] cArr = this.F;
            int i4 = this.H;
            this.H = i4 + 1;
            cArr[i4] = ',';
        }
        if (this.A) {
            char[] asQuotedChars = jVar.asQuotedChars();
            A1(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        char[] cArr2 = this.F;
        int i10 = this.H;
        int i11 = i10 + 1;
        this.H = i11;
        cArr2[i10] = this.E;
        int appendQuoted = jVar.appendQuoted(cArr2, i11);
        if (appendQuoted < 0) {
            r2(jVar);
            return;
        }
        int i12 = this.H + appendQuoted;
        this.H = i12;
        if (i12 >= this.I) {
            i2();
        }
        char[] cArr3 = this.F;
        int i13 = this.H;
        this.H = i13 + 1;
        cArr3[i13] = this.E;
    }

    protected final void q2(String str, boolean z9) throws IOException {
        if (this.f13698a != null) {
            v2(str, z9);
            return;
        }
        if (this.H + 1 >= this.I) {
            i2();
        }
        if (z9) {
            char[] cArr = this.F;
            int i4 = this.H;
            this.H = i4 + 1;
            cArr[i4] = ',';
        }
        if (this.A) {
            E2(str);
            return;
        }
        char[] cArr2 = this.F;
        int i10 = this.H;
        this.H = i10 + 1;
        cArr2[i10] = this.E;
        E2(str);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr3 = this.F;
        int i11 = this.H;
        this.H = i11 + 1;
        cArr3[i11] = this.E;
    }

    protected final void u2(com.fasterxml.jackson.core.j jVar, boolean z9) throws IOException {
        if (z9) {
            this.f13698a.writeObjectEntrySeparator(this);
        } else {
            this.f13698a.beforeObjectEntries(this);
        }
        char[] asQuotedChars = jVar.asQuotedChars();
        if (this.A) {
            A1(asQuotedChars, 0, asQuotedChars.length);
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = this.E;
        A1(asQuotedChars, 0, asQuotedChars.length);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i10 = this.H;
        this.H = i10 + 1;
        cArr2[i10] = this.E;
    }

    protected final void v2(String str, boolean z9) throws IOException {
        if (z9) {
            this.f13698a.writeObjectEntrySeparator(this);
        } else {
            this.f13698a.beforeObjectEntries(this);
        }
        if (this.A) {
            E2(str);
            return;
        }
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = this.E;
        E2(str);
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr2 = this.F;
        int i10 = this.H;
        this.H = i10 + 1;
        cArr2[i10] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void w1(char c10) throws IOException {
        if (this.H >= this.I) {
            i2();
        }
        char[] cArr = this.F;
        int i4 = this.H;
        this.H = i4 + 1;
        cArr[i4] = c10;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void x1(com.fasterxml.jackson.core.j jVar) throws IOException {
        int appendUnquoted = jVar.appendUnquoted(this.F, this.H);
        if (appendUnquoted < 0) {
            y1(jVar.getValue());
        } else {
            this.H += appendUnquoted;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean y() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void y1(String str) throws IOException {
        int length = str.length();
        int i4 = this.I - this.H;
        if (i4 == 0) {
            i2();
            i4 = this.I - this.H;
        }
        if (i4 >= length) {
            str.getChars(0, length, this.F, this.H);
            this.H += length;
            return;
        }
        M2(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void z1(String str, int i4, int i10) throws IOException {
        int i11 = this.I - this.H;
        if (i11 < i10) {
            i2();
            i11 = this.I - this.H;
        }
        if (i11 >= i10) {
            str.getChars(i4, i4 + i10, this.F, this.H);
            this.H += i10;
            return;
        }
        M2(str.substring(i4, i10 + i4));
    }

    public k(com.fasterxml.jackson.core.io.d dVar, int i4, com.fasterxml.jackson.core.h hVar, Writer writer, char c10) {
        super(dVar, i4, hVar);
        this.D = writer;
        char[] f10 = dVar.f();
        this.F = f10;
        this.I = f10.length;
        this.E = c10;
        if (c10 != '\"') {
            this.f14058w = com.fasterxml.jackson.core.io.b.f(c10);
        }
    }
}
