package com.google.common.primitives;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.ksyun.media.player.KSYMediaMeta;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: UnsignedInts.java */
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final long f34891a = 4294967295L;

    /* compiled from: UnsignedInts.java */
    /* loaded from: classes2.dex */
    enum a implements Comparator<int[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(int[] iArr, int[] iArr2) {
            int min = Math.min(iArr.length, iArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                if (iArr[i4] != iArr2[i4]) {
                    return m.b(iArr[i4], iArr2[i4]);
                }
            }
            return iArr.length - iArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }
    }

    private m() {
    }

    public static int a(long j4) {
        a0.p((j4 >> 32) == 0, "out of range: %s", j4);
        return (int) j4;
    }

    public static int b(int i4, int i10) {
        return f.e(e(i4), e(i10));
    }

    @CanIgnoreReturnValue
    public static int c(String str) {
        h a10 = h.a(str);
        try {
            return k(a10.f34862a, a10.f34863b);
        } catch (NumberFormatException e4) {
            NumberFormatException numberFormatException = new NumberFormatException("Error parsing value: " + str);
            numberFormatException.initCause(e4);
            throw numberFormatException;
        }
    }

    public static int d(int i4, int i10) {
        return (int) (r(i4) / r(i10));
    }

    static int e(int i4) {
        return i4 ^ Integer.MIN_VALUE;
    }

    public static String f(String str, int... iArr) {
        a0.E(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(s(iArr[0]));
        for (int i4 = 1; i4 < iArr.length; i4++) {
            sb.append(str);
            sb.append(s(iArr[i4]));
        }
        return sb.toString();
    }

    public static Comparator<int[]> g() {
        return a.INSTANCE;
    }

    public static int h(int... iArr) {
        a0.d(iArr.length > 0);
        int e4 = e(iArr[0]);
        for (int i4 = 1; i4 < iArr.length; i4++) {
            int e10 = e(iArr[i4]);
            if (e10 > e4) {
                e4 = e10;
            }
        }
        return e(e4);
    }

    public static int i(int... iArr) {
        a0.d(iArr.length > 0);
        int e4 = e(iArr[0]);
        for (int i4 = 1; i4 < iArr.length; i4++) {
            int e10 = e(iArr[i4]);
            if (e10 < e4) {
                e4 = e10;
            }
        }
        return e(e4);
    }

    @CanIgnoreReturnValue
    public static int j(String str) {
        return k(str, 10);
    }

    @CanIgnoreReturnValue
    public static int k(String str, int i4) {
        a0.E(str);
        long parseLong = Long.parseLong(str, i4);
        if ((f34891a & parseLong) == parseLong) {
            return (int) parseLong;
        }
        throw new NumberFormatException("Input " + str + " in base " + i4 + " is not in the range of an unsigned integer");
    }

    public static int l(int i4, int i10) {
        return (int) (r(i4) % r(i10));
    }

    public static int m(long j4) {
        if (j4 <= 0) {
            return 0;
        }
        if (j4 >= KSYMediaMeta.AV_CH_WIDE_RIGHT) {
            return -1;
        }
        return (int) j4;
    }

    public static void n(int[] iArr) {
        a0.E(iArr);
        o(iArr, 0, iArr.length);
    }

    public static void o(int[] iArr, int i4, int i10) {
        a0.E(iArr);
        a0.f0(i4, i10, iArr.length);
        for (int i11 = i4; i11 < i10; i11++) {
            iArr[i11] = e(iArr[i11]);
        }
        Arrays.sort(iArr, i4, i10);
        while (i4 < i10) {
            iArr[i4] = e(iArr[i4]);
            i4++;
        }
    }

    public static void p(int[] iArr) {
        a0.E(iArr);
        q(iArr, 0, iArr.length);
    }

    public static void q(int[] iArr, int i4, int i10) {
        a0.E(iArr);
        a0.f0(i4, i10, iArr.length);
        for (int i11 = i4; i11 < i10; i11++) {
            iArr[i11] = Integer.MAX_VALUE ^ iArr[i11];
        }
        Arrays.sort(iArr, i4, i10);
        while (i4 < i10) {
            iArr[i4] = iArr[i4] ^ Integer.MAX_VALUE;
            i4++;
        }
    }

    public static long r(int i4) {
        return i4 & f34891a;
    }

    public static String s(int i4) {
        return t(i4, 10);
    }

    public static String t(int i4, int i10) {
        return Long.toString(i4 & f34891a, i10);
    }
}
