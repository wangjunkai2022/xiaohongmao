package com.google.common.math;

import com.google.common.base.a0;
import com.google.common.primitives.n;
import com.google.mlkit.common.MlKitException;
import io.sentry.protocol.y;
import java.math.RoundingMode;
import okhttp3.internal.connection.RealConnection;

/* compiled from: LongMath.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class f {
    @h3.d

    /* renamed from: a  reason: collision with root package name */
    static final long f34572a = 4611686018427387904L;
    @h3.d

    /* renamed from: b  reason: collision with root package name */
    static final long f34573b = -5402926248376769404L;
    @h3.d

    /* renamed from: f  reason: collision with root package name */
    static final long f34577f = 3037000499L;

    /* renamed from: j  reason: collision with root package name */
    private static final int f34581j = -545925251;
    @h3.d

    /* renamed from: c  reason: collision with root package name */
    static final byte[] f34574c = {19, com.google.common.base.c.f32114u, com.google.common.base.c.f32114u, com.google.common.base.c.f32114u, com.google.common.base.c.f32114u, 17, 17, 17, 16, 16, 16, com.google.common.base.c.f32110q, com.google.common.base.c.f32110q, com.google.common.base.c.f32110q, com.google.common.base.c.f32110q, com.google.common.base.c.f32109p, com.google.common.base.c.f32109p, com.google.common.base.c.f32109p, com.google.common.base.c.f32108o, com.google.common.base.c.f32108o, com.google.common.base.c.f32108o, com.google.common.base.c.f32107n, com.google.common.base.c.f32107n, com.google.common.base.c.f32107n, com.google.common.base.c.f32107n, com.google.common.base.c.f32106m, com.google.common.base.c.f32106m, com.google.common.base.c.f32106m, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0};
    @h3.c
    @h3.d

    /* renamed from: d  reason: collision with root package name */
    static final long[] f34575d = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, com.google.android.exoplayer2.i.f23681j, RealConnection.IDLE_CONNECTION_HEALTHY_NS, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};
    @h3.c
    @h3.d

    /* renamed from: e  reason: collision with root package name */
    static final long[] f34576e = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};

    /* renamed from: g  reason: collision with root package name */
    static final long[] f34578g = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};

    /* renamed from: h  reason: collision with root package name */
    static final int[] f34579h = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, 1733, 887, 534, 361, 265, MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, 169, 143, 125, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};
    @h3.d

    /* renamed from: i  reason: collision with root package name */
    static final int[] f34580i = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, 1313, 684, 419, 287, 214, 169, 139, 119, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};

    /* renamed from: k  reason: collision with root package name */
    private static final long[][] f34582k = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LongMath.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34583a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f34583a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34583a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34583a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34583a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34583a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34583a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34583a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34583a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: LongMath.java */
    /* loaded from: classes2.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f34584a;

        /* renamed from: b  reason: collision with root package name */
        public static final b f34585b;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ b[] f34586c;

        /* compiled from: LongMath.java */
        /* loaded from: classes2.dex */
        enum a extends b {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.math.f.b
            long a(long j4, long j10, long j11) {
                return (j4 * j10) % j11;
            }

            @Override // com.google.common.math.f.b
            long c(long j4, long j10) {
                return (j4 * j4) % j10;
            }
        }

        /* compiled from: LongMath.java */
        /* renamed from: com.google.common.math.f$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0258b extends b {
            C0258b(String str, int i4) {
                super(str, i4, null);
            }

            private long h(long j4, long j10, long j11) {
                int i4 = (j4 > (j11 - j10) ? 1 : (j4 == (j11 - j10) ? 0 : -1));
                long j12 = j4 + j10;
                return i4 >= 0 ? j12 - j11 : j12;
            }

            private long i(long j4, long j10) {
                int i4 = 32;
                do {
                    int min = Math.min(i4, Long.numberOfLeadingZeros(j4));
                    j4 = n.k(j4 << min, j10);
                    i4 -= min;
                } while (i4 > 0);
                return j4;
            }

            @Override // com.google.common.math.f.b
            long a(long j4, long j10, long j11) {
                long j12 = j4 >>> 32;
                long j13 = j10 >>> 32;
                long j14 = j4 & 4294967295L;
                long j15 = j10 & 4294967295L;
                long i4 = i(j12 * j13, j11) + (j12 * j15);
                if (i4 < 0) {
                    i4 = n.k(i4, j11);
                }
                Long.signum(j14);
                return h(i(i4 + (j13 * j14), j11), n.k(j14 * j15, j11), j11);
            }

            @Override // com.google.common.math.f.b
            long c(long j4, long j10) {
                long j11 = j4 >>> 32;
                long j12 = j4 & 4294967295L;
                long i4 = i(j11 * j11, j10);
                long j13 = j11 * j12 * 2;
                if (j13 < 0) {
                    j13 = n.k(j13, j10);
                }
                return h(i(i4 + j13, j10), n.k(j12 * j12, j10), j10);
            }
        }

        static {
            a aVar = new a("SMALL", 0);
            f34584a = aVar;
            C0258b c0258b = new C0258b("LARGE", 1);
            f34585b = c0258b;
            f34586c = new b[]{aVar, c0258b};
        }

        private b(String str, int i4) {
        }

        private long b(long j4, long j10, long j11) {
            long j12 = 1;
            while (j10 != 0) {
                if ((j10 & 1) != 0) {
                    j12 = a(j12, j4, j11);
                }
                j4 = c(j4, j11);
                j10 >>= 1;
            }
            return j12;
        }

        static boolean d(long j4, long j10) {
            return (j10 <= f.f34577f ? f34584a : f34585b).e(j4, j10);
        }

        private boolean e(long j4, long j10) {
            long j11 = j10 - 1;
            int numberOfTrailingZeros = Long.numberOfTrailingZeros(j11);
            long j12 = j11 >> numberOfTrailingZeros;
            long j13 = j4 % j10;
            if (j13 == 0) {
                return true;
            }
            long b10 = b(j13, j12, j10);
            if (b10 == 1) {
                return true;
            }
            int i4 = 0;
            while (b10 != j11) {
                i4++;
                if (i4 == numberOfTrailingZeros) {
                    return false;
                }
                b10 = c(b10, j10);
            }
            return true;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f34586c.clone();
        }

        abstract long a(long j4, long j10, long j11);

        abstract long c(long j4, long j10);

        /* synthetic */ b(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    private f() {
    }

    @h3.c
    public static long A(long j4, RoundingMode roundingMode) {
        g.f(y.b.f83919g, j4);
        if (i(j4)) {
            return d.x((int) j4, roundingMode);
        }
        long sqrt = (long) Math.sqrt(j4);
        long j10 = sqrt * sqrt;
        switch (a.f34583a[roundingMode.ordinal()]) {
            case 1:
                g.k(j10 == j4);
                return sqrt;
            case 2:
            case 3:
                return j4 < j10 ? sqrt - 1 : sqrt;
            case 4:
            case 5:
                return j4 > j10 ? sqrt + 1 : sqrt;
            case 6:
            case 7:
            case 8:
                long j11 = sqrt - (j4 >= j10 ? 0 : 1);
                return j11 + n((j11 * j11) + j11, j4);
            default:
                throw new AssertionError();
        }
    }

    public static long a(int i4, int i10) {
        g.e("n", i4);
        g.e("k", i10);
        a0.m(i10 <= i4, "k (%s) > n (%s)", i10, i4);
        if (i10 > (i4 >> 1)) {
            i10 = i4 - i10;
        }
        long j4 = 1;
        if (i10 != 0) {
            if (i10 != 1) {
                long[] jArr = f34578g;
                if (i4 < jArr.length) {
                    return jArr[i4] / (jArr[i10] * jArr[i4 - i10]);
                }
                int[] iArr = f34579h;
                if (i10 >= iArr.length || i4 > iArr[i10]) {
                    return Long.MAX_VALUE;
                }
                int[] iArr2 = f34580i;
                if (i10 < iArr2.length && i4 <= iArr2[i10]) {
                    int i11 = i4 - 1;
                    long j10 = i4;
                    for (int i12 = 2; i12 <= i10; i12++) {
                        j10 = (j10 * i11) / i12;
                        i11--;
                    }
                    return j10;
                }
                long j11 = i4;
                int q9 = q(j11, RoundingMode.CEILING);
                int i13 = i4 - 1;
                int i14 = q9;
                long j12 = j11;
                int i15 = 2;
                long j13 = 1;
                while (i15 <= i10) {
                    i14 += q9;
                    if (i14 < 63) {
                        j12 *= i13;
                        j13 *= i15;
                    } else {
                        j4 = u(j4, j12, j13);
                        j12 = i13;
                        j13 = i15;
                        i14 = q9;
                    }
                    i15++;
                    i13--;
                }
                return u(j4, j12, j13);
            }
            return i4;
        }
        return 1L;
    }

    @h3.a
    public static long b(long j4) {
        g.i(y.b.f83919g, j4);
        if (j4 <= 4611686018427387904L) {
            return 1 << (-Long.numberOfLeadingZeros(j4 - 1));
        }
        throw new ArithmeticException("ceilingPowerOfTwo(" + j4 + ") is not representable as a long");
    }

    @h3.c
    public static long c(long j4, long j10) {
        long j11 = j4 + j10;
        g.c(((j4 ^ j10) < 0) | ((j4 ^ j11) >= 0), "checkedAdd", j4, j10);
        return j11;
    }

    public static long d(long j4, long j10) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(j4) + Long.numberOfLeadingZeros(~j4) + Long.numberOfLeadingZeros(j10) + Long.numberOfLeadingZeros(~j10);
        if (numberOfLeadingZeros > 65) {
            return j4 * j10;
        }
        g.c(numberOfLeadingZeros >= 64, "checkedMultiply", j4, j10);
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        g.c((i4 >= 0) | (j10 != Long.MIN_VALUE), "checkedMultiply", j4, j10);
        long j11 = j4 * j10;
        g.c(i4 == 0 || j11 / j4 == j10, "checkedMultiply", j4, j10);
        return j11;
    }

    @h3.c
    public static long e(long j4, int i4) {
        int i10 = i4;
        g.e("exponent", i10);
        if ((j4 >= -2) && (j4 <= 2)) {
            int i11 = (int) j4;
            if (i11 == -2) {
                g.c(i10 < 64, "checkedPow", j4, i10);
                return (i10 & 1) == 0 ? 1 << i10 : (-1) << i10;
            } else if (i11 == -1) {
                return (i10 & 1) == 0 ? 1L : -1L;
            } else if (i11 == 0) {
                return i10 == 0 ? 1L : 0L;
            } else if (i11 != 1) {
                if (i11 == 2) {
                    g.c(i10 < 63, "checkedPow", j4, i10);
                    return 1 << i10;
                }
                throw new AssertionError();
            } else {
                return 1L;
            }
        }
        long j10 = 1;
        long j11 = j4;
        while (i10 != 0) {
            if (i10 == 1) {
                return d(j10, j11);
            }
            if ((i10 & 1) != 0) {
                j10 = d(j10, j11);
            }
            long j12 = j10;
            int i12 = i10 >> 1;
            if (i12 > 0) {
                g.c(-3037000499L <= j11 && j11 <= f34577f, "checkedPow", j11, i12);
                j11 *= j11;
            }
            j10 = j12;
            i10 = i12;
        }
        return j10;
    }

    @h3.c
    public static long f(long j4, long j10) {
        long j11 = j4 - j10;
        g.c(((j4 ^ j10) >= 0) | ((j4 ^ j11) >= 0), "checkedSubtract", j4, j10);
        return j11;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0051, code lost:
        if (r11 > 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
        if (r10 > 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
        if (r10 < 0) goto L30;
     */
    @h3.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long g(long r9, long r11, java.math.RoundingMode r13) {
        /*
            com.google.common.base.a0.E(r13)
            long r0 = r9 / r11
            long r2 = r11 * r0
            long r2 = r9 - r2
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L10
            return r0
        L10:
            long r9 = r9 ^ r11
            r7 = 63
            long r9 = r9 >> r7
            int r10 = (int) r9
            r9 = 1
            r10 = r10 | r9
            int[] r7 = com.google.common.math.f.a.f34583a
            int r8 = r13.ordinal()
            r7 = r7[r8]
            r8 = 0
            switch(r7) {
                case 1: goto L5a;
                case 2: goto L61;
                case 3: goto L57;
                case 4: goto L62;
                case 5: goto L54;
                case 6: goto L29;
                case 7: goto L29;
                case 8: goto L29;
                default: goto L23;
            }
        L23:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            r9.<init>()
            throw r9
        L29:
            long r2 = java.lang.Math.abs(r2)
            long r11 = java.lang.Math.abs(r11)
            long r11 = r11 - r2
            long r2 = r2 - r11
            int r11 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r11 != 0) goto L51
            java.math.RoundingMode r11 = java.math.RoundingMode.HALF_UP
            if (r13 != r11) goto L3d
            r11 = 1
            goto L3e
        L3d:
            r11 = 0
        L3e:
            java.math.RoundingMode r12 = java.math.RoundingMode.HALF_EVEN
            if (r13 != r12) goto L44
            r12 = 1
            goto L45
        L44:
            r12 = 0
        L45:
            r2 = 1
            long r2 = r2 & r0
            int r13 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r13 == 0) goto L4d
            goto L4e
        L4d:
            r9 = 0
        L4e:
            r9 = r9 & r12
            r9 = r9 | r11
            goto L62
        L51:
            if (r11 <= 0) goto L61
            goto L62
        L54:
            if (r10 <= 0) goto L61
            goto L62
        L57:
            if (r10 >= 0) goto L61
            goto L62
        L5a:
            if (r6 != 0) goto L5d
            goto L5e
        L5d:
            r9 = 0
        L5e:
            com.google.common.math.g.k(r9)
        L61:
            r9 = 0
        L62:
            if (r9 == 0) goto L66
            long r9 = (long) r10
            long r0 = r0 + r9
        L66:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.f.g(long, long, java.math.RoundingMode):long");
    }

    @h3.c
    public static long h(int i4) {
        g.e("n", i4);
        long[] jArr = f34578g;
        if (i4 < jArr.length) {
            return jArr[i4];
        }
        return Long.MAX_VALUE;
    }

    static boolean i(long j4) {
        return ((long) ((int) j4)) == j4;
    }

    @h3.a
    public static long j(long j4) {
        g.i(y.b.f83919g, j4);
        return 1 << (63 - Long.numberOfLeadingZeros(j4));
    }

    public static long k(long j4, long j10) {
        g.f("a", j4);
        g.f("b", j10);
        if (j4 == 0) {
            return j10;
        }
        if (j10 == 0) {
            return j4;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j4);
        long j11 = j4 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j10);
        long j12 = j10 >> numberOfTrailingZeros2;
        while (j11 != j12) {
            long j13 = j11 - j12;
            long j14 = (j13 >> 63) & j13;
            long j15 = (j13 - j14) - j14;
            j12 += j14;
            j11 = j15 >> Long.numberOfTrailingZeros(j15);
        }
        return j11 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static boolean l(long j4) {
        return (j4 > 0) & ((j4 & (j4 - 1)) == 0);
    }

    @h3.c
    @h3.a
    public static boolean m(long j4) {
        long[][] jArr;
        int i4 = (j4 > 2L ? 1 : (j4 == 2L ? 0 : -1));
        if (i4 < 0) {
            g.f("n", j4);
            return false;
        } else if (i4 == 0 || j4 == 3 || j4 == 5 || j4 == 7 || j4 == 11 || j4 == 13) {
            return true;
        } else {
            if ((f34581j & (1 << ((int) (j4 % 30)))) != 0 || j4 % 7 == 0 || j4 % 11 == 0 || j4 % 13 == 0) {
                return false;
            }
            if (j4 < 289) {
                return true;
            }
            for (long[] jArr2 : f34582k) {
                if (j4 <= jArr2[0]) {
                    for (int i10 = 1; i10 < jArr2.length; i10++) {
                        if (!b.d(jArr2[i10], j4)) {
                            return false;
                        }
                    }
                    return true;
                }
            }
            throw new AssertionError();
        }
    }

    @h3.d
    static int n(long j4, long j10) {
        return (int) ((~(~(j4 - j10))) >>> 63);
    }

    @h3.c
    public static int o(long j4, RoundingMode roundingMode) {
        int n9;
        g.i(y.b.f83919g, j4);
        int p9 = p(j4);
        long j10 = f34575d[p9];
        switch (a.f34583a[roundingMode.ordinal()]) {
            case 1:
                g.k(j4 == j10);
                return p9;
            case 2:
            case 3:
                return p9;
            case 4:
            case 5:
                n9 = n(j10, j4);
                return p9 + n9;
            case 6:
            case 7:
            case 8:
                n9 = n(f34576e[p9], j4);
                return p9 + n9;
            default:
                throw new AssertionError();
        }
    }

    @h3.c
    static int p(long j4) {
        byte b10 = f34574c[Long.numberOfLeadingZeros(j4)];
        return b10 - n(j4, f34575d[b10]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int q(long j4, RoundingMode roundingMode) {
        g.i(y.b.f83919g, j4);
        switch (a.f34583a[roundingMode.ordinal()]) {
            case 1:
                g.k(l(j4));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 64 - Long.numberOfLeadingZeros(j4 - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Long.numberOfLeadingZeros(j4);
                return (63 - numberOfLeadingZeros) + n(f34573b >>> numberOfLeadingZeros, j4);
            default:
                throw new AssertionError("impossible");
        }
        return 63 - Long.numberOfLeadingZeros(j4);
    }

    public static long r(long j4, long j10) {
        return (j4 & j10) + ((j4 ^ j10) >> 1);
    }

    @h3.c
    public static int s(long j4, int i4) {
        return (int) t(j4, i4);
    }

    @h3.c
    public static long t(long j4, long j10) {
        if (j10 > 0) {
            long j11 = j4 % j10;
            return j11 >= 0 ? j11 : j11 + j10;
        }
        throw new ArithmeticException("Modulus must be positive");
    }

    static long u(long j4, long j10, long j11) {
        if (j4 == 1) {
            return j10 / j11;
        }
        long k10 = k(j4, j11);
        return (j4 / k10) * (j10 / (j11 / k10));
    }

    @h3.c
    public static long v(long j4, int i4) {
        g.e("exponent", i4);
        if (-2 > j4 || j4 > 2) {
            long j10 = 1;
            while (i4 != 0) {
                if (i4 == 1) {
                    return j10 * j4;
                }
                j10 *= (i4 & 1) == 0 ? 1L : j4;
                j4 *= j4;
                i4 >>= 1;
            }
            return j10;
        }
        int i10 = (int) j4;
        if (i10 == -2) {
            if (i4 < 64) {
                return (i4 & 1) == 0 ? 1 << i4 : -(1 << i4);
            }
            return 0L;
        } else if (i10 == -1) {
            return (i4 & 1) == 0 ? 1L : -1L;
        } else if (i10 == 0) {
            return i4 == 0 ? 1L : 0L;
        } else if (i10 != 1) {
            if (i10 == 2) {
                if (i4 < 64) {
                    return 1 << i4;
                }
                return 0L;
            }
            throw new AssertionError();
        } else {
            return 1L;
        }
    }

    @h3.a
    public static long w(long j4, long j10) {
        long j11 = j4 + j10;
        return (((j10 ^ j4) > 0L ? 1 : ((j10 ^ j4) == 0L ? 0 : -1)) < 0) | ((j4 ^ j11) >= 0) ? j11 : ((j11 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    @h3.a
    public static long x(long j4, long j10) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(j4) + Long.numberOfLeadingZeros(~j4) + Long.numberOfLeadingZeros(j10) + Long.numberOfLeadingZeros(~j10);
        if (numberOfLeadingZeros > 65) {
            return j4 * j10;
        }
        long j11 = ((j4 ^ j10) >>> 63) + Long.MAX_VALUE;
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if ((numberOfLeadingZeros < 64) || ((j10 == Long.MIN_VALUE) & (i4 < 0))) {
            return j11;
        }
        long j12 = j4 * j10;
        return (i4 == 0 || j12 / j4 == j10) ? j12 : j11;
    }

    @h3.a
    public static long y(long j4, int i4) {
        g.e("exponent", i4);
        long j10 = 1;
        if (!(j4 >= -2) || !(j4 <= 2)) {
            long j11 = ((j4 >>> 63) & i4 & 1) + Long.MAX_VALUE;
            while (i4 != 0) {
                if (i4 == 1) {
                    return x(j10, j4);
                }
                if ((i4 & 1) != 0) {
                    j10 = x(j10, j4);
                }
                i4 >>= 1;
                if (i4 > 0) {
                    if ((-3037000499L > j4) || (j4 > f34577f)) {
                        return j11;
                    }
                    j4 *= j4;
                }
            }
            return j10;
        }
        int i10 = (int) j4;
        if (i10 == -2) {
            return i4 >= 64 ? (i4 & 1) + Long.MAX_VALUE : (i4 & 1) == 0 ? 1 << i4 : (-1) << i4;
        } else if (i10 == -1) {
            return (i4 & 1) == 0 ? 1L : -1L;
        } else if (i10 == 0) {
            return i4 == 0 ? 1L : 0L;
        } else if (i10 != 1) {
            if (i10 == 2) {
                if (i4 >= 63) {
                    return Long.MAX_VALUE;
                }
                return 1 << i4;
            }
            throw new AssertionError();
        } else {
            return 1L;
        }
    }

    @h3.a
    public static long z(long j4, long j10) {
        long j11 = j4 - j10;
        return (((j10 ^ j4) > 0L ? 1 : ((j10 ^ j4) == 0L ? 0 : -1)) >= 0) | ((j4 ^ j11) >= 0) ? j11 : ((j11 >>> 63) ^ 1) + Long.MAX_VALUE;
    }
}
