package shaded.org.apache.commons.codec.binary;

import java.math.BigInteger;
import java.util.Objects;
import okio.Utf8;
import shaded.org.apache.commons.codec.binary.g;

/* compiled from: Base64.java */
/* loaded from: classes5.dex */
public class d extends g {

    /* renamed from: s  reason: collision with root package name */
    private static final int f93440s = 6;

    /* renamed from: t  reason: collision with root package name */
    private static final int f93441t = 3;

    /* renamed from: u  reason: collision with root package name */
    private static final int f93442u = 4;

    /* renamed from: v  reason: collision with root package name */
    static final byte[] f93443v = {com.google.common.base.c.f32108o, 10};

    /* renamed from: w  reason: collision with root package name */
    private static final byte[] f93444w = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: x  reason: collision with root package name */
    private static final byte[] f93445x = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: y  reason: collision with root package name */
    private static final byte[] f93446y = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, com.google.common.base.c.f32106m, com.google.common.base.c.f32107n, com.google.common.base.c.f32108o, com.google.common.base.c.f32109p, com.google.common.base.c.f32110q, 16, 17, com.google.common.base.c.f32114u, 19, com.google.common.base.c.f32117x, com.google.common.base.c.f32118y, com.google.common.base.c.f32119z, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C, -1, -1, -1, -1, Utf8.REPLACEMENT_BYTE, -1, com.google.common.base.c.D, com.google.common.base.c.E, com.google.common.base.c.F, com.google.common.base.c.G, com.google.common.base.c.H, com.google.common.base.c.I, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* renamed from: z  reason: collision with root package name */
    private static final int f93447z = 63;

    /* renamed from: n  reason: collision with root package name */
    private final byte[] f93448n;

    /* renamed from: o  reason: collision with root package name */
    private final byte[] f93449o;

    /* renamed from: p  reason: collision with root package name */
    private final byte[] f93450p;

    /* renamed from: q  reason: collision with root package name */
    private final int f93451q;

    /* renamed from: r  reason: collision with root package name */
    private final int f93452r;

    public d() {
        this(0);
    }

    public static byte[] A(byte[] bArr) {
        return B(bArr, false);
    }

    public static byte[] B(byte[] bArr, boolean z9) {
        return C(bArr, z9, false);
    }

    public static byte[] C(byte[] bArr, boolean z9, boolean z10) {
        return D(bArr, z9, z10, Integer.MAX_VALUE);
    }

