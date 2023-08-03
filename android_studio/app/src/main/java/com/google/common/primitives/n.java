package com.google.common.primitives;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: UnsignedLongs.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final long f34894a = -1;

    /* compiled from: UnsignedLongs.java */
    /* loaded from: classes2.dex */
    enum a implements Comparator<long[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(long[] jArr, long[] jArr2) {
            int min = Math.min(jArr.length, jArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                if (jArr[i4] != jArr2[i4]) {
                    return n.a(jArr[i4], jArr2[i4]);
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnsignedLongs.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final long[] f34897a = new long[37];

        /* renamed from: b  reason: collision with root package name */
        static final int[] f34898b = new int[37];

        /* renamed from: c  reason: collision with root package name */
        static final int[] f34899c = new int[37];

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i4 = 2; i4 <= 36; i4++) {
                long j4 = i4;
                f34897a[i4] = n.c(-1L, j4);
                f34898b[i4] = (int) n.k(-1L, j4);
                f34899c[i4] = bigInteger.toString(i4).length() - 1;
            }
        }

        private b() {
        }

        static boolean a(long j4, int i4, int i10) {
            if (j4 >= 0) {
                long[] jArr = f34897a;
                if (j4 < jArr[i10]) {
                    return false;
                }
                return j4 > jArr[i10] || i4 > f34898b[i10];
            }
            return true;
        }
    }

    private n() {
    }

    public static int a(long j4, long j10) {
        return g.d(d(j4), d(j10));
    }

    @CanIgnoreReturnValue
    public static long b(String str) {
        h a10 = h.a(str);
        try {
            return j(a10.f34862a, a10.f34863b);
        } catch (NumberFormatException e4) {
            NumberFormatException numberFormatException = new NumberFormatException("Error parsing value: " + str);
            numberFormatException.initCause(e4);
            throw numberFormatException;
        }
    }

    public static long c(long j4, long j10) {
        if (j10 < 0) {
            return a(j4, j10) < 0 ? 0L : 1L;
        } else if (j4 >= 0) {
            return j4 / j10;
        } else {
            long j11 = ((j4 >>> 1) / j10) << 1;
            return j11 + (a(j4 - (j11 * j10), j10) < 0 ? 0 : 1);
        }
    }

    private static long d(long j4) {
        return j4 ^ Long.MIN_VALUE;
    }

    public static String e(String str, long... jArr) {
        a0.E(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 5);
        sb.append(p(jArr[0]));
        for (int i4 = 1; i4 < jArr.length; i4++) {
            sb.append(str);
            sb.append(p(jArr[i4]));
        }
        return sb.toString();
    }

    public static Comparator<long[]> f() {
        return a.INSTANCE;
    }

    public static long g(long... jArr) {
        a0.d(jArr.length > 0);
        long d4 = d(jArr[0]);
        for (int i4 = 1; i4 < jArr.length; i4++) {
            long d10 = d(jArr[i4]);
            if (d10 > d4) {
                d4 = d10;
            }
        }
        return d(d4);
    }

    public static long h(long... jArr) {
        a0.d(jArr.length > 0);
        long d4 = d(jArr[0]);
        for (int i4 = 1; i4 < jArr.length; i4++) {
            long d10 = d(jArr[i4]);
            if (d10 < d4) {
                d4 = d10;
            }
        }
        return d(d4);
    }

    @CanIgnoreReturnValue
    public static long i(String str) {
        return j(str, 10);
    }

    @CanIgnoreReturnValue
    public static long j(String str, int i4) {
        a0.E(str);
        if (str.length() != 0) {
            if (i4 >= 2 && i4 <= 36) {
                int i10 = b.f34899c[i4] - 1;
                long j4 = 0;
                for (int i11 = 0; i11 < str.length(); i11++) {
                    int digit = Character.digit(str.charAt(i11), i4);
                    if (digit != -1) {
                        if (i11 > i10 && b.a(j4, digit, i4)) {
                            throw new NumberFormatException("Too large for unsigned long: " + str);
                        }
                        j4 = (j4 * i4) + digit;
                    } else {
                        throw new NumberFormatException(str);
                    }
                }
                return j4;
            }
            throw new NumberFormatException("illegal radix: " + i4);
        }
        throw new NumberFormatException("empty string");
    }

    public static long k(long j4, long j10) {
        if (j10 < 0) {
            return a(j4, j10) < 0 ? j4 : j4 - j10;
        } else if (j4 >= 0) {
            return j4 % j10;
        } else {
            long j11 = j4 - ((((j4 >>> 1) / j10) << 1) * j10);
            if (a(j11, j10) < 0) {
                j10 = 0;
            }
            return j11 - j10;
        }
    }

    public static void l(long[] jArr) {
        a0.E(jArr);
        m(jArr, 0, jArr.length);
    }

    public static void m(long[] jArr, int i4, int i10) {
        a0.E(jArr);
        a0.f0(i4, i10, jArr.length);
        for (int i11 = i4; i11 < i10; i11++) {
            jArr[i11] = d(jArr[i11]);
        }
        Arrays.sort(jArr, i4, i10);
        while (i4 < i10) {
            jArr[i4] = d(jArr[i4]);
            i4++;
        }
    }

    public static void n(long[] jArr) {
        a0.E(jArr);
        o(jArr, 0, jArr.length);
    }

    public static void o(long[] jArr, int i4, int i10) {
        a0.E(jArr);
        a0.f0(i4, i10, jArr.length);
        for (int i11 = i4; i11 < i10; i11++) {
            jArr[i11] = Long.MAX_VALUE ^ jArr[i11];
        }
        Arrays.sort(jArr, i4, i10);
        while (i4 < i10) {
            jArr[i4] = jArr[i4] ^ Long.MAX_VALUE;
            i4++;
        }
    }

    public static String p(long j4) {
        return q(j4, 10);
    }

    public static String q(long j4, int i4) {
        long c10;
        a0.k(i4 >= 2 && i4 <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i4);
        int i10 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i10 == 0) {
            return "0";
        }
        if (i10 > 0) {
            return Long.toString(j4, i4);
        }
        int i11 = 64;
        char[] cArr = new char[64];
        int i12 = i4 - 1;
        if ((i4 & i12) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i4);
            do {
                i11--;
                cArr[i11] = Character.forDigit(((int) j4) & i12, i4);
                j4 >>>= numberOfTrailingZeros;
            } while (j4 != 0);
        } else {
            if ((i4 & 1) == 0) {
                c10 = (j4 >>> 1) / (i4 >>> 1);
            } else {
                c10 = c(j4, i4);
            }
            long j10 = i4;
            cArr[63] = Character.forDigit((int) (j4 - (c10 * j10)), i4);
            i11 = 63;
            while (c10 > 0) {
                i11--;
                cArr[i11] = Character.forDigit((int) (c10 % j10), i4);
                c10 /= j10;
            }
        }
        return new String(cArr, i11, 64 - i11);
    }
}
