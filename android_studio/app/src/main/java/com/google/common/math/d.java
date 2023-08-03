package com.google.common.math;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.a0;
import io.sentry.protocol.y;
import java.math.RoundingMode;
import kotlin.time.DurationKt;

/* compiled from: IntMath.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class d {
    @h3.d

    /* renamed from: a  reason: collision with root package name */
    static final int f34555a = 1073741824;
    @h3.d

    /* renamed from: b  reason: collision with root package name */
    static final int f34556b = -1257966797;
    @h3.d

    /* renamed from: f  reason: collision with root package name */
    static final int f34560f = 46340;
    @h3.d

    /* renamed from: c  reason: collision with root package name */
    static final byte[] f34557c = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};
    @h3.d

    /* renamed from: d  reason: collision with root package name */
    static final int[] f34558d = {1, 10, 100, 1000, 10000, com.google.android.exoplayer2.audio.a.f21096f, DurationKt.NANOS_IN_MILLIS, 10000000, 100000000, 1000000000};
    @h3.d

    /* renamed from: e  reason: collision with root package name */
    static final int[] f34559e = {3, 31, TypedValues.Attributes.TYPE_PATH_ROTATE, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f34561g = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};
    @h3.d

    /* renamed from: h  reason: collision with root package name */
    static int[] f34562h = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntMath.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34563a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f34563a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34563a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34563a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34563a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34563a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34563a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34563a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34563a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private d() {
    }

    public static int a(int i4, int i10) {
        g.e("n", i4);
        g.e("k", i10);
        int i11 = 0;
        a0.m(i10 <= i4, "k (%s) > n (%s)", i10, i4);
        if (i10 > (i4 >> 1)) {
            i10 = i4 - i10;
        }
        int[] iArr = f34562h;
        if (i10 >= iArr.length || i4 > iArr[i10]) {
            return Integer.MAX_VALUE;
        }
        if (i10 != 0) {
            if (i10 != 1) {
                long j4 = 1;
                while (i11 < i10) {
                    i11++;
                    j4 = (j4 * (i4 - i11)) / i11;
                }
                return (int) j4;
            }
            return i4;
        }
        return 1;
    }

    @h3.a
    public static int b(int i4) {
        g.h(y.b.f83919g, i4);
        if (i4 <= 1073741824) {
            return 1 << (-Integer.numberOfLeadingZeros(i4 - 1));
        }
        throw new ArithmeticException("ceilingPowerOfTwo(" + i4 + ") not representable as an int");
    }

    public static int c(int i4, int i10) {
        long j4 = i4 + i10;
        int i11 = (int) j4;
        g.b(j4 == ((long) i11), "checkedAdd", i4, i10);
        return i11;
    }

    public static int d(int i4, int i10) {
        long j4 = i4 * i10;
        int i11 = (int) j4;
        g.b(j4 == ((long) i11), "checkedMultiply", i4, i10);
        return i11;
    }

    public static int e(int i4, int i10) {
        g.e("exponent", i10);
        if (i4 == -2) {
            g.b(i10 < 32, "checkedPow", i4, i10);
            return (i10 & 1) == 0 ? 1 << i10 : (-1) << i10;
        } else if (i4 == -1) {
            return (i10 & 1) == 0 ? 1 : -1;
        } else if (i4 == 0) {
            return i10 == 0 ? 1 : 0;
        } else if (i4 != 1) {
            if (i4 == 2) {
                g.b(i10 < 31, "checkedPow", i4, i10);
                return 1 << i10;
            }
            int i11 = 1;
            while (i10 != 0) {
                if (i10 == 1) {
                    return d(i11, i4);
                }
                if ((i10 & 1) != 0) {
                    i11 = d(i11, i4);
                }
                i10 >>= 1;
                if (i10 > 0) {
                    g.b((-46340 <= i4) & (i4 <= f34560f), "checkedPow", i4, i10);
                    i4 *= i4;
                }
            }
            return i11;
        } else {
            return 1;
        }
    }

    public static int f(int i4, int i10) {
        long j4 = i4 - i10;
        int i11 = (int) j4;
        g.b(j4 == ((long) i11), "checkedSubtract", i4, i10);
        return i11;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
        if (((r7 == java.math.RoundingMode.HALF_EVEN) & ((r0 & 1) != 0)) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0047, code lost:
        if (r1 > 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004a, code lost:
        if (r5 > 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004d, code lost:
        if (r5 < 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int g(int r5, int r6, java.math.RoundingMode r7) {
        /*
            com.google.common.base.a0.E(r7)
            if (r6 == 0) goto L5c
            int r0 = r5 / r6
            int r1 = r6 * r0
            int r1 = r5 - r1
            if (r1 != 0) goto Le
            return r0
        Le:
            r5 = r5 ^ r6
            int r5 = r5 >> 31
            r2 = 1
            r5 = r5 | r2
            int[] r3 = com.google.common.math.d.a.f34563a
            int r4 = r7.ordinal()
            r3 = r3[r4]
            r4 = 0
            switch(r3) {
                case 1: goto L50;
                case 2: goto L57;
                case 3: goto L4d;
                case 4: goto L58;
                case 5: goto L4a;
                case 6: goto L25;
                case 7: goto L25;
                case 8: goto L25;
                default: goto L1f;
            }
        L1f:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            r5.<init>()
            throw r5
        L25:
            int r1 = java.lang.Math.abs(r1)
            int r6 = java.lang.Math.abs(r6)
            int r6 = r6 - r1
            int r1 = r1 - r6
            if (r1 != 0) goto L47
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_UP
            if (r7 == r6) goto L58
            java.math.RoundingMode r6 = java.math.RoundingMode.HALF_EVEN
            if (r7 != r6) goto L3b
            r6 = 1
            goto L3c
        L3b:
            r6 = 0
        L3c:
            r7 = r0 & 1
            if (r7 == 0) goto L42
            r7 = 1
            goto L43
        L42:
            r7 = 0
        L43:
            r6 = r6 & r7
            if (r6 == 0) goto L57
            goto L58
        L47:
            if (r1 <= 0) goto L57
            goto L58
        L4a:
            if (r5 <= 0) goto L57
            goto L58
        L4d:
            if (r5 >= 0) goto L57
            goto L58
        L50:
            if (r1 != 0) goto L53
            goto L54
        L53:
            r2 = 0
        L54:
            com.google.common.math.g.k(r2)
        L57:
            r2 = 0
        L58:
            if (r2 == 0) goto L5b
            int r0 = r0 + r5
        L5b:
            return r0
        L5c:
            java.lang.ArithmeticException r5 = new java.lang.ArithmeticException
            java.lang.String r6 = "/ by zero"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.d.g(int, int, java.math.RoundingMode):int");
    }

    public static int h(int i4) {
        g.e("n", i4);
        int[] iArr = f34561g;
        if (i4 < iArr.length) {
            return iArr[i4];
        }
        return Integer.MAX_VALUE;
    }

    @h3.a
    public static int i(int i4) {
        g.h(y.b.f83919g, i4);
        return Integer.highestOneBit(i4);
    }

    public static int j(int i4, int i10) {
        g.e("a", i4);
        g.e("b", i10);
        if (i4 == 0) {
            return i10;
        }
        if (i10 == 0) {
            return i4;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i4);
        int i11 = i4 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i10);
        int i12 = i10 >> numberOfTrailingZeros2;
        while (i11 != i12) {
            int i13 = i11 - i12;
            int i14 = (i13 >> 31) & i13;
            int i15 = (i13 - i14) - i14;
            i12 += i14;
            i11 = i15 >> Integer.numberOfTrailingZeros(i15);
        }
        return i11 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static boolean k(int i4) {
        return (i4 > 0) & ((i4 & (i4 + (-1))) == 0);
    }

    @h3.c
    @h3.a
    public static boolean l(int i4) {
        return f.m(i4);
    }

    @h3.d
    static int m(int i4, int i10) {
        return (~(~(i4 - i10))) >>> 31;
    }

    @h3.c
    public static int n(int i4, RoundingMode roundingMode) {
        int m9;
        g.h(y.b.f83919g, i4);
        int o9 = o(i4);
        int i10 = f34558d[o9];
        switch (a.f34563a[roundingMode.ordinal()]) {
            case 1:
                g.k(i4 == i10);
                return o9;
            case 2:
            case 3:
                return o9;
            case 4:
            case 5:
                m9 = m(i10, i4);
                return o9 + m9;
            case 6:
            case 7:
            case 8:
                m9 = m(f34559e[o9], i4);
                return o9 + m9;
            default:
                throw new AssertionError();
        }
    }

    private static int o(int i4) {
        byte b10 = f34557c[Integer.numberOfLeadingZeros(i4)];
        return b10 - m(i4, f34558d[b10]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int p(int i4, RoundingMode roundingMode) {
        g.h(y.b.f83919g, i4);
        switch (a.f34563a[roundingMode.ordinal()]) {
            case 1:
                g.k(k(i4));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i4 - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i4);
                return (31 - numberOfLeadingZeros) + m(f34556b >>> numberOfLeadingZeros, i4);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i4);
    }

    public static int q(int i4, int i10) {
        return (i4 & i10) + ((i4 ^ i10) >> 1);
    }

    public static int r(int i4, int i10) {
        if (i10 > 0) {
            int i11 = i4 % i10;
            return i11 >= 0 ? i11 : i11 + i10;
        }
        throw new ArithmeticException("Modulus " + i10 + " must be > 0");
    }

    @h3.c
    public static int s(int i4, int i10) {
        g.e("exponent", i10);
        if (i4 == -2) {
            if (i10 < 32) {
                return (i10 & 1) == 0 ? 1 << i10 : -(1 << i10);
            }
            return 0;
        } else if (i4 == -1) {
            return (i10 & 1) == 0 ? 1 : -1;
        } else if (i4 == 0) {
            return i10 == 0 ? 1 : 0;
        } else if (i4 != 1) {
            if (i4 == 2) {
                if (i10 < 32) {
                    return 1 << i10;
                }
                return 0;
            }
            int i11 = 1;
            while (i10 != 0) {
                if (i10 == 1) {
                    return i4 * i11;
                }
                i11 *= (i10 & 1) == 0 ? 1 : i4;
                i4 *= i4;
                i10 >>= 1;
            }
            return i11;
        } else {
            return 1;
        }
    }

    @h3.a
    public static int t(int i4, int i10) {
        return com.google.common.primitives.f.x(i4 + i10);
    }

    @h3.a
    public static int u(int i4, int i10) {
        return com.google.common.primitives.f.x(i4 * i10);
    }

    @h3.a
    public static int v(int i4, int i10) {
        g.e("exponent", i10);
        if (i4 == -2) {
            return i10 >= 32 ? (i10 & 1) + Integer.MAX_VALUE : (i10 & 1) == 0 ? 1 << i10 : (-1) << i10;
        } else if (i4 == -1) {
            return (i10 & 1) == 0 ? 1 : -1;
        } else if (i4 == 0) {
            return i10 == 0 ? 1 : 0;
        } else if (i4 != 1) {
            if (i4 == 2) {
                if (i10 >= 31) {
                    return Integer.MAX_VALUE;
                }
                return 1 << i10;
            }
            int i11 = ((i4 >>> 31) & i10 & 1) + Integer.MAX_VALUE;
            int i12 = 1;
            while (i10 != 0) {
                if (i10 == 1) {
                    return u(i12, i4);
                }
                if ((i10 & 1) != 0) {
                    i12 = u(i12, i4);
                }
                i10 >>= 1;
                if (i10 > 0) {
                    if ((-46340 > i4) || (i4 > f34560f)) {
                        return i11;
                    }
                    i4 *= i4;
                }
            }
            return i12;
        } else {
            return 1;
        }
    }

    @h3.a
    public static int w(int i4, int i10) {
        return com.google.common.primitives.f.x(i4 - i10);
    }

    @h3.c
    public static int x(int i4, RoundingMode roundingMode) {
        int m9;
        g.e(y.b.f83919g, i4);
        int y9 = y(i4);
        switch (a.f34563a[roundingMode.ordinal()]) {
            case 1:
                g.k(y9 * y9 == i4);
                return y9;
            case 2:
            case 3:
                return y9;
            case 4:
            case 5:
                m9 = m(y9 * y9, i4);
                return y9 + m9;
            case 6:
            case 7:
            case 8:
                m9 = m((y9 * y9) + y9, i4);
                return y9 + m9;
            default:
                throw new AssertionError();
        }
    }

    private static int y(int i4) {
        return (int) Math.sqrt(i4);
    }
}
