package com.google.common.math;

import com.google.common.base.a0;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Quantiles.java */
@h3.c
@h3.a
/* loaded from: classes2.dex */
public final class i {

    /* compiled from: Quantiles.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f34590a;

        public c a(int i4) {
            return new c(this.f34590a, i4);
        }

        public d b(Collection<Integer> collection) {
            return new d(this.f34590a, com.google.common.primitives.f.B(collection));
        }

        public d c(int... iArr) {
            return new d(this.f34590a, (int[]) iArr.clone());
        }

        private b(int i4) {
            a0.e(i4 > 0, "Quantile scale must be positive");
            this.f34590a = i4;
        }
    }

    /* compiled from: Quantiles.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f34591a;

        /* renamed from: b  reason: collision with root package name */
        private final int f34592b;

        public double a(Collection<? extends Number> collection) {
            return e(com.google.common.primitives.d.z(collection));
        }

        public double b(double... dArr) {
            return e((double[]) dArr.clone());
        }

        public double c(int... iArr) {
            return e(i.l(iArr));
        }

        public double d(long... jArr) {
            return e(i.m(jArr));
        }

        public double e(double... dArr) {
            a0.e(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (i.j(dArr)) {
                return Double.NaN;
            }
            long length = this.f34592b * (dArr.length - 1);
            int g4 = (int) f.g(length, this.f34591a, RoundingMode.DOWN);
            int i4 = (int) (length - (g4 * this.f34591a));
            i.u(g4, dArr, 0, dArr.length - 1);
            if (i4 == 0) {
                return dArr[g4];
            }
            int i10 = g4 + 1;
            i.u(i10, dArr, i10, dArr.length - 1);
            return i.k(dArr[g4], dArr[i10], i4, this.f34591a);
        }

        private c(int i4, int i10) {
            i.h(i10, i4);
            this.f34591a = i4;
            this.f34592b = i10;
        }
    }

