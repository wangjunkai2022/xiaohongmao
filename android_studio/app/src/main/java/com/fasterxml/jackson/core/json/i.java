package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.google.android.exoplayer2.extractor.ts.a0;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: UTF8JsonGenerator.java */
/* loaded from: classes.dex */
public class i extends c {
    private static final byte O = 48;
    private static final byte P = 91;
    private static final byte Q = 93;
    private static final byte R = 123;
    private static final byte S = 125;
    private static final byte T = 92;
    private static final byte U = 44;
    private static final byte V = 58;
    private static final int W = 512;
    protected final OutputStream D;
    protected byte E;
    protected byte[] F;
    protected int G;
    protected final int H;
    protected final int I;
    protected char[] J;
    protected final int K;
    protected byte[] L;
    protected boolean M;

    /* renamed from: b1  reason: collision with root package name */
    private static final byte[] f14119b1 = com.fasterxml.jackson.core.io.b.c();
    private static final byte N = 117;

    /* renamed from: g1  reason: collision with root package name */
    private static final byte[] f14120g1 = {110, N, 108, 108};

    /* renamed from: p1  reason: collision with root package name */
    private static final byte[] f14121p1 = {116, 114, N, 101};

    /* renamed from: x1  reason: collision with root package name */
    private static final byte[] f14122x1 = {102, 97, 108, 115, 101};

    public i(com.fasterxml.jackson.core.io.d dVar, int i4, com.fasterxml.jackson.core.h hVar, OutputStream outputStream, char c10) {
        super(dVar, i4, hVar);
        this.D = outputStream;
        this.E = (byte) c10;
        if (c10 != '\"') {
            this.f14058w = com.fasterxml.jackson.core.io.b.f(c10);
        }
        this.M = true;
        byte[] l10 = dVar.l();
        this.F = l10;
        int length = l10.length;
        this.H = length;
        this.I = length >> 3;
        char[] f10 = dVar.f();
        this.J = f10;
        this.K = f10.length;
        if (q0(JsonGenerator.Feature.ESCAPE_NON_ASCII)) {
            y0(127);
        }
    }

    private void A2(char[] cArr, int i4, int i10) throws IOException {
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i11 = this.G;
        this.G = i11 + 1;
        bArr[i11] = this.E;
        A1(cArr, i4, i10);
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i12 = this.G;
        this.G = i12 + 1;
        bArr2[i12] = this.E;
    }

