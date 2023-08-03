package com.google.common.primitives;

import com.google.common.base.a0;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Doubles.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f34822a = 8;
    @h3.c

    /* renamed from: b  reason: collision with root package name */
    static final Pattern f34823b = i();

    /* compiled from: Doubles.java */
    @h3.b
    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Double> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34824d = 0;

        /* renamed from: a  reason: collision with root package name */
        final double[] f34825a;

        /* renamed from: b  reason: collision with root package name */
        final int f34826b;

        /* renamed from: c  reason: collision with root package name */
        final int f34827c;

        a(double[] dArr) {
            this(dArr, 0, dArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Double get(int i4) {
            a0.C(i4, size());
            return Double.valueOf(this.f34825a[this.f34826b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Double set(int i4, Double d4) {
            a0.C(i4, size());
            double[] dArr = this.f34825a;
            int i10 = this.f34826b;
            double d10 = dArr[i10 + i4];
            dArr[i10 + i4] = ((Double) a0.E(d4)).doubleValue();
            return Double.valueOf(d10);
        }

        double[] c() {
            return Arrays.copyOfRange(this.f34825a, this.f34826b, this.f34827c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Double) && d.l(this.f34825a, ((Double) obj).doubleValue(), this.f34826b, this.f34827c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i4 = 0; i4 < size; i4++) {
                    if (this.f34825a[this.f34826b + i4] != aVar.f34825a[aVar.f34826b + i4]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i4 = 1;
            for (int i10 = this.f34826b; i10 < this.f34827c; i10++) {
                i4 = (i4 * 31) + d.j(this.f34825a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int l10;
            if (!(obj instanceof Double) || (l10 = d.l(this.f34825a, ((Double) obj).doubleValue(), this.f34826b, this.f34827c)) < 0) {
                return -1;
            }
            return l10 - this.f34826b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int q9;
            if (!(obj instanceof Double) || (q9 = d.q(this.f34825a, ((Double) obj).doubleValue(), this.f34826b, this.f34827c)) < 0) {
                return -1;
            }
            return q9 - this.f34826b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34827c - this.f34826b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            double[] dArr = this.f34825a;
            int i11 = this.f34826b;
            return new a(dArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 12);
            sb.append('[');
            sb.append(this.f34825a[this.f34826b]);
            int i4 = this.f34826b;
            while (true) {
                i4++;
                if (i4 < this.f34827c) {
                    sb.append(", ");
                    sb.append(this.f34825a[i4]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        a(double[] dArr, int i4, int i10) {
            this.f34825a = dArr;
            this.f34826b = i4;
            this.f34827c = i10;
        }
    }

    /* compiled from: Doubles.java */
    /* loaded from: classes2.dex */
    private static final class b extends com.google.common.base.h<String, Double> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        static final b f34828c = new b();

        /* renamed from: d  reason: collision with root package name */
        private static final long f34829d = 1;

        private b() {
        }

        private Object r() {
            return f34828c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: p */
        public String k(Double d4) {
            return d4.toString();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: q */
        public Double l(String str) {
            return Double.valueOf(str);
        }

        public String toString() {
            return "Doubles.stringConverter()";
        }
    }

    /* compiled from: Doubles.java */
    /* loaded from: classes2.dex */
    private enum c implements Comparator<double[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(double[] dArr, double[] dArr2) {
            int min = Math.min(dArr.length, dArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int compare = Double.compare(dArr[i4], dArr2[i4]);
                if (compare != 0) {
                    return compare;
                }
            }
            return dArr.length - dArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Doubles.lexicographicalComparator()";
        }
    }

    private d() {
    }

    @h3.c
    @NullableDecl
    @h3.a
    public static Double A(String str) {
        if (f34823b.matcher(str).matches()) {
            try {
                return Double.valueOf(Double.parseDouble(str));
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    public static List<Double> c(double... dArr) {
        if (dArr.length == 0) {
            return Collections.emptyList();
        }
        return new a(dArr);
    }

    public static int d(double d4, double d10) {
        return Double.compare(d4, d10);
    }

    public static double[] e(double[]... dArr) {
        int i4 = 0;
        for (double[] dArr2 : dArr) {
            i4 += dArr2.length;
        }
        double[] dArr3 = new double[i4];
        int i10 = 0;
        for (double[] dArr4 : dArr) {
            System.arraycopy(dArr4, 0, dArr3, i10, dArr4.length);
            i10 += dArr4.length;
        }
        return dArr3;
    }

    @h3.a
    public static double f(double d4, double d10, double d11) {
        a0.y(d10 <= d11, "min (%s) must be less than or equal to max (%s)", Double.valueOf(d10), Double.valueOf(d11));
        return Math.min(Math.max(d4, d10), d11);
    }

    public static boolean g(double[] dArr, double d4) {
        for (double d10 : dArr) {
            if (d10 == d4) {
                return true;
            }
        }
        return false;
    }

    public static double[] h(double[] dArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return dArr.length < i4 ? Arrays.copyOf(dArr, i4 + i10) : dArr;
    }

    @h3.c
    private static Pattern i() {
        return Pattern.compile(("[+-]?(?:NaN|Infinity|" + ("(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)(?:[eE][+-]?\\d+#)?[fFdD]?") + "|" + ("0[xX](?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)[pP][+-]?\\d+#[fFdD]?") + ")").replace("#", "+"));
    }

    public static int j(double d4) {
        return Double.valueOf(d4).hashCode();
    }

    public static int k(double[] dArr, double d4) {
        return l(dArr, d4, 0, dArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(double[] dArr, double d4, int i4, int i10) {
        while (i4 < i10) {
            if (dArr[i4] == d4) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int m(double[] r8, double[] r9) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.a0.F(r8, r0)
            java.lang.String r0 = "target"
            com.google.common.base.a0.F(r9, r0)
            int r0 = r9.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r8.length
            int r3 = r9.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2c
            r2 = 0
        L18:
            int r3 = r9.length
            if (r2 >= r3) goto L2b
            int r3 = r0 + r2
            r3 = r8[r3]
            r5 = r9[r2]
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L28
            int r0 = r0 + 1
            goto L10
        L28:
            int r2 = r2 + 1
            goto L18
        L2b:
            return r0
        L2c:
            r8 = -1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.d.m(double[], double[]):int");
    }

    public static boolean n(double d4) {
        return Double.NEGATIVE_INFINITY < d4 && d4 < Double.POSITIVE_INFINITY;
    }

    public static String o(String str, double... dArr) {
        a0.E(str);
        if (dArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(dArr.length * 12);
        sb.append(dArr[0]);
        for (int i4 = 1; i4 < dArr.length; i4++) {
            sb.append(str);
            sb.append(dArr[i4]);
        }
        return sb.toString();
    }

    public static int p(double[] dArr, double d4) {
        return q(dArr, d4, 0, dArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int q(double[] dArr, double d4, int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            if (dArr[i11] == d4) {
                return i11;
            }
        }
        return -1;
    }

    public static Comparator<double[]> r() {
        return c.INSTANCE;
    }

    public static double s(double... dArr) {
        a0.d(dArr.length > 0);
        double d4 = dArr[0];
        for (int i4 = 1; i4 < dArr.length; i4++) {
            d4 = Math.max(d4, dArr[i4]);
        }
        return d4;
    }

    public static double t(double... dArr) {
        a0.d(dArr.length > 0);
        double d4 = dArr[0];
        for (int i4 = 1; i4 < dArr.length; i4++) {
            d4 = Math.min(d4, dArr[i4]);
        }
        return d4;
    }

    public static void u(double[] dArr) {
        a0.E(dArr);
        v(dArr, 0, dArr.length);
    }

    public static void v(double[] dArr, int i4, int i10) {
        a0.E(dArr);
        a0.f0(i4, i10, dArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            double d4 = dArr[i4];
            dArr[i4] = dArr[i11];
            dArr[i11] = d4;
            i4++;
        }
    }

    public static void w(double[] dArr) {
        a0.E(dArr);
        x(dArr, 0, dArr.length);
    }

    public static void x(double[] dArr, int i4, int i10) {
        a0.E(dArr);
        a0.f0(i4, i10, dArr.length);
        Arrays.sort(dArr, i4, i10);
        v(dArr, i4, i10);
    }

    @h3.a
    public static com.google.common.base.h<String, Double> y() {
        return b.f34828c;
    }

    public static double[] z(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i4 = 0; i4 < length; i4++) {
            dArr[i4] = ((Number) a0.E(array[i4])).doubleValue();
        }
        return dArr;
    }
}