    public static byte[] D(byte[] bArr, boolean z9, boolean z10, int i4) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        d dVar = z9 ? new d(z10) : new d(0, f93443v, z10);
        long p9 = dVar.p(bArr);
        if (p9 <= i4) {
            return dVar.e(bArr);
        }
        throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + p9 + ") than the specified maximum size of " + i4);
    }

    public static byte[] E(byte[] bArr) {
        return B(bArr, true);
    }

    public static String F(byte[] bArr) {
        return m.p(B(bArr, false));
    }

    public static byte[] G(byte[] bArr) {
        return C(bArr, false, true);
    }

    public static String H(byte[] bArr) {
        return m.p(C(bArr, false, true));
    }

    public static byte[] I(BigInteger bigInteger) {
        Objects.requireNonNull(bigInteger, "encodeInteger called with null parameter");
        return B(O(bigInteger), false);
    }

    @Deprecated
    public static boolean J(byte[] bArr) {
        return M(bArr);
    }

    public static boolean K(byte b10) {
        if (b10 != 61) {
            if (b10 >= 0) {
                byte[] bArr = f93446y;
                if (b10 >= bArr.length || bArr[b10] == -1) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean L(String str) {
        return M(m.k(str));
    }

    public static boolean M(byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length; i4++) {
            if (!K(bArr[i4]) && !g.u(bArr[i4])) {
                return false;
            }
        }
        return true;
    }

    static byte[] O(BigInteger bigInteger) {
        int bitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        int i4 = 1;
        if (bigInteger.bitLength() % 8 == 0 || (bigInteger.bitLength() / 8) + 1 != bitLength / 8) {
            int length = byteArray.length;
            if (bigInteger.bitLength() % 8 == 0) {
                length--;
            } else {
                i4 = 0;
            }
            int i10 = bitLength / 8;
            int i11 = i10 - length;
            byte[] bArr = new byte[i10];
            System.arraycopy(byteArray, i4, bArr, i11, length);
            return bArr;
        }
        return byteArray;
    }

    public static byte[] x(String str) {
        return new d().i(str);
    }

    public static byte[] y(byte[] bArr) {
        return new d().decode(bArr);
    }

    public static BigInteger z(byte[] bArr) {
        return new BigInteger(1, y(bArr));
    }

    public boolean N() {
        return this.f93448n == f93445x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // shaded.org.apache.commons.codec.binary.g
    public void h(byte[] bArr, int i4, int i10, g.a aVar) {
        byte b10;
        if (aVar.f93471f) {
            return;
        }
        if (i10 < 0) {
            aVar.f93471f = true;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            byte[] n9 = n(this.f93451q, aVar);
            int i12 = i4 + 1;
            byte b11 = bArr[i4];
            if (b11 == this.f93461b) {
                aVar.f93471f = true;
                break;
            }
            if (b11 >= 0) {
                byte[] bArr2 = f93446y;
                if (b11 < bArr2.length && (b10 = bArr2[b11]) >= 0) {
                    int i13 = (aVar.f93473h + 1) % 4;
                    aVar.f93473h = i13;
                    int i14 = (aVar.f93466a << 6) + b10;
                    aVar.f93466a = i14;
                    if (i13 == 0) {
                        int i15 = aVar.f93469d;
                        int i16 = i15 + 1;
                        aVar.f93469d = i16;
                        n9[i15] = (byte) ((i14 >> 16) & 255);
                        int i17 = i16 + 1;
                        aVar.f93469d = i17;
                        n9[i16] = (byte) ((i14 >> 8) & 255);
                        aVar.f93469d = i17 + 1;
                        n9[i17] = (byte) (i14 & 255);
                    }
                }
            }
            i11++;
            i4 = i12;
        }
        if (!aVar.f93471f || aVar.f93473h == 0) {
            return;
        }
        byte[] n10 = n(this.f93451q, aVar);
        int i18 = aVar.f93473h;
        if (i18 != 1) {
            if (i18 == 2) {
                int i19 = aVar.f93466a >> 4;
                aVar.f93466a = i19;
                int i20 = aVar.f93469d;
                aVar.f93469d = i20 + 1;
                n10[i20] = (byte) (i19 & 255);
            } else if (i18 == 3) {
                int i21 = aVar.f93466a >> 2;
                aVar.f93466a = i21;
                int i22 = aVar.f93469d;
                int i23 = i22 + 1;
                aVar.f93469d = i23;
                n10[i22] = (byte) ((i21 >> 8) & 255);
                aVar.f93469d = i23 + 1;
                n10[i23] = (byte) (i21 & 255);
            } else {
                throw new IllegalStateException("Impossible modulus " + aVar.f93473h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // shaded.org.apache.commons.codec.binary.g
    public void j(byte[] bArr, int i4, int i10, g.a aVar) {
        if (aVar.f93471f) {
            return;
        }
        if (i10 >= 0) {
            int i11 = 0;
            while (i11 < i10) {
                byte[] n9 = n(this.f93452r, aVar);
                int i12 = (aVar.f93473h + 1) % 3;
                aVar.f93473h = i12;
                int i13 = i4 + 1;
                int i14 = bArr[i4];
                if (i14 < 0) {
                    i14 += 256;
                }
                int i15 = (aVar.f93466a << 8) + i14;
                aVar.f93466a = i15;
                if (i12 == 0) {
                    int i16 = aVar.f93469d;
                    int i17 = i16 + 1;
                    aVar.f93469d = i17;
                    byte[] bArr2 = this.f93448n;
                    n9[i16] = bArr2[(i15 >> 18) & 63];
                    int i18 = i17 + 1;
                    aVar.f93469d = i18;
                    n9[i17] = bArr2[(i15 >> 12) & 63];
                    int i19 = i18 + 1;
                    aVar.f93469d = i19;
                    n9[i18] = bArr2[(i15 >> 6) & 63];
                    int i20 = i19 + 1;
                    aVar.f93469d = i20;
                    n9[i19] = bArr2[i15 & 63];
                    int i21 = aVar.f93472g + 4;
                    aVar.f93472g = i21;
                    int i22 = this.f93464e;
                    if (i22 > 0 && i22 <= i21) {
                        byte[] bArr3 = this.f93450p;
                        System.arraycopy(bArr3, 0, n9, i20, bArr3.length);
                        aVar.f93469d += this.f93450p.length;
                        aVar.f93472g = 0;
                    }
                }
                i11++;
                i4 = i13;
            }
            return;
        }
        aVar.f93471f = true;
        if (aVar.f93473h == 0 && this.f93464e == 0) {
            return;
        }
        byte[] n10 = n(this.f93452r, aVar);
        int i23 = aVar.f93469d;
        int i24 = aVar.f93473h;
        if (i24 != 0) {
            if (i24 == 1) {
                int i25 = i23 + 1;
                aVar.f93469d = i25;
                byte[] bArr4 = this.f93448n;
                int i26 = aVar.f93466a;
                n10[i23] = bArr4[(i26 >> 2) & 63];
                int i27 = i25 + 1;
                aVar.f93469d = i27;
                n10[i25] = bArr4[(i26 << 4) & 63];
                if (bArr4 == f93444w) {
                    int i28 = i27 + 1;
                    aVar.f93469d = i28;
                    byte b10 = this.f93461b;
                    n10[i27] = b10;
                    aVar.f93469d = i28 + 1;
                    n10[i28] = b10;
                }
            } else if (i24 == 2) {
                int i29 = i23 + 1;
                aVar.f93469d = i29;
                byte[] bArr5 = this.f93448n;
                int i30 = aVar.f93466a;
                n10[i23] = bArr5[(i30 >> 10) & 63];
                int i31 = i29 + 1;
                aVar.f93469d = i31;
                n10[i29] = bArr5[(i30 >> 4) & 63];
                int i32 = i31 + 1;
                aVar.f93469d = i32;
                n10[i31] = bArr5[(i30 << 2) & 63];
                if (bArr5 == f93444w) {
                    aVar.f93469d = i32 + 1;
                    n10[i32] = this.f93461b;
                }
            } else {
                throw new IllegalStateException("Impossible modulus " + aVar.f93473h);
            }
        }
        int i33 = aVar.f93472g;
        int i34 = aVar.f93469d;
        int i35 = i33 + (i34 - i23);
        aVar.f93472g = i35;
        if (this.f93464e <= 0 || i35 <= 0) {
            return;
        }
        byte[] bArr6 = this.f93450p;
        System.arraycopy(bArr6, 0, n10, i34, bArr6.length);
        aVar.f93469d += this.f93450p.length;
    }

    @Override // shaded.org.apache.commons.codec.binary.g
    protected boolean r(byte b10) {
        if (b10 >= 0) {
            byte[] bArr = this.f93449o;
            if (b10 < bArr.length && bArr[b10] != -1) {
                return true;
            }
        }
        return false;
    }

    public d(boolean z9) {
        this(76, f93443v, z9);
    }

    public d(int i4) {
        this(i4, f93443v);
    }

    public d(int i4, byte[] bArr) {
        this(i4, bArr, false);
    }

    public d(int i4, byte[] bArr, boolean z9) {
        super(3, 4, i4, bArr == null ? 0 : bArr.length);
        this.f93449o = f93446y;
        if (bArr != null) {
            if (g(bArr)) {
                String t9 = m.t(bArr);
                throw new IllegalArgumentException("lineSeparator must not contain base64 characters: [" + t9 + "]");
            } else if (i4 > 0) {
                this.f93452r = bArr.length + 4;
                byte[] bArr2 = new byte[bArr.length];
                this.f93450p = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            } else {
                this.f93452r = 4;
                this.f93450p = null;
            }
        } else {
            this.f93452r = 4;
            this.f93450p = null;
        }
        this.f93451q = this.f93452r - 1;
        this.f93448n = z9 ? f93445x : f93444w;
    }
}
