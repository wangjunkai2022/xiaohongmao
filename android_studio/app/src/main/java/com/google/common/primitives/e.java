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
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Floats.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final int f34832a = 4;

    /* compiled from: Floats.java */
    @h3.b
    /* loaded from: classes2.dex */
    private static class a extends AbstractList<Float> implements RandomAccess, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34833d = 0;

        /* renamed from: a  reason: collision with root package name */
        final float[] f34834a;

        /* renamed from: b  reason: collision with root package name */
        final int f34835b;

        /* renamed from: c  reason: collision with root package name */
        final int f34836c;

        a(float[] fArr) {
            this(fArr, 0, fArr.length);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Float get(int i4) {
            a0.C(i4, size());
            return Float.valueOf(this.f34834a[this.f34835b + i4]);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public Float set(int i4, Float f10) {
            a0.C(i4, size());
            float[] fArr = this.f34834a;
            int i10 = this.f34835b;
            float f11 = fArr[i10 + i4];
            fArr[i10 + i4] = ((Float) a0.E(f10)).floatValue();
            return Float.valueOf(f11);
        }

        float[] c() {
            return Arrays.copyOfRange(this.f34834a, this.f34835b, this.f34836c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Float) && e.k(this.f34834a, ((Float) obj).floatValue(), this.f34835b, this.f34836c) != -1;
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
                    if (this.f34834a[this.f34835b + i4] != aVar.f34834a[aVar.f34835b + i4]) {
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
            for (int i10 = this.f34835b; i10 < this.f34836c; i10++) {
                i4 = (i4 * 31) + e.i(this.f34834a[i10]);
            }
            return i4;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int k10;
            if (!(obj instanceof Float) || (k10 = e.k(this.f34834a, ((Float) obj).floatValue(), this.f34835b, this.f34836c)) < 0) {
                return -1;
            }
            return k10 - this.f34835b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int p9;
            if (!(obj instanceof Float) || (p9 = e.p(this.f34834a, ((Float) obj).floatValue(), this.f34835b, this.f34836c)) < 0) {
                return -1;
            }
            return p9 - this.f34835b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34836c - this.f34835b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Float> subList(int i4, int i10) {
            a0.f0(i4, i10, size());
            if (i4 == i10) {
                return Collections.emptyList();
            }
            float[] fArr = this.f34834a;
            int i11 = this.f34835b;
            return new a(fArr, i4 + i11, i11 + i10);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 12);
            sb.append('[');
            sb.append(this.f34834a[this.f34835b]);
            int i4 = this.f34835b;
            while (true) {
                i4++;
                if (i4 < this.f34836c) {
                    sb.append(", ");
                    sb.append(this.f34834a[i4]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        a(float[] fArr, int i4, int i10) {
            this.f34834a = fArr;
            this.f34835b = i4;
            this.f34836c = i10;
        }
    }

    /* compiled from: Floats.java */
    /* loaded from: classes2.dex */
    private static final class b extends com.google.common.base.h<String, Float> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        static final b f34837c = new b();

        /* renamed from: d  reason: collision with root package name */
        private static final long f34838d = 1;

        private b() {
        }

        private Object r() {
            return f34837c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: p */
        public String k(Float f10) {
            return f10.toString();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.h
        /* renamed from: q */
        public Float l(String str) {
            return Float.valueOf(str);
        }

        public String toString() {
            return "Floats.stringConverter()";
        }
    }

    /* compiled from: Floats.java */
    /* loaded from: classes2.dex */
    private enum c implements Comparator<float[]> {
        INSTANCE;

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(float[] fArr, float[] fArr2) {
            int min = Math.min(fArr.length, fArr2.length);
            for (int i4 = 0; i4 < min; i4++) {
                int compare = Float.compare(fArr[i4], fArr2[i4]);
                if (compare != 0) {
                    return compare;
                }
            }
            return fArr.length - fArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Floats.lexicographicalComparator()";
        }
    }

    private e() {
    }

    public static List<Float> c(float... fArr) {
        if (fArr.length == 0) {
            return Collections.emptyList();
        }
        return new a(fArr);
    }

    public static int d(float f10, float f11) {
        return Float.compare(f10, f11);
    }

    public static float[] e(float[]... fArr) {
        int i4 = 0;
        for (float[] fArr2 : fArr) {
            i4 += fArr2.length;
        }
        float[] fArr3 = new float[i4];
        int i10 = 0;
        for (float[] fArr4 : fArr) {
            System.arraycopy(fArr4, 0, fArr3, i10, fArr4.length);
            i10 += fArr4.length;
        }
        return fArr3;
    }

    @h3.a
    public static float f(float f10, float f11, float f12) {
        a0.y(f11 <= f12, "min (%s) must be less than or equal to max (%s)", Float.valueOf(f11), Float.valueOf(f12));
        return Math.min(Math.max(f10, f11), f12);
    }

    public static boolean g(float[] fArr, float f10) {
        for (float f11 : fArr) {
            if (f11 == f10) {
                return true;
            }
        }
        return false;
    }

    public static float[] h(float[] fArr, int i4, int i10) {
        a0.k(i4 >= 0, "Invalid minLength: %s", i4);
        a0.k(i10 >= 0, "Invalid padding: %s", i10);
        return fArr.length < i4 ? Arrays.copyOf(fArr, i4 + i10) : fArr;
    }

    public static int i(float f10) {
        return Float.valueOf(f10).hashCode();
    }

    public static int j(float[] fArr, float f10) {
        return k(fArr, f10, 0, fArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(float[] fArr, float f10, int i4, int i10) {
        while (i4 < i10) {
            if (fArr[i4] == f10) {
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
    public static int l(float[] r5, float[] r6) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.a0.F(r5, r0)
            java.lang.String r0 = "target"
            com.google.common.base.a0.F(r6, r0)
            int r0 = r6.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r5.length
            int r3 = r6.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2c
            r2 = 0
        L18:
            int r3 = r6.length
            if (r2 >= r3) goto L2b
            int r3 = r0 + r2
            r3 = r5[r3]
            r4 = r6[r2]
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 == 0) goto L28
            int r0 = r0 + 1
            goto L10
        L28:
            int r2 = r2 + 1
            goto L18
        L2b:
            return r0
        L2c:
            r5 = -1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.e.l(float[], float[]):int");
    }

    public static boolean m(float f10) {
        return Float.NEGATIVE_INFINITY < f10 && f10 < Float.POSITIVE_INFINITY;
    }

    public static String n(String str, float... fArr) {
        a0.E(str);
        if (fArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(fArr.length * 12);
        sb.append(fArr[0]);
        for (int i4 = 1; i4 < fArr.length; i4++) {
            sb.append(str);
            sb.append(fArr[i4]);
        }
        return sb.toString();
    }

    public static int o(float[] fArr, float f10) {
        return p(fArr, f10, 0, fArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(float[] fArr, float f10, int i4, int i10) {
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            if (fArr[i11] == f10) {
                return i11;
            }
        }
        return -1;
    }

    public static Comparator<float[]> q() {
        return c.INSTANCE;
    }

    public static float r(float... fArr) {
        a0.d(fArr.length > 0);
        float f10 = fArr[0];
        for (int i4 = 1; i4 < fArr.length; i4++) {
            f10 = Math.max(f10, fArr[i4]);
        }
        return f10;
    }

    public static float s(float... fArr) {
        a0.d(fArr.length > 0);
        float f10 = fArr[0];
        for (int i4 = 1; i4 < fArr.length; i4++) {
            f10 = Math.min(f10, fArr[i4]);
        }
        return f10;
    }

    public static void t(float[] fArr) {
        a0.E(fArr);
        u(fArr, 0, fArr.length);
    }

    public static void u(float[] fArr, int i4, int i10) {
        a0.E(fArr);
        a0.f0(i4, i10, fArr.length);
        for (int i11 = i10 - 1; i4 < i11; i11--) {
            float f10 = fArr[i4];
            fArr[i4] = fArr[i11];
            fArr[i11] = f10;
            i4++;
        }
    }

    public static void v(float[] fArr) {
        a0.E(fArr);
        w(fArr, 0, fArr.length);
    }

    public static void w(float[] fArr, int i4, int i10) {
        a0.E(fArr);
        a0.f0(i4, i10, fArr.length);
        Arrays.sort(fArr, i4, i10);
        u(fArr, i4, i10);
    }

    @h3.a
    public static com.google.common.base.h<String, Float> x() {
        return b.f34837c;
    }

    public static float[] y(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).c();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        float[] fArr = new float[length];
        for (int i4 = 0; i4 < length; i4++) {
            fArr[i4] = ((Number) a0.E(array[i4])).floatValue();
        }
        return fArr;
    }

    @h3.c
    @NullableDecl
    @h3.a
    public static Float z(String str) {
        if (d.f34823b.matcher(str).matches()) {
            try {
                return Float.valueOf(Float.parseFloat(str));
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }
}