    /* compiled from: Quantiles.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final int f34593a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f34594b;

        public Map<Integer, Double> a(Collection<? extends Number> collection) {
            return e(com.google.common.primitives.d.z(collection));
        }

        public Map<Integer, Double> b(double... dArr) {
            return e((double[]) dArr.clone());
        }

        public Map<Integer, Double> c(int... iArr) {
            return e(i.l(iArr));
        }

        public Map<Integer, Double> d(long... jArr) {
            return e(i.m(jArr));
        }

        public Map<Integer, Double> e(double... dArr) {
            int i4 = 0;
            int i10 = 1;
            a0.e(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (i.j(dArr)) {
                HashMap hashMap = new HashMap();
                int[] iArr = this.f34594b;
                int length = iArr.length;
                while (i4 < length) {
                    hashMap.put(Integer.valueOf(iArr[i4]), Double.valueOf(Double.NaN));
                    i4++;
                }
                return Collections.unmodifiableMap(hashMap);
            }
            int[] iArr2 = this.f34594b;
            int[] iArr3 = new int[iArr2.length];
            int[] iArr4 = new int[iArr2.length];
            int[] iArr5 = new int[iArr2.length * 2];
            int i11 = 0;
            int i12 = 0;
            while (true) {
                int[] iArr6 = this.f34594b;
                if (i11 >= iArr6.length) {
                    break;
                }
                long length2 = iArr6[i11] * (dArr.length - i10);
                int g4 = (int) f.g(length2, this.f34593a, RoundingMode.DOWN);
                int i13 = i11;
                int i14 = (int) (length2 - (g4 * this.f34593a));
                iArr3[i13] = g4;
                iArr4[i13] = i14;
                iArr5[i12] = g4;
                i12++;
                if (i14 != 0) {
                    iArr5[i12] = g4 + 1;
                    i12++;
                }
                i11 = i13 + 1;
                i10 = 1;
            }
            Arrays.sort(iArr5, 0, i12);
            i.t(iArr5, 0, i12 - 1, dArr, 0, dArr.length - 1);
            HashMap hashMap2 = new HashMap();
            while (true) {
                int[] iArr7 = this.f34594b;
                if (i4 < iArr7.length) {
                    int i15 = iArr3[i4];
                    int i16 = iArr4[i4];
                    if (i16 == 0) {
                        hashMap2.put(Integer.valueOf(iArr7[i4]), Double.valueOf(dArr[i15]));
                    } else {
                        hashMap2.put(Integer.valueOf(iArr7[i4]), Double.valueOf(i.k(dArr[i15], dArr[i15 + 1], i16, this.f34593a)));
                    }
                    i4++;
                } else {
                    return Collections.unmodifiableMap(hashMap2);
                }
            }
        }

        private d(int i4, int[] iArr) {
            for (int i10 : iArr) {
                i.h(i10, i4);
            }
            this.f34593a = i4;
            this.f34594b = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h(int i4, int i10) {
        if (i4 < 0 || i4 > i10) {
            throw new IllegalArgumentException("Quantile indexes must be between 0 and the scale, which is " + i10);
        }
    }

    private static int i(int[] iArr, int i4, int i10, int i11, int i12) {
        if (i4 == i10) {
            return i4;
        }
        int i13 = i11 + i12;
        int i14 = i13 >>> 1;
        while (i10 > i4 + 1) {
            int i15 = (i4 + i10) >>> 1;
            if (iArr[i15] > i14) {
                i10 = i15;
            } else if (iArr[i15] >= i14) {
                return i15;
            } else {
                i4 = i15;
            }
        }
        return (i13 - iArr[i4]) - iArr[i10] > 0 ? i10 : i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j(double... dArr) {
        for (double d4 : dArr) {
            if (Double.isNaN(d4)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double k(double d4, double d10, double d11, double d12) {
        if (d4 == Double.NEGATIVE_INFINITY) {
            return d10 == Double.POSITIVE_INFINITY ? Double.NaN : Double.NEGATIVE_INFINITY;
        } else if (d10 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        } else {
            return d4 + (((d10 - d4) * d11) / d12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double[] l(int[] iArr) {
        int length = iArr.length;
        double[] dArr = new double[length];
        for (int i4 = 0; i4 < length; i4++) {
            dArr[i4] = iArr[i4];
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double[] m(long[] jArr) {
        int length = jArr.length;
        double[] dArr = new double[length];
        for (int i4 = 0; i4 < length; i4++) {
            dArr[i4] = jArr[i4];
        }
        return dArr;
    }

    public static c n() {
        return s(2).a(1);
    }

    private static void o(double[] dArr, int i4, int i10) {
        int i11 = (i4 + i10) >>> 1;
        boolean z9 = dArr[i10] < dArr[i11];
        boolean z10 = dArr[i11] < dArr[i4];
        boolean z11 = dArr[i10] < dArr[i4];
        if (z9 == z10) {
            v(dArr, i11, i4);
        } else if (z9 != z11) {
            v(dArr, i4, i10);
        }
    }

    private static int p(double[] dArr, int i4, int i10) {
        o(dArr, i4, i10);
        double d4 = dArr[i4];
        int i11 = i10;
        while (i10 > i4) {
            if (dArr[i10] > d4) {
                v(dArr, i11, i10);
                i11--;
            }
            i10--;
        }
        v(dArr, i4, i11);
        return i11;
    }

    public static b q() {
        return s(100);
    }

    public static b r() {
        return s(4);
    }

    public static b s(int i4) {
        return new b(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t(int[] iArr, int i4, int i10, double[] dArr, int i11, int i12) {
        int i13 = i(iArr, i4, i10, i11, i12);
        int i14 = iArr[i13];
        u(i14, dArr, i11, i12);
        int i15 = i13 - 1;
        while (i15 >= i4 && iArr[i15] == i14) {
            i15--;
        }
        if (i15 >= i4) {
            t(iArr, i4, i15, dArr, i11, i14 - 1);
        }
        int i16 = i13 + 1;
        while (i16 <= i10 && iArr[i16] == i14) {
            i16++;
        }
        if (i16 <= i10) {
            t(iArr, i16, i10, dArr, i14 + 1, i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void u(int i4, double[] dArr, int i10, int i11) {
        if (i4 != i10) {
            while (i11 > i10) {
                int p9 = p(dArr, i10, i11);
                if (p9 >= i4) {
                    i11 = p9 - 1;
                }
                if (p9 <= i4) {
                    i10 = p9 + 1;
                }
            }
            return;
        }
        int i12 = i10;
        for (int i13 = i10 + 1; i13 <= i11; i13++) {
            if (dArr[i12] > dArr[i13]) {
                i12 = i13;
            }
        }
        if (i12 != i10) {
            v(dArr, i12, i10);
        }
    }

    private static void v(double[] dArr, int i4, int i10) {
        double d4 = dArr[i4];
        dArr[i4] = dArr[i10];
        dArr[i10] = d4;
    }
}