    private final void B2(short s9) throws IOException {
        if (this.G + 8 >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        int i10 = i4 + 1;
        this.G = i10;
        bArr[i4] = this.E;
        int q9 = com.fasterxml.jackson.core.io.h.q(s9, bArr, i10);
        byte[] bArr2 = this.F;
        this.G = q9 + 1;
        bArr2[q9] = this.E;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0008, code lost:
        r0 = r7 + 1;
        r7 = r6[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
        if (r7 >= 2048) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
        r1 = r5.F;
        r2 = r5.G;
        r3 = r2 + 1;
        r5.G = r3;
        r1[r2] = (byte) ((r7 >> 6) | 192);
        r5.G = r3 + 1;
        r1[r3] = (byte) ((r7 & '?') | 128);
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
        r7 = i2(r7, r6, r0, r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void C2(char[] r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
        L0:
            if (r7 >= r8) goto L40
        L2:
            char r0 = r6[r7]
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 <= r1) goto L31
            int r0 = r7 + 1
            char r7 = r6[r7]
            r1 = 2048(0x800, float:2.87E-42)
            if (r7 >= r1) goto L2c
            byte[] r1 = r5.F
            int r2 = r5.G
            int r3 = r2 + 1
            r5.G = r3
            int r4 = r7 >> 6
            r4 = r4 | 192(0xc0, float:2.69E-43)
            byte r4 = (byte) r4
            r1[r2] = r4
            int r2 = r3 + 1
            r5.G = r2
            r7 = r7 & 63
            r7 = r7 | 128(0x80, float:1.794E-43)
            byte r7 = (byte) r7
            r1[r3] = r7
            r7 = r0
            goto L0
        L2c:
            int r7 = r5.i2(r7, r6, r0, r8)
            goto L0
        L31:
            byte[] r1 = r5.F
            int r2 = r5.G
            int r3 = r2 + 1
            r5.G = r3
            byte r0 = (byte) r0
            r1[r2] = r0
            int r7 = r7 + 1
            if (r7 < r8) goto L2
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.i.C2(char[], int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        if (r9 >= 2048) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
        r4 = r7.G;
        r5 = r4 + 1;
        r7.G = r5;
        r1[r4] = (byte) ((r9 >> 6) | 192);
        r7.G = r5 + 1;
        r1[r5] = (byte) ((r9 & '?') | 128);
        r9 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        r9 = i2(r9, r8, r2, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if ((r7.G + 3) < r7.H) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        f2();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        r2 = r9 + 1;
        r9 = r8[r9];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void D2(char[] r8, int r9, int r10) throws java.io.IOException {
        /*
            r7 = this;
            int r0 = r7.H
            byte[] r1 = r7.F
            int r10 = r10 + r9
        L5:
            if (r9 >= r10) goto L52
        L7:
            char r2 = r8[r9]
            r3 = 128(0x80, float:1.794E-43)
            if (r2 < r3) goto L3e
            int r2 = r7.G
            int r2 = r2 + 3
            int r4 = r7.H
            if (r2 < r4) goto L18
            r7.f2()
        L18:
            int r2 = r9 + 1
            char r9 = r8[r9]
            r4 = 2048(0x800, float:2.87E-42)
            if (r9 >= r4) goto L39
            int r4 = r7.G
            int r5 = r4 + 1
            r7.G = r5
            int r6 = r9 >> 6
            r6 = r6 | 192(0xc0, float:2.69E-43)
            byte r6 = (byte) r6
            r1[r4] = r6
            int r4 = r5 + 1
            r7.G = r4
            r9 = r9 & 63
            r9 = r9 | r3
            byte r9 = (byte) r9
            r1[r5] = r9
            r9 = r2
            goto L5
        L39:
            int r9 = r7.i2(r9, r8, r2, r10)
            goto L5
        L3e:
            int r3 = r7.G
            if (r3 < r0) goto L45
            r7.f2()
        L45:
            int r3 = r7.G
            int r4 = r3 + 1
            r7.G = r4
            byte r2 = (byte) r2
            r1[r3] = r2
            int r9 = r9 + 1
            if (r9 < r10) goto L7
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.i.D2(char[], int, int):void");
    }

    private final void E2(String str, int i4, int i10) throws IOException {
        int i11 = i10 + i4;
        int i12 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        while (i4 < i11) {
            char charAt = str.charAt(i4);
            if (charAt > 127 || iArr[charAt] != 0) {
                break;
            }
            bArr[i12] = (byte) charAt;
            i4++;
            i12++;
        }
        this.G = i12;
        if (i4 < i11) {
            if (this.f14060y != null) {
                r2(str, i4, i11);
            } else if (this.f14059x == 0) {
                G2(str, i4, i11);
            } else {
                I2(str, i4, i11);
            }
        }
    }

    private final void F2(char[] cArr, int i4, int i10) throws IOException {
        int i11 = i10 + i4;
        int i12 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        while (i4 < i11) {
            char c10 = cArr[i4];
            if (c10 > 127 || iArr[c10] != 0) {
                break;
            }
            bArr[i12] = (byte) c10;
            i4++;
            i12++;
        }
        this.G = i12;
        if (i4 < i11) {
            if (this.f14060y != null) {
                s2(cArr, i4, i11);
            } else if (this.f14059x == 0) {
                H2(cArr, i4, i11);
            } else {
                J2(cArr, i4, i11);
            }
        }
    }

    private final void G2(String str, int i4, int i10) throws IOException {
        if (this.G + ((i10 - i4) * 6) > this.H) {
            f2();
        }
        int i11 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        while (i4 < i10) {
            int i12 = i4 + 1;
            char charAt = str.charAt(i4);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i11] = (byte) charAt;
                    i4 = i12;
                    i11++;
                } else {
                    int i13 = iArr[charAt];
                    if (i13 > 0) {
                        int i14 = i11 + 1;
                        bArr[i11] = T;
                        i11 = i14 + 1;
                        bArr[i14] = (byte) i13;
                    } else {
                        i11 = t2(charAt, i11);
                    }
                }
            } else if (charAt <= 2047) {
                int i15 = i11 + 1;
                bArr[i11] = (byte) ((charAt >> 6) | 192);
                i11 = i15 + 1;
                bArr[i15] = (byte) ((charAt & '?') | 128);
            } else {
                i11 = h2(charAt, i11);
            }
            i4 = i12;
        }
        this.G = i11;
    }

    private final void H2(char[] cArr, int i4, int i10) throws IOException {
        if (this.G + ((i10 - i4) * 6) > this.H) {
            f2();
        }
        int i11 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        while (i4 < i10) {
            int i12 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 <= 127) {
                if (iArr[c10] == 0) {
                    bArr[i11] = (byte) c10;
                    i4 = i12;
                    i11++;
                } else {
                    int i13 = iArr[c10];
                    if (i13 > 0) {
                        int i14 = i11 + 1;
                        bArr[i11] = T;
                        i11 = i14 + 1;
                        bArr[i14] = (byte) i13;
                    } else {
                        i11 = t2(c10, i11);
                    }
                }
            } else if (c10 <= 2047) {
                int i15 = i11 + 1;
                bArr[i11] = (byte) ((c10 >> 6) | 192);
                i11 = i15 + 1;
                bArr[i15] = (byte) ((c10 & '?') | 128);
            } else {
                i11 = h2(c10, i11);
            }
            i4 = i12;
        }
        this.G = i11;
    }

    private final void I2(String str, int i4, int i10) throws IOException {
        if (this.G + ((i10 - i4) * 6) > this.H) {
            f2();
        }
        int i11 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        int i12 = this.f14059x;
        while (i4 < i10) {
            int i13 = i4 + 1;
            char charAt = str.charAt(i4);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i11] = (byte) charAt;
                    i4 = i13;
                    i11++;
                } else {
                    int i14 = iArr[charAt];
                    if (i14 > 0) {
                        int i15 = i11 + 1;
                        bArr[i11] = T;
                        i11 = i15 + 1;
                        bArr[i15] = (byte) i14;
                    } else {
                        i11 = t2(charAt, i11);
                    }
                }
            } else if (charAt > i12) {
                i11 = t2(charAt, i11);
            } else if (charAt <= 2047) {
                int i16 = i11 + 1;
                bArr[i11] = (byte) ((charAt >> 6) | 192);
                i11 = i16 + 1;
                bArr[i16] = (byte) ((charAt & '?') | 128);
            } else {
                i11 = h2(charAt, i11);
            }
            i4 = i13;
        }
        this.G = i11;
    }

    private final void J2(char[] cArr, int i4, int i10) throws IOException {
        if (this.G + ((i10 - i4) * 6) > this.H) {
            f2();
        }
        int i11 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        int i12 = this.f14059x;
        while (i4 < i10) {
            int i13 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 <= 127) {
                if (iArr[c10] == 0) {
                    bArr[i11] = (byte) c10;
                    i4 = i13;
                    i11++;
                } else {
                    int i14 = iArr[c10];
                    if (i14 > 0) {
                        int i15 = i11 + 1;
                        bArr[i11] = T;
                        i11 = i15 + 1;
                        bArr[i15] = (byte) i14;
                    } else {
                        i11 = t2(c10, i11);
                    }
                }
            } else if (c10 > i12) {
                i11 = t2(c10, i11);
            } else if (c10 <= 2047) {
                int i16 = i11 + 1;
                bArr[i11] = (byte) ((c10 >> 6) | 192);
                i11 = i16 + 1;
                bArr[i16] = (byte) ((c10 & '?') | 128);
            } else {
                i11 = h2(c10, i11);
            }
            i4 = i13;
        }
        this.G = i11;
    }

    private final void K2(String str, int i4, int i10) throws IOException {
        do {
            int min = Math.min(this.I, i10);
            if (this.G + min > this.H) {
                f2();
            }
            E2(str, i4, min);
            i4 += min;
            i10 -= min;
        } while (i10 > 0);
    }

    private final void L2(String str, boolean z9) throws IOException {
        if (z9) {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr = this.F;
            int i4 = this.G;
            this.G = i4 + 1;
            bArr[i4] = this.E;
        }
        int length = str.length();
        int i10 = 0;
        while (length > 0) {
            int min = Math.min(this.I, length);
            if (this.G + min > this.H) {
                f2();
            }
            E2(str, i10, min);
            i10 += min;
            length -= min;
        }
        if (z9) {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr2 = this.F;
            int i11 = this.G;
            this.G = i11 + 1;
            bArr2[i11] = this.E;
        }
    }

    private final void M2(char[] cArr, int i4, int i10) throws IOException {
        do {
            int min = Math.min(this.I, i10);
            if (this.G + min > this.H) {
                f2();
            }
            F2(cArr, i4, min);
            i4 += min;
            i10 -= min;
        } while (i10 > 0);
    }

    private final void N2(byte[] bArr, int i4, int i10) throws IOException, JsonGenerationException {
        int[] iArr = this.f14058w;
        int i11 = i4 + i10;
        int i12 = i4;
        while (i12 < i11) {
            int i13 = i12 + 1;
            byte b10 = bArr[i12];
            if (b10 >= 0 && iArr[b10] != 0) {
                O2(bArr, i4, i10);
                return;
            }
            i12 = i13;
        }
        if (this.G + i10 > this.H) {
            f2();
        }
        System.arraycopy(bArr, i4, this.F, this.G, i10);
        this.G += i10;
    }

    private final void O2(byte[] bArr, int i4, int i10) throws IOException, JsonGenerationException {
        int i11 = this.G;
        if ((i10 * 6) + i11 > this.H) {
            f2();
            i11 = this.G;
        }
        byte[] bArr2 = this.F;
        int[] iArr = this.f14058w;
        int i12 = i10 + i4;
        while (i4 < i12) {
            int i13 = i4 + 1;
            byte b10 = bArr[i4];
            if (b10 >= 0 && iArr[b10] != 0) {
                int i14 = iArr[b10];
                if (i14 > 0) {
                    int i15 = i11 + 1;
                    bArr2[i11] = T;
                    i11 = i15 + 1;
                    bArr2[i15] = (byte) i14;
                } else {
                    i11 = t2(b10, i11);
                }
                i4 = i13;
            } else {
                bArr2[i11] = b10;
                i4 = i13;
                i11++;
            }
        }
        this.G = i11;
    }

    private final void P2(byte[] bArr, int i4, int i10) throws IOException, JsonGenerationException {
        do {
            int min = Math.min(this.I, i10);
            N2(bArr, i4, min);
            i4 += min;
            i10 -= min;
        } while (i10 > 0);
    }

    private final void Q2(com.fasterxml.jackson.core.j jVar) throws IOException {
        int appendQuotedUTF8 = jVar.appendQuotedUTF8(this.F, this.G);
        if (appendQuotedUTF8 < 0) {
            o2(jVar.asQuotedUTF8());
        } else {
            this.G += appendQuotedUTF8;
        }
    }

    private final int g2(byte[] bArr, int i4, int i10, byte[] bArr2, int i11) throws IOException, JsonGenerationException {
        int length = bArr2.length;
        if (i4 + length > i10) {
            this.G = i4;
            f2();
            i4 = this.G;
            if (length > bArr.length) {
                this.D.write(bArr2, 0, length);
                return i4;
            }
        }
        System.arraycopy(bArr2, 0, bArr, i4, length);
        int i12 = i4 + length;
        if ((i11 * 6) + i12 > i10) {
            this.G = i12;
            f2();
            return this.G;
        }
        return i12;
    }

    private final int h2(int i4, int i10) throws IOException {
        byte[] bArr = this.F;
        if (i4 >= 55296 && i4 <= 57343) {
            int i11 = i10 + 1;
            bArr[i10] = T;
            int i12 = i11 + 1;
            bArr[i11] = N;
            int i13 = i12 + 1;
            byte[] bArr2 = f14119b1;
            bArr[i12] = bArr2[(i4 >> 12) & 15];
            int i14 = i13 + 1;
            bArr[i13] = bArr2[(i4 >> 8) & 15];
            int i15 = i14 + 1;
            bArr[i14] = bArr2[(i4 >> 4) & 15];
            int i16 = i15 + 1;
            bArr[i15] = bArr2[i4 & 15];
            return i16;
        }
        int i17 = i10 + 1;
        bArr[i10] = (byte) ((i4 >> 12) | 224);
        int i18 = i17 + 1;
        bArr[i17] = (byte) (((i4 >> 6) & 63) | 128);
        int i19 = i18 + 1;
        bArr[i18] = (byte) ((i4 & 63) | 128);
        return i19;
    }

    private final int i2(int i4, char[] cArr, int i10, int i11) throws IOException {
        if (i4 >= 55296 && i4 <= 57343) {
            if (i10 < i11 && cArr != null) {
                j2(i4, cArr[i10]);
            } else {
                b(String.format("Split surrogate on writeRaw() input (last character): first character 0x%4x", Integer.valueOf(i4)));
            }
            return i10 + 1;
        }
        byte[] bArr = this.F;
        int i12 = this.G;
        int i13 = i12 + 1;
        this.G = i13;
        bArr[i12] = (byte) ((i4 >> 12) | 224);
        int i14 = i13 + 1;
        this.G = i14;
        bArr[i13] = (byte) (((i4 >> 6) & 63) | 128);
        this.G = i14 + 1;
        bArr[i14] = (byte) ((i4 & 63) | 128);
        return i10;
    }

    private final int k2(InputStream inputStream, byte[] bArr, int i4, int i10, int i11) throws IOException {
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

    private final void o2(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.G + length > this.H) {
            f2();
            if (length > 512) {
                this.D.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this.F, this.G, length);
        this.G += length;
    }

    private final void p2(byte[] bArr, int i4, int i10) throws IOException {
        if (this.G + i10 > this.H) {
            f2();
            if (i10 > 512) {
                this.D.write(bArr, i4, i10);
                return;
            }
        }
        System.arraycopy(bArr, i4, this.F, this.G, i10);
        this.G += i10;
    }

    private final int q2(byte[] bArr, int i4, com.fasterxml.jackson.core.j jVar, int i10) throws IOException, JsonGenerationException {
        byte[] asUnquotedUTF8 = jVar.asUnquotedUTF8();
        int length = asUnquotedUTF8.length;
        if (length > 6) {
            return g2(bArr, i4, this.H, asUnquotedUTF8, i10);
        }
        System.arraycopy(asUnquotedUTF8, 0, bArr, i4, length);
        return i4 + length;
    }

    private final void r2(String str, int i4, int i10) throws IOException {
        if (this.G + ((i10 - i4) * 6) > this.H) {
            f2();
        }
        int i11 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        int i12 = this.f14059x;
        if (i12 <= 0) {
            i12 = 65535;
        }
        CharacterEscapes characterEscapes = this.f14060y;
        while (i4 < i10) {
            int i13 = i4 + 1;
            char charAt = str.charAt(i4);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i11] = (byte) charAt;
                    i4 = i13;
                    i11++;
                } else {
                    int i14 = iArr[charAt];
                    if (i14 > 0) {
                        int i15 = i11 + 1;
                        bArr[i11] = T;
                        i11 = i15 + 1;
                        bArr[i15] = (byte) i14;
                    } else if (i14 == -2) {
                        com.fasterxml.jackson.core.j escapeSequence = characterEscapes.getEscapeSequence(charAt);
                        if (escapeSequence == null) {
                            b("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(charAt) + ", although was supposed to have one");
                        }
                        i11 = q2(bArr, i11, escapeSequence, i10 - i13);
                    } else {
                        i11 = t2(charAt, i11);
                    }
                }
            } else if (charAt > i12) {
                i11 = t2(charAt, i11);
            } else {
                com.fasterxml.jackson.core.j escapeSequence2 = characterEscapes.getEscapeSequence(charAt);
                if (escapeSequence2 != null) {
                    i11 = q2(bArr, i11, escapeSequence2, i10 - i13);
                } else if (charAt <= 2047) {
                    int i16 = i11 + 1;
                    bArr[i11] = (byte) ((charAt >> 6) | 192);
                    i11 = i16 + 1;
                    bArr[i16] = (byte) ((charAt & '?') | 128);
                } else {
                    i11 = h2(charAt, i11);
                }
            }
            i4 = i13;
        }
        this.G = i11;
    }

    private final void s2(char[] cArr, int i4, int i10) throws IOException {
        if (this.G + ((i10 - i4) * 6) > this.H) {
            f2();
        }
        int i11 = this.G;
        byte[] bArr = this.F;
        int[] iArr = this.f14058w;
        int i12 = this.f14059x;
        if (i12 <= 0) {
            i12 = 65535;
        }
        CharacterEscapes characterEscapes = this.f14060y;
        while (i4 < i10) {
            int i13 = i4 + 1;
            char c10 = cArr[i4];
            if (c10 <= 127) {
                if (iArr[c10] == 0) {
                    bArr[i11] = (byte) c10;
                    i4 = i13;
                    i11++;
                } else {
                    int i14 = iArr[c10];
                    if (i14 > 0) {
                        int i15 = i11 + 1;
                        bArr[i11] = T;
                        i11 = i15 + 1;
                        bArr[i15] = (byte) i14;
                    } else if (i14 == -2) {
                        com.fasterxml.jackson.core.j escapeSequence = characterEscapes.getEscapeSequence(c10);
                        if (escapeSequence == null) {
                            b("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c10) + ", although was supposed to have one");
                        }
                        i11 = q2(bArr, i11, escapeSequence, i10 - i13);
                    } else {
                        i11 = t2(c10, i11);
                    }
                }
            } else if (c10 > i12) {
                i11 = t2(c10, i11);
            } else {
                com.fasterxml.jackson.core.j escapeSequence2 = characterEscapes.getEscapeSequence(c10);
                if (escapeSequence2 != null) {
                    i11 = q2(bArr, i11, escapeSequence2, i10 - i13);
                } else if (c10 <= 2047) {
                    int i16 = i11 + 1;
                    bArr[i11] = (byte) ((c10 >> 6) | 192);
                    i11 = i16 + 1;
                    bArr[i16] = (byte) ((c10 & '?') | 128);
                } else {
                    i11 = h2(c10, i11);
                }
            }
            i4 = i13;
        }
        this.G = i11;
    }

    private int t2(int i4, int i10) throws IOException {
        int i11;
        byte[] bArr = this.F;
        int i12 = i10 + 1;
        bArr[i10] = T;
        int i13 = i12 + 1;
        bArr[i12] = N;
        if (i4 > 255) {
            int i14 = 255 & (i4 >> 8);
            int i15 = i13 + 1;
            byte[] bArr2 = f14119b1;
            bArr[i13] = bArr2[i14 >> 4];
            i11 = i15 + 1;
            bArr[i15] = bArr2[i14 & 15];
            i4 &= 255;
        } else {
            int i16 = i13 + 1;
            bArr[i13] = O;
            i11 = i16 + 1;
            bArr[i16] = O;
        }
        int i17 = i11 + 1;
        byte[] bArr3 = f14119b1;
        bArr[i11] = bArr3[i4 >> 4];
        int i18 = i17 + 1;
        bArr[i17] = bArr3[i4 & 15];
        return i18;
    }

    private final void u2() throws IOException {
        if (this.G + 4 >= this.H) {
            f2();
        }
        System.arraycopy(f14120g1, 0, this.F, this.G, 4);
        this.G += 4;
    }

    private final void x2(int i4) throws IOException {
        if (this.G + 13 >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i10 = this.G;
        int i11 = i10 + 1;
        this.G = i11;
        bArr[i10] = this.E;
        int q9 = com.fasterxml.jackson.core.io.h.q(i4, bArr, i11);
        byte[] bArr2 = this.F;
        this.G = q9 + 1;
        bArr2[q9] = this.E;
    }

    private final void y2(long j4) throws IOException {
        if (this.G + 23 >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        int i10 = i4 + 1;
        this.G = i10;
        bArr[i4] = this.E;
        int s9 = com.fasterxml.jackson.core.io.h.s(j4, bArr, i10);
        byte[] bArr2 = this.F;
        this.G = s9 + 1;
        bArr2[s9] = this.E;
    }

    private final void z2(String str) throws IOException {
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = this.E;
        y1(str);
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i10 = this.G;
        this.G = i10 + 1;
        bArr2[i10] = this.E;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
        r0 = r7 + 1;
        r7 = r6[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
        if (r7 >= 2048) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
        r1 = r5.F;
        r2 = r5.G;
        r3 = r2 + 1;
        r5.G = r3;
        r1[r2] = (byte) ((r7 >> 6) | 192);
        r5.G = r3 + 1;
        r1[r3] = (byte) ((r7 & '?') | 128);
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
        r7 = i2(r7, r6, r0, r8);
     */
    @Override // com.fasterxml.jackson.core.JsonGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1(char[] r6, int r7, int r8) throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r8 + r8
            int r0 = r0 + r8
            int r1 = r5.G
            int r1 = r1 + r0
            int r2 = r5.H
            if (r1 <= r2) goto L13
            if (r2 >= r0) goto L10
            r5.D2(r6, r7, r8)
            return
        L10:
            r5.f2()
        L13:
            int r8 = r8 + r7
        L14:
            if (r7 >= r8) goto L54
        L16:
            char r0 = r6[r7]
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 <= r1) goto L45
            int r0 = r7 + 1
            char r7 = r6[r7]
            r1 = 2048(0x800, float:2.87E-42)
            if (r7 >= r1) goto L40
            byte[] r1 = r5.F
            int r2 = r5.G
            int r3 = r2 + 1
            r5.G = r3
            int r4 = r7 >> 6
            r4 = r4 | 192(0xc0, float:2.69E-43)
            byte r4 = (byte) r4
            r1[r2] = r4
            int r2 = r3 + 1
            r5.G = r2
            r7 = r7 & 63
            r7 = r7 | 128(0x80, float:1.794E-43)
            byte r7 = (byte) r7
            r1[r3] = r7
            r7 = r0
            goto L14
        L40:
            int r7 = r5.i2(r7, r6, r0, r8)
            goto L14
        L45:
            byte[] r1 = r5.F
            int r2 = r5.G
            int r3 = r2 + 1
            r5.G = r3
            byte r0 = (byte) r0
            r1[r2] = r0
            int r7 = r7 + 1
            if (r7 < r8) goto L16
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.i.A1(char[], int, int):void");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void B1(byte[] bArr, int i4, int i10) throws IOException {
        c2("write a string");
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i11 = this.G;
        this.G = i11 + 1;
        bArr2[i11] = this.E;
        p2(bArr, i4, i10);
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr3 = this.F;
        int i12 = this.G;
        this.G = i12 + 1;
        bArr3[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public void C1(com.fasterxml.jackson.core.j jVar) throws IOException {
        c2("write a raw (unencoded) value");
        int appendUnquotedUTF8 = jVar.appendUnquotedUTF8(this.F, this.G);
        if (appendUnquotedUTF8 < 0) {
            o2(jVar.asUnquotedUTF8());
        } else {
            this.G += appendUnquotedUTF8;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void G1() throws IOException {
        c2("start an array");
        this.f13782h = this.f13782h.u();
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartArray(this);
            return;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = P;
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public int I0(Base64Variant base64Variant, InputStream inputStream, int i4) throws IOException, JsonGenerationException {
        c2("write a binary value");
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i10 = this.G;
        this.G = i10 + 1;
        bArr[i10] = this.E;
        byte[] d4 = this.f14057v.d();
        try {
            if (i4 < 0) {
                i4 = l2(base64Variant, inputStream, d4);
            } else {
                int m22 = m2(base64Variant, inputStream, d4, i4);
                if (m22 > 0) {
                    b("Too few bytes available: missing " + m22 + " bytes (out of " + i4 + ")");
                }
            }
            this.f14057v.s(d4);
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr2 = this.F;
            int i11 = this.G;
            this.G = i11 + 1;
            bArr2[i11] = this.E;
            return i4;
        } catch (Throwable th) {
            this.f14057v.s(d4);
            throw th;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void I1(Object obj) throws IOException {
        c2("start an array");
        this.f13782h = this.f13782h.v(obj);
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartArray(this);
            return;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = P;
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
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i10 = this.G;
        this.G = i10 + 1;
        bArr[i10] = P;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void K0(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException, JsonGenerationException {
        c2("write a binary value");
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i11 = this.G;
        this.G = i11 + 1;
        bArr2[i11] = this.E;
        n2(base64Variant, bArr, i4, i10 + i4);
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr3 = this.F;
        int i12 = this.G;
        this.G = i12 + 1;
        bArr3[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void K1() throws IOException {
        c2("start an object");
        this.f13782h = this.f13782h.w();
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeStartObject(this);
            return;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = R;
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
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = R;
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public final void N1(com.fasterxml.jackson.core.j jVar) throws IOException {
        c2("write a string");
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        int i10 = i4 + 1;
        this.G = i10;
        bArr[i4] = this.E;
        int appendQuotedUTF8 = jVar.appendQuotedUTF8(bArr, i10);
        if (appendQuotedUTF8 < 0) {
            o2(jVar.asQuotedUTF8());
        } else {
            this.G += appendQuotedUTF8;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i11 = this.G;
        this.G = i11 + 1;
        bArr2[i11] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void O0(boolean z9) throws IOException {
        c2("write a boolean value");
        if (this.G + 5 >= this.H) {
            f2();
        }
        byte[] bArr = z9 ? f14121p1 : f14122x1;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this.F, this.G, length);
        this.G += length;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void O1(Reader reader, int i4) throws IOException {
        c2("write a string");
        if (reader == null) {
            b("null reader");
            return;
        }
        int i10 = i4 >= 0 ? i4 : Integer.MAX_VALUE;
        char[] cArr = this.J;
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i11 = this.G;
        this.G = i11 + 1;
        bArr[i11] = this.E;
        while (i10 > 0) {
            int read = reader.read(cArr, 0, Math.min(i10, cArr.length));
            if (read <= 0) {
                break;
            }
            if (this.G + i4 >= this.H) {
                f2();
            }
            M2(cArr, 0, read);
            i10 -= read;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i12 = this.G;
        this.G = i12 + 1;
        bArr2[i12] = this.E;
        if (i10 <= 0 || i4 < 0) {
            return;
        }
        b("Didn't read enough from reader");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void P1(String str) throws IOException {
        c2("write a string");
        if (str == null) {
            u2();
            return;
        }
        int length = str.length();
        if (length > this.I) {
            L2(str, true);
            return;
        }
        if (this.G + length >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = this.E;
        E2(str, 0, length);
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i10 = this.G;
        this.G = i10 + 1;
        bArr2[i10] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Q1(char[] cArr, int i4, int i10) throws IOException {
        c2("write a string");
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i11 = this.G;
        int i12 = i11 + 1;
        this.G = i12;
        bArr[i11] = this.E;
        if (i10 <= this.I) {
            if (i12 + i10 > this.H) {
                f2();
            }
            F2(cArr, i4, i10);
        } else {
            M2(cArr, i4, i10);
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i13 = this.G;
        this.G = i13 + 1;
        bArr2[i13] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void R0() throws IOException {
        if (!this.f13782h.k()) {
            b("Current context not Array but " + this.f13782h.r());
        }
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeEndArray(this, this.f13782h.d());
        } else {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr = this.F;
            int i4 = this.G;
            this.G = i4 + 1;
            bArr[i4] = Q;
        }
        this.f13782h = this.f13782h.t();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void S0() throws IOException {
        if (!this.f13782h.l()) {
            b("Current context not Object but " + this.f13782h.r());
        }
        com.fasterxml.jackson.core.i iVar = this.f13698a;
        if (iVar != null) {
            iVar.writeEndObject(this, this.f13782h.d());
        } else {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr = this.F;
            int i4 = this.G;
            this.G = i4 + 1;
            bArr[i4] = S;
        }
        this.f13782h = this.f13782h.t();
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator
    public void U0(com.fasterxml.jackson.core.j jVar) throws IOException {
        if (this.f13698a != null) {
            v2(jVar);
            return;
        }
        int F = this.f13782h.F(jVar.getValue());
        if (F == 4) {
            b("Can not write a field name, expecting a value");
        }
        if (F == 1) {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr = this.F;
            int i4 = this.G;
            this.G = i4 + 1;
            bArr[i4] = U;
        }
        if (this.A) {
            Q2(jVar);
            return;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i10 = this.G;
        int i11 = i10 + 1;
        this.G = i11;
        bArr2[i10] = this.E;
        int appendQuotedUTF8 = jVar.appendQuotedUTF8(bArr2, i11);
        if (appendQuotedUTF8 < 0) {
            o2(jVar.asQuotedUTF8());
        } else {
            this.G += appendQuotedUTF8;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr3 = this.F;
        int i12 = this.G;
        this.G = i12 + 1;
        bArr3[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void V0(String str) throws IOException {
        if (this.f13698a != null) {
            w2(str);
            return;
        }
        int F = this.f13782h.F(str);
        if (F == 4) {
            b("Can not write a field name, expecting a value");
        }
        if (F == 1) {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr = this.F;
            int i4 = this.G;
            this.G = i4 + 1;
            bArr[i4] = U;
        }
        if (this.A) {
            L2(str, false);
            return;
        }
        int length = str.length();
        if (length > this.K) {
            L2(str, true);
            return;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i10 = this.G;
        int i11 = i10 + 1;
        this.G = i11;
        bArr2[i10] = this.E;
        if (length <= this.I) {
            if (i11 + length > this.H) {
                f2();
            }
            E2(str, 0, length);
        } else {
            K2(str, 0, length);
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr3 = this.F;
        int i12 = this.G;
        this.G = i12 + 1;
        bArr3[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W0() throws IOException {
        c2("write a null");
        u2();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void W1(byte[] bArr, int i4, int i10) throws IOException {
        c2("write a string");
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i11 = this.G;
        this.G = i11 + 1;
        bArr2[i11] = this.E;
        if (i10 <= this.I) {
            N2(bArr, i4, i10);
        } else {
            P2(bArr, i4, i10);
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr3 = this.F;
        int i12 = this.G;
        this.G = i12 + 1;
        bArr3[i12] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Y0(double d4) throws IOException {
        if (!this.f13781g && (!com.fasterxml.jackson.core.io.h.o(d4) || !JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this.f13780f))) {
            c2("write a number");
            y1(String.valueOf(d4));
            return;
        }
        P1(String.valueOf(d4));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void Z0(float f10) throws IOException {
        if (!this.f13781g && (!com.fasterxml.jackson.core.io.h.p(f10) || !JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this.f13780f))) {
            c2("write a number");
            y1(String.valueOf(f10));
            return;
        }
        P1(String.valueOf(f10));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void a1(int i4) throws IOException {
        c2("write a number");
        if (this.G + 11 >= this.H) {
            f2();
        }
        if (this.f13781g) {
            x2(i4);
        } else {
            this.G = com.fasterxml.jackson.core.io.h.q(i4, this.F, this.G);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void b1(long j4) throws IOException {
        c2("write a number");
        if (this.f13781g) {
            y2(j4);
            return;
        }
        if (this.G + 21 >= this.H) {
            f2();
        }
        this.G = com.fasterxml.jackson.core.io.h.s(j4, this.F, this.G);
    }

    @Override // com.fasterxml.jackson.core.base.a
    protected void b2() {
        byte[] bArr = this.F;
        if (bArr != null && this.M) {
            this.F = null;
            this.f14057v.x(bArr);
        }
        char[] cArr = this.J;
        if (cArr != null) {
            this.J = null;
            this.f14057v.t(cArr);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void c1(String str) throws IOException {
        c2("write a number");
        if (str == null) {
            u2();
        } else if (this.f13781g) {
            z2(str);
        } else {
            y1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.base.a
    protected final void c2(String str) throws IOException {
        byte b10;
        int G = this.f13782h.G();
        if (this.f13698a != null) {
            e2(str, G);
            return;
        }
        if (G == 1) {
            b10 = U;
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
                byte[] asUnquotedUTF8 = jVar.asUnquotedUTF8();
                if (asUnquotedUTF8.length > 0) {
                    o2(asUnquotedUTF8);
                    return;
                }
                return;
            }
            return;
        } else {
            b10 = V;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = b10;
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
        f2();
        this.G = 0;
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
            u2();
        } else if (this.f13781g) {
            z2(X1(bigDecimal));
        } else {
            y1(X1(bigDecimal));
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void e1(BigInteger bigInteger) throws IOException {
        c2("write a number");
        if (bigInteger == null) {
            u2();
        } else if (this.f13781g) {
            z2(bigInteger.toString());
        } else {
            y1(bigInteger.toString());
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void f1(short s9) throws IOException {
        c2("write a number");
        if (this.G + 6 >= this.H) {
            f2();
        }
        if (this.f13781g) {
            B2(s9);
        } else {
            this.G = com.fasterxml.jackson.core.io.h.q(s9, this.F, this.G);
        }
    }

    protected final void f2() throws IOException {
        int i4 = this.G;
        if (i4 > 0) {
            this.G = 0;
            this.D.write(this.F, 0, i4);
        }
    }

    @Override // com.fasterxml.jackson.core.base.a, com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
        f2();
        if (this.D == null || !q0(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            return;
        }
        this.D.flush();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int g0() {
        return this.G;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void g1(char[] cArr, int i4, int i10) throws IOException {
        c2("write a number");
        if (this.f13781g) {
            A2(cArr, i4, i10);
        } else {
            A1(cArr, i4, i10);
        }
    }

    protected final void j2(int i4, int i10) throws IOException {
        int a22 = a2(i4, i10);
        if (this.G + 4 > this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i11 = this.G;
        int i12 = i11 + 1;
        this.G = i12;
        bArr[i11] = (byte) ((a22 >> 18) | a0.A);
        int i13 = i12 + 1;
        this.G = i13;
        bArr[i12] = (byte) (((a22 >> 12) & 63) | 128);
        int i14 = i13 + 1;
        this.G = i14;
        bArr[i13] = (byte) (((a22 >> 6) & 63) | 128);
        this.G = i14 + 1;
        bArr[i14] = (byte) ((a22 & 63) | 128);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public Object l0() {
        return this.D;
    }

    protected final int l2(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int i4 = this.H - 6;
        int i10 = 2;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i11 = -3;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            if (i12 > i11) {
                i13 = k2(inputStream, bArr, i12, i13, bArr.length);
                if (i13 < 3) {
                    break;
                }
                i11 = i13 - 3;
                i12 = 0;
            }
            if (this.G > i4) {
                f2();
            }
            int i15 = i12 + 1;
            int i16 = i15 + 1;
            i12 = i16 + 1;
            i14 += 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i15] & 255) | (bArr[i12] << 8)) << 8) | (bArr[i16] & 255), this.F, this.G);
            this.G = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this.F;
                int i17 = encodeBase64Chunk + 1;
                this.G = i17;
                bArr2[encodeBase64Chunk] = T;
                this.G = i17 + 1;
                bArr2[i17] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i13 > 0) {
            if (this.G > i4) {
                f2();
            }
            int i18 = bArr[0] << 16;
            if (1 < i13) {
                i18 |= (bArr[1] & 255) << 8;
            } else {
                i10 = 1;
            }
            int i19 = i14 + i10;
            this.G = base64Variant.encodeBase64Partial(i18, i10, this.F, this.G);
            return i19;
        }
        return i14;
    }

    protected final int m2(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i4) throws IOException, JsonGenerationException {
        int k22;
        int i10 = this.H - 6;
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
                i14 = k2(inputStream, bArr, i13, i14, i4);
                if (i14 < 3) {
                    i13 = 0;
                    break;
                }
                i12 = i14 - 3;
                i13 = 0;
            }
            if (this.G > i10) {
                f2();
            }
            int i15 = i13 + 1;
            int i16 = i15 + 1;
            i13 = i16 + 1;
            i4 -= 3;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i15] & 255) | (bArr[i13] << 8)) << 8) | (bArr[i16] & 255), this.F, this.G);
            this.G = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this.F;
                int i17 = encodeBase64Chunk + 1;
                this.G = i17;
                bArr2[encodeBase64Chunk] = T;
                this.G = i17 + 1;
                bArr2[i17] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
        }
        if (i4 <= 0 || (k22 = k2(inputStream, bArr, i13, i14, i4)) <= 0) {
            return i4;
        }
        if (this.G > i10) {
            f2();
        }
        int i18 = bArr[0] << 16;
        if (1 < k22) {
            i18 |= (bArr[1] & 255) << 8;
        } else {
            i11 = 1;
        }
        this.G = base64Variant.encodeBase64Partial(i18, i11, this.F, this.G);
        return i4 - i11;
    }

    protected final void n2(Base64Variant base64Variant, byte[] bArr, int i4, int i10) throws IOException, JsonGenerationException {
        int i11 = i10 - 3;
        int i12 = this.H - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i4 <= i11) {
            if (this.G > i12) {
                f2();
            }
            int i13 = i4 + 1;
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            int encodeBase64Chunk = base64Variant.encodeBase64Chunk((((bArr[i4] << 8) | (bArr[i13] & 255)) << 8) | (bArr[i14] & 255), this.F, this.G);
            this.G = encodeBase64Chunk;
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this.F;
                int i16 = encodeBase64Chunk + 1;
                this.G = i16;
                bArr2[encodeBase64Chunk] = T;
                this.G = i16 + 1;
                bArr2[i16] = 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            i4 = i15;
        }
        int i17 = i10 - i4;
        if (i17 > 0) {
            if (this.G > i12) {
                f2();
            }
            int i18 = i4 + 1;
            int i19 = bArr[i4] << 16;
            if (i17 == 2) {
                i19 |= (bArr[i18] & 255) << 8;
            }
            this.G = base64Variant.encodeBase64Partial(i19, i17, this.F, this.G);
        }
    }

    protected final void v2(com.fasterxml.jackson.core.j jVar) throws IOException {
        int F = this.f13782h.F(jVar.getValue());
        if (F == 4) {
            b("Can not write a field name, expecting a value");
        }
        if (F == 1) {
            this.f13698a.writeObjectEntrySeparator(this);
        } else {
            this.f13698a.beforeObjectEntries(this);
        }
        boolean z9 = !this.A;
        if (z9) {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr = this.F;
            int i4 = this.G;
            this.G = i4 + 1;
            bArr[i4] = this.E;
        }
        int appendQuotedUTF8 = jVar.appendQuotedUTF8(this.F, this.G);
        if (appendQuotedUTF8 < 0) {
            o2(jVar.asQuotedUTF8());
        } else {
            this.G += appendQuotedUTF8;
        }
        if (z9) {
            if (this.G >= this.H) {
                f2();
            }
            byte[] bArr2 = this.F;
            int i10 = this.G;
            this.G = i10 + 1;
            bArr2[i10] = this.E;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void w1(char c10) throws IOException {
        if (this.G + 3 >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        if (c10 <= 127) {
            int i4 = this.G;
            this.G = i4 + 1;
            bArr[i4] = (byte) c10;
        } else if (c10 < 2048) {
            int i10 = this.G;
            int i11 = i10 + 1;
            this.G = i11;
            bArr[i10] = (byte) ((c10 >> 6) | 192);
            this.G = i11 + 1;
            bArr[i11] = (byte) ((c10 & '?') | 128);
        } else {
            i2(c10, null, 0, 0);
        }
    }

    protected final void w2(String str) throws IOException {
        int F = this.f13782h.F(str);
        if (F == 4) {
            b("Can not write a field name, expecting a value");
        }
        if (F == 1) {
            this.f13698a.writeObjectEntrySeparator(this);
        } else {
            this.f13698a.beforeObjectEntries(this);
        }
        if (this.A) {
            L2(str, false);
            return;
        }
        int length = str.length();
        if (length > this.K) {
            L2(str, true);
            return;
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr = this.F;
        int i4 = this.G;
        this.G = i4 + 1;
        bArr[i4] = this.E;
        str.getChars(0, length, this.J, 0);
        if (length <= this.I) {
            if (this.G + length > this.H) {
                f2();
            }
            F2(this.J, 0, length);
        } else {
            M2(this.J, 0, length);
        }
        if (this.G >= this.H) {
            f2();
        }
        byte[] bArr2 = this.F;
        int i10 = this.G;
        this.G = i10 + 1;
        bArr2[i10] = this.E;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void x1(com.fasterxml.jackson.core.j jVar) throws IOException {
        int appendUnquotedUTF8 = jVar.appendUnquotedUTF8(this.F, this.G);
        if (appendUnquotedUTF8 < 0) {
            o2(jVar.asUnquotedUTF8());
        } else {
            this.G += appendUnquotedUTF8;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void y1(String str) throws IOException {
        int length = str.length();
        char[] cArr = this.J;
        if (length <= cArr.length) {
            str.getChars(0, length, cArr, 0);
            A1(cArr, 0, length);
            return;
        }
        z1(str, 0, length);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void z1(String str, int i4, int i10) throws IOException {
        char c10;
        char[] cArr = this.J;
        int length = cArr.length;
        if (i10 <= length) {
            str.getChars(i4, i4 + i10, cArr, 0);
            A1(cArr, 0, i10);
            return;
        }
        int i11 = this.H;
        int min = Math.min(length, (i11 >> 2) + (i11 >> 4));
        int i12 = min * 3;
        while (i10 > 0) {
            int min2 = Math.min(min, i10);
            str.getChars(i4, i4 + min2, cArr, 0);
            if (this.G + i12 > this.H) {
                f2();
            }
            if (min2 > 1 && (c10 = cArr[min2 - 1]) >= 55296 && c10 <= 56319) {
                min2--;
            }
            C2(cArr, 0, min2);
            i4 += min2;
            i10 -= min2;
        }
    }

    public i(com.fasterxml.jackson.core.io.d dVar, int i4, com.fasterxml.jackson.core.h hVar, OutputStream outputStream, char c10, byte[] bArr, int i10, boolean z9) {
        super(dVar, i4, hVar);
        this.D = outputStream;
        this.E = (byte) c10;
        if (c10 != '\"') {
            this.f14058w = com.fasterxml.jackson.core.io.b.f(c10);
        }
        this.M = z9;
        this.G = i10;
        this.F = bArr;
        int length = bArr.length;
        this.H = length;
        this.I = length >> 3;
        char[] f10 = dVar.f();
        this.J = f10;
        this.K = f10.length;
    }

    @Deprecated
    public i(com.fasterxml.jackson.core.io.d dVar, int i4, com.fasterxml.jackson.core.h hVar, OutputStream outputStream) {
        this(dVar, i4, hVar, outputStream, '\"');
    }

    @Deprecated
    public i(com.fasterxml.jackson.core.io.d dVar, int i4, com.fasterxml.jackson.core.h hVar, OutputStream outputStream, byte[] bArr, int i10, boolean z9) {
        this(dVar, i4, hVar, outputStream, '\"', bArr, i10, z9);
    }
}
