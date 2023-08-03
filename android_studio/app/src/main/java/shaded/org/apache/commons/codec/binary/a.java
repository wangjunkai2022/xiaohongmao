package shaded.org.apache.commons.codec.binary;

import shaded.org.apache.commons.codec.binary.g;

/* compiled from: Base32.java */
/* loaded from: classes5.dex */
public class a extends g {
    private static final int A = 31;

    /* renamed from: s  reason: collision with root package name */
    private static final int f93427s = 5;

    /* renamed from: t  reason: collision with root package name */
    private static final int f93428t = 8;

    /* renamed from: u  reason: collision with root package name */
    private static final int f93429u = 5;

    /* renamed from: v  reason: collision with root package name */
    private static final byte[] f93430v = {com.google.common.base.c.f32108o, 10};

    /* renamed from: w  reason: collision with root package name */
    private static final byte[] f93431w = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, com.google.common.base.c.D, com.google.common.base.c.E, com.google.common.base.c.F, com.google.common.base.c.G, com.google.common.base.c.H, com.google.common.base.c.I, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, com.google.common.base.c.f32106m, com.google.common.base.c.f32107n, com.google.common.base.c.f32108o, com.google.common.base.c.f32109p, com.google.common.base.c.f32110q, 16, 17, com.google.common.base.c.f32114u, 19, com.google.common.base.c.f32117x, com.google.common.base.c.f32118y, com.google.common.base.c.f32119z, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, com.google.common.base.c.f32106m, com.google.common.base.c.f32107n, com.google.common.base.c.f32108o, com.google.common.base.c.f32109p, com.google.common.base.c.f32110q, 16, 17, com.google.common.base.c.f32114u, 19, com.google.common.base.c.f32117x, com.google.common.base.c.f32118y, com.google.common.base.c.f32119z, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C};

    /* renamed from: x  reason: collision with root package name */
    private static final byte[] f93432x = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55};

    /* renamed from: y  reason: collision with root package name */
    private static final byte[] f93433y = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, com.google.common.base.c.f32106m, com.google.common.base.c.f32107n, com.google.common.base.c.f32108o, com.google.common.base.c.f32109p, com.google.common.base.c.f32110q, 16, 17, com.google.common.base.c.f32114u, 19, com.google.common.base.c.f32117x, com.google.common.base.c.f32118y, com.google.common.base.c.f32119z, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C, com.google.common.base.c.D, com.google.common.base.c.E, com.google.common.base.c.F, com.google.common.base.c.G, com.google.common.base.c.H, com.google.common.base.c.I, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 10, com.google.common.base.c.f32106m, com.google.common.base.c.f32107n, com.google.common.base.c.f32108o, com.google.common.base.c.f32109p, com.google.common.base.c.f32110q, 16, 17, com.google.common.base.c.f32114u, 19, com.google.common.base.c.f32117x, com.google.common.base.c.f32118y, com.google.common.base.c.f32119z, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C, com.google.common.base.c.D, com.google.common.base.c.E, com.google.common.base.c.F, com.google.common.base.c.G, com.google.common.base.c.H, com.google.common.base.c.I};

    /* renamed from: z  reason: collision with root package name */
    private static final byte[] f93434z = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86};

    /* renamed from: n  reason: collision with root package name */
    private final int f93435n;

    /* renamed from: o  reason: collision with root package name */
    private final byte[] f93436o;

    /* renamed from: p  reason: collision with root package name */
    private final int f93437p;

    /* renamed from: q  reason: collision with root package name */
    private final byte[] f93438q;

    /* renamed from: r  reason: collision with root package name */
    private final byte[] f93439r;

    public a() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int, boolean] */
    @Override // shaded.org.apache.commons.codec.binary.g
    public void h(byte[] bArr, int i4, int i10, g.a aVar) {
        byte b10;
        if (aVar.f93471f) {
            return;
        }
        ?? r32 = 1;
        if (i10 < 0) {
            aVar.f93471f = true;
        }
        int i11 = i4;
        int i12 = 0;
        while (true) {
            if (i12 >= i10) {
                break;
            }
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            if (b11 == this.f93461b) {
                aVar.f93471f = r32;
                break;
            }
            byte[] n9 = n(this.f93435n, aVar);
            if (b11 >= 0) {
                byte[] bArr2 = this.f93436o;
                if (b11 < bArr2.length && (b10 = bArr2[b11]) >= 0) {
                    int i14 = (aVar.f93473h + r32) % 8;
                    aVar.f93473h = i14;
                    long j4 = (aVar.f93467b << 5) + b10;
                    aVar.f93467b = j4;
                    if (i14 == 0) {
                        int i15 = aVar.f93469d;
                        int i16 = i15 + 1;
                        aVar.f93469d = i16;
                        n9[i15] = (byte) ((j4 >> 32) & 255);
                        int i17 = i16 + 1;
                        aVar.f93469d = i17;
                        n9[i16] = (byte) ((j4 >> 24) & 255);
                        int i18 = i17 + 1;
                        aVar.f93469d = i18;
                        n9[i17] = (byte) ((j4 >> 16) & 255);
                        int i19 = i18 + 1;
                        aVar.f93469d = i19;
                        n9[i18] = (byte) ((j4 >> 8) & 255);
                        aVar.f93469d = i19 + 1;
                        n9[i19] = (byte) (j4 & 255);
                    }
                }
            }
            i12++;
            i11 = i13;
            r32 = 1;
        }
        if (!aVar.f93471f || aVar.f93473h < 2) {
            return;
        }
        byte[] n10 = n(this.f93435n, aVar);
        switch (aVar.f93473h) {
            case 2:
                int i20 = aVar.f93469d;
                aVar.f93469d = i20 + 1;
                n10[i20] = (byte) ((aVar.f93467b >> 2) & 255);
                return;
            case 3:
                int i21 = aVar.f93469d;
                aVar.f93469d = i21 + 1;
                n10[i21] = (byte) ((aVar.f93467b >> 7) & 255);
                return;
            case 4:
                long j10 = aVar.f93467b >> 4;
                aVar.f93467b = j10;
                int i22 = aVar.f93469d;
                int i23 = i22 + 1;
                aVar.f93469d = i23;
                n10[i22] = (byte) ((j10 >> 8) & 255);
                aVar.f93469d = i23 + 1;
                n10[i23] = (byte) (j10 & 255);
                return;
            case 5:
                long j11 = aVar.f93467b >> 1;
                aVar.f93467b = j11;
                int i24 = aVar.f93469d;
                int i25 = i24 + 1;
                aVar.f93469d = i25;
                n10[i24] = (byte) ((j11 >> 16) & 255);
                int i26 = i25 + 1;
                aVar.f93469d = i26;
                n10[i25] = (byte) ((j11 >> 8) & 255);
                aVar.f93469d = i26 + 1;
                n10[i26] = (byte) (j11 & 255);
                return;
            case 6:
                long j12 = aVar.f93467b >> 6;
                aVar.f93467b = j12;
                int i27 = aVar.f93469d;
                int i28 = i27 + 1;
                aVar.f93469d = i28;
                n10[i27] = (byte) ((j12 >> 16) & 255);
                int i29 = i28 + 1;
                aVar.f93469d = i29;
                n10[i28] = (byte) ((j12 >> 8) & 255);
                aVar.f93469d = i29 + 1;
                n10[i29] = (byte) (j12 & 255);
                return;
            case 7:
                long j13 = aVar.f93467b >> 3;
                aVar.f93467b = j13;
                int i30 = aVar.f93469d;
                int i31 = i30 + 1;
                aVar.f93469d = i31;
                n10[i30] = (byte) ((j13 >> 24) & 255);
                int i32 = i31 + 1;
                aVar.f93469d = i32;
                n10[i31] = (byte) ((j13 >> 16) & 255);
                int i33 = i32 + 1;
                aVar.f93469d = i33;
                n10[i32] = (byte) ((j13 >> 8) & 255);
                aVar.f93469d = i33 + 1;
                n10[i33] = (byte) (j13 & 255);
                return;
            default:
                throw new IllegalStateException("Impossible modulus " + aVar.f93473h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // shaded.org.apache.commons.codec.binary.g
    public void j(byte[] bArr, int i4, int i10, g.a aVar) {
        int i11;
        if (aVar.f93471f) {
            return;
        }
        int i12 = 1;
        if (i10 >= 0) {
            int i13 = i4;
            int i14 = 0;
            while (i14 < i10) {
                byte[] n9 = n(this.f93437p, aVar);
                int i15 = (aVar.f93473h + i12) % 5;
                aVar.f93473h = i15;
                int i16 = i13 + 1;
                int i17 = bArr[i13];
                if (i17 < 0) {
                    i17 += 256;
                }
                long j4 = (aVar.f93467b << 8) + i17;
                aVar.f93467b = j4;
                if (i15 == 0) {
                    int i18 = aVar.f93469d;
                    int i19 = i18 + 1;
                    aVar.f93469d = i19;
                    byte[] bArr2 = this.f93438q;
                    n9[i18] = bArr2[((int) (j4 >> 35)) & 31];
                    int i20 = i19 + 1;
                    aVar.f93469d = i20;
                    n9[i19] = bArr2[((int) (j4 >> 30)) & 31];
                    int i21 = i20 + 1;
                    aVar.f93469d = i21;
                    i11 = i16;
                    n9[i20] = bArr2[((int) (j4 >> 25)) & 31];
                    int i22 = i21 + 1;
                    aVar.f93469d = i22;
                    n9[i21] = bArr2[((int) (j4 >> 20)) & 31];
                    int i23 = i22 + 1;
                    aVar.f93469d = i23;
                    n9[i22] = bArr2[((int) (j4 >> 15)) & 31];
                    int i24 = i23 + 1;
                    aVar.f93469d = i24;
                    n9[i23] = bArr2[((int) (j4 >> 10)) & 31];
                    int i25 = i24 + 1;
                    aVar.f93469d = i25;
                    n9[i24] = bArr2[((int) (j4 >> 5)) & 31];
                    int i26 = i25 + 1;
                    aVar.f93469d = i26;
                    n9[i25] = bArr2[((int) j4) & 31];
                    int i27 = aVar.f93472g + 8;
                    aVar.f93472g = i27;
                    int i28 = this.f93464e;
                    if (i28 > 0 && i28 <= i27) {
                        byte[] bArr3 = this.f93439r;
                        System.arraycopy(bArr3, 0, n9, i26, bArr3.length);
                        aVar.f93469d += this.f93439r.length;
                        aVar.f93472g = 0;
                        i14++;
                        i13 = i11;
                        i12 = 1;
                    }
                } else {
                    i11 = i16;
                }
                i14++;
                i13 = i11;
                i12 = 1;
            }
            return;
        }
        aVar.f93471f = true;
        if (aVar.f93473h == 0 && this.f93464e == 0) {
            return;
        }
        byte[] n10 = n(this.f93437p, aVar);
        int i29 = aVar.f93469d;
        int i30 = aVar.f93473h;
        if (i30 != 0) {
            if (i30 == 1) {
                int i31 = i29 + 1;
                aVar.f93469d = i31;
                byte[] bArr4 = this.f93438q;
                long j10 = aVar.f93467b;
                n10[i29] = bArr4[((int) (j10 >> 3)) & 31];
                int i32 = i31 + 1;
                aVar.f93469d = i32;
                n10[i31] = bArr4[((int) (j10 << 2)) & 31];
                int i33 = i32 + 1;
                aVar.f93469d = i33;
                byte b10 = this.f93461b;
                n10[i32] = b10;
                int i34 = i33 + 1;
                aVar.f93469d = i34;
                n10[i33] = b10;
                int i35 = i34 + 1;
                aVar.f93469d = i35;
                n10[i34] = b10;
                int i36 = i35 + 1;
                aVar.f93469d = i36;
                n10[i35] = b10;
                int i37 = i36 + 1;
                aVar.f93469d = i37;
                n10[i36] = b10;
                aVar.f93469d = i37 + 1;
                n10[i37] = b10;
            } else if (i30 == 2) {
                int i38 = i29 + 1;
                aVar.f93469d = i38;
                byte[] bArr5 = this.f93438q;
                long j11 = aVar.f93467b;
                n10[i29] = bArr5[((int) (j11 >> 11)) & 31];
                int i39 = i38 + 1;
                aVar.f93469d = i39;
                n10[i38] = bArr5[((int) (j11 >> 6)) & 31];
                int i40 = i39 + 1;
                aVar.f93469d = i40;
                n10[i39] = bArr5[((int) (j11 >> 1)) & 31];
                int i41 = i40 + 1;
                aVar.f93469d = i41;
                n10[i40] = bArr5[((int) (j11 << 4)) & 31];
                int i42 = i41 + 1;
                aVar.f93469d = i42;
                byte b11 = this.f93461b;
                n10[i41] = b11;
                int i43 = i42 + 1;
                aVar.f93469d = i43;
                n10[i42] = b11;
                int i44 = i43 + 1;
                aVar.f93469d = i44;
                n10[i43] = b11;
                aVar.f93469d = i44 + 1;
                n10[i44] = b11;
            } else if (i30 == 3) {
                int i45 = i29 + 1;
                aVar.f93469d = i45;
                byte[] bArr6 = this.f93438q;
                long j12 = aVar.f93467b;
                n10[i29] = bArr6[((int) (j12 >> 19)) & 31];
                int i46 = i45 + 1;
                aVar.f93469d = i46;
                n10[i45] = bArr6[((int) (j12 >> 14)) & 31];
                int i47 = i46 + 1;
                aVar.f93469d = i47;
                n10[i46] = bArr6[((int) (j12 >> 9)) & 31];
                int i48 = i47 + 1;
                aVar.f93469d = i48;
                n10[i47] = bArr6[((int) (j12 >> 4)) & 31];
                int i49 = i48 + 1;
                aVar.f93469d = i49;
                n10[i48] = bArr6[((int) (j12 << 1)) & 31];
                int i50 = i49 + 1;
                aVar.f93469d = i50;
                byte b12 = this.f93461b;
                n10[i49] = b12;
                int i51 = i50 + 1;
                aVar.f93469d = i51;
                n10[i50] = b12;
                aVar.f93469d = i51 + 1;
                n10[i51] = b12;
            } else if (i30 == 4) {
                int i52 = i29 + 1;
                aVar.f93469d = i52;
                byte[] bArr7 = this.f93438q;
                long j13 = aVar.f93467b;
                n10[i29] = bArr7[((int) (j13 >> 27)) & 31];
                int i53 = i52 + 1;
                aVar.f93469d = i53;
                n10[i52] = bArr7[((int) (j13 >> 22)) & 31];
                int i54 = i53 + 1;
                aVar.f93469d = i54;
                n10[i53] = bArr7[((int) (j13 >> 17)) & 31];
                int i55 = i54 + 1;
                aVar.f93469d = i55;
                n10[i54] = bArr7[((int) (j13 >> 12)) & 31];
                int i56 = i55 + 1;
                aVar.f93469d = i56;
                n10[i55] = bArr7[((int) (j13 >> 7)) & 31];
                int i57 = i56 + 1;
                aVar.f93469d = i57;
                n10[i56] = bArr7[((int) (j13 >> 2)) & 31];
                int i58 = i57 + 1;
                aVar.f93469d = i58;
                n10[i57] = bArr7[((int) (j13 << 3)) & 31];
                aVar.f93469d = i58 + 1;
                n10[i58] = this.f93461b;
            } else {
                throw new IllegalStateException("Impossible modulus " + aVar.f93473h);
            }
        }
        int i59 = aVar.f93472g;
        int i60 = aVar.f93469d;
        int i61 = i59 + (i60 - i29);
        aVar.f93472g = i61;
        if (this.f93464e <= 0 || i61 <= 0) {
            return;
        }
        byte[] bArr8 = this.f93439r;
        System.arraycopy(bArr8, 0, n10, i60, bArr8.length);
        aVar.f93469d += this.f93439r.length;
    }

    @Override // shaded.org.apache.commons.codec.binary.g
    public boolean r(byte b10) {
        if (b10 >= 0) {
            byte[] bArr = this.f93436o;
            if (b10 < bArr.length && bArr[b10] != -1) {
                return true;
            }
        }
        return false;
    }

    public a(byte b10) {
        this(false, b10);
    }

    public a(boolean z9) {
        this(0, null, z9, (byte) 61);
    }

    public a(boolean z9, byte b10) {
        this(0, null, z9, b10);
    }

    public a(int i4) {
        this(i4, f93430v);
    }

    public a(int i4, byte[] bArr) {
        this(i4, bArr, false, (byte) 61);
    }

    public a(int i4, byte[] bArr, boolean z9) {
        this(i4, bArr, z9, (byte) 61);
    }

    public a(int i4, byte[] bArr, boolean z9, byte b10) {
        super(5, 8, i4, bArr == null ? 0 : bArr.length, b10);
        if (z9) {
            this.f93438q = f93434z;
            this.f93436o = f93433y;
        } else {
            this.f93438q = f93432x;
            this.f93436o = f93431w;
        }
        if (i4 <= 0) {
            this.f93437p = 8;
            this.f93439r = null;
        } else if (bArr != null) {
            if (!g(bArr)) {
                this.f93437p = bArr.length + 8;
                byte[] bArr2 = new byte[bArr.length];
                this.f93439r = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            } else {
                String t9 = m.t(bArr);
                throw new IllegalArgumentException("lineSeparator must not contain Base32 characters: [" + t9 + "]");
            }
        } else {
            throw new IllegalArgumentException("lineLength " + i4 + " > 0, but lineSeparator is null");
        }
        this.f93435n = this.f93437p - 1;
        if (r(b10) || g.u(b10)) {
            throw new IllegalArgumentException("pad must not be in alphabet or whitespace");
        }
    }
}
