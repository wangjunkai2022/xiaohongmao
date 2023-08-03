package com.google.common.primitives;

import com.google.common.base.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.HttpUrl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
@h3.b
@h3.a
/* loaded from: classes2.dex */
public final class ImmutableDoubleArray implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final ImmutableDoubleArray f34776d = new ImmutableDoubleArray(new double[0]);

    /* renamed from: a  reason: collision with root package name */
    private final double[] f34777a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f34778b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34779c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AbstractList<Double> implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableDoubleArray f34780a;

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public Double get(int i4) {
            return Double.valueOf(this.f34780a.get(i4));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                return this.f34780a.equals(((b) obj).f34780a);
            }
            if (obj instanceof List) {
                List list = (List) obj;
                if (size() != list.size()) {
                    return false;
                }
                int i4 = this.f34780a.f34778b;
                for (Object obj2 : list) {
                    if (obj2 instanceof Double) {
                        int i10 = i4 + 1;
                        if (ImmutableDoubleArray.e(this.f34780a.f34777a[i4], ((Double) obj2).doubleValue())) {
                            i4 = i10;
                        }
                    }
                    return false;
                }
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.f34780a.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Double) {
                return this.f34780a.indexOf(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Double) {
                return this.f34780a.lastIndexOf(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34780a.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i4, int i10) {
            return this.f34780a.subArray(i4, i10).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.f34780a.toString();
        }

        private b(ImmutableDoubleArray immutableDoubleArray) {
            this.f34780a = immutableDoubleArray;
        }
    }

    @CanIgnoreReturnValue
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private double[] f34781a;

        /* renamed from: b  reason: collision with root package name */
        private int f34782b = 0;

        c(int i4) {
            this.f34781a = new double[i4];
        }

        private void g(int i4) {
            int i10 = this.f34782b + i4;
            double[] dArr = this.f34781a;
            if (i10 > dArr.length) {
                double[] dArr2 = new double[h(dArr.length, i10)];
                System.arraycopy(this.f34781a, 0, dArr2, 0, this.f34782b);
                this.f34781a = dArr2;
            }
        }

        private static int h(int i4, int i10) {
            if (i10 >= 0) {
                int i11 = i4 + (i4 >> 1) + 1;
                if (i11 < i10) {
                    i11 = Integer.highestOneBit(i10 - 1) << 1;
                }
                if (i11 < 0) {
                    return Integer.MAX_VALUE;
                }
                return i11;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        public c a(double d4) {
            g(1);
            double[] dArr = this.f34781a;
            int i4 = this.f34782b;
            dArr[i4] = d4;
            this.f34782b = i4 + 1;
            return this;
        }

        public c b(ImmutableDoubleArray immutableDoubleArray) {
            g(immutableDoubleArray.length());
            System.arraycopy(immutableDoubleArray.f34777a, immutableDoubleArray.f34778b, this.f34781a, this.f34782b, immutableDoubleArray.length());
            this.f34782b += immutableDoubleArray.length();
            return this;
        }

        public c c(Iterable<Double> iterable) {
            if (iterable instanceof Collection) {
                return d((Collection) iterable);
            }
            for (Double d4 : iterable) {
                a(d4.doubleValue());
            }
            return this;
        }

        public c d(Collection<Double> collection) {
            g(collection.size());
            for (Double d4 : collection) {
                double[] dArr = this.f34781a;
                int i4 = this.f34782b;
                this.f34782b = i4 + 1;
                dArr[i4] = d4.doubleValue();
            }
            return this;
        }

        public c e(double[] dArr) {
            g(dArr.length);
            System.arraycopy(dArr, 0, this.f34781a, this.f34782b, dArr.length);
            this.f34782b += dArr.length;
            return this;
        }

        @CheckReturnValue
        public ImmutableDoubleArray f() {
            return this.f34782b == 0 ? ImmutableDoubleArray.f34776d : new ImmutableDoubleArray(this.f34781a, 0, this.f34782b);
        }
    }

    public static c builder(int i4) {
        a0.k(i4 >= 0, "Invalid initialCapacity: %s", i4);
        return new c(i4);
    }

    public static ImmutableDoubleArray copyOf(double[] dArr) {
        return dArr.length == 0 ? f34776d : new ImmutableDoubleArray(Arrays.copyOf(dArr, dArr.length));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(double d4, double d10) {
        return Double.doubleToLongBits(d4) == Double.doubleToLongBits(d10);
    }

    private boolean h() {
        return this.f34778b > 0 || this.f34779c < this.f34777a.length;
    }

    public static ImmutableDoubleArray of() {
        return f34776d;
    }

    public List<Double> asList() {
        return new b();
    }

    public boolean contains(double d4) {
        return indexOf(d4) >= 0;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableDoubleArray) {
            ImmutableDoubleArray immutableDoubleArray = (ImmutableDoubleArray) obj;
            if (length() != immutableDoubleArray.length()) {
                return false;
            }
            for (int i4 = 0; i4 < length(); i4++) {
                if (!e(get(i4), immutableDoubleArray.get(i4))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public double get(int i4) {
        a0.C(i4, length());
        return this.f34777a[this.f34778b + i4];
    }

    public int hashCode() {
        int i4 = 1;
        for (int i10 = this.f34778b; i10 < this.f34779c; i10++) {
            i4 = (i4 * 31) + d.j(this.f34777a[i10]);
        }
        return i4;
    }

    Object i() {
        return isEmpty() ? f34776d : this;
    }

    public int indexOf(double d4) {
        for (int i4 = this.f34778b; i4 < this.f34779c; i4++) {
            if (e(this.f34777a[i4], d4)) {
                return i4 - this.f34778b;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.f34779c == this.f34778b;
    }

    Object j() {
        return trimmed();
    }

    public int lastIndexOf(double d4) {
        int i4 = this.f34779c;
        while (true) {
            i4--;
            if (i4 < this.f34778b) {
                return -1;
            }
            if (e(this.f34777a[i4], d4)) {
                return i4 - this.f34778b;
            }
        }
    }

    public int length() {
        return this.f34779c - this.f34778b;
    }

    public ImmutableDoubleArray subArray(int i4, int i10) {
        a0.f0(i4, i10, length());
        if (i4 == i10) {
            return f34776d;
        }
        double[] dArr = this.f34777a;
        int i11 = this.f34778b;
        return new ImmutableDoubleArray(dArr, i4 + i11, i11 + i10);
    }

    public double[] toArray() {
        return Arrays.copyOfRange(this.f34777a, this.f34778b, this.f34779c);
    }

    public String toString() {
        if (isEmpty()) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.f34777a[this.f34778b]);
        int i4 = this.f34778b;
        while (true) {
            i4++;
            if (i4 < this.f34779c) {
                sb.append(", ");
                sb.append(this.f34777a[i4]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableDoubleArray trimmed() {
        return h() ? new ImmutableDoubleArray(toArray()) : this;
    }

    private ImmutableDoubleArray(double[] dArr) {
        this(dArr, 0, dArr.length);
    }

    public static ImmutableDoubleArray of(double d4) {
        return new ImmutableDoubleArray(new double[]{d4});
    }

    private ImmutableDoubleArray(double[] dArr, int i4, int i10) {
        this.f34777a = dArr;
        this.f34778b = i4;
        this.f34779c = i10;
    }

    public static c builder() {
        return new c(10);
    }

    public static ImmutableDoubleArray copyOf(Collection<Double> collection) {
        return collection.isEmpty() ? f34776d : new ImmutableDoubleArray(d.z(collection));
    }

    public static ImmutableDoubleArray of(double d4, double d10) {
        return new ImmutableDoubleArray(new double[]{d4, d10});
    }

    public static ImmutableDoubleArray copyOf(Iterable<Double> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Double>) iterable);
        }
        return builder().c(iterable).f();
    }

    public static ImmutableDoubleArray of(double d4, double d10, double d11) {
        return new ImmutableDoubleArray(new double[]{d4, d10, d11});
    }

    public static ImmutableDoubleArray of(double d4, double d10, double d11, double d12) {
        return new ImmutableDoubleArray(new double[]{d4, d10, d11, d12});
    }

    public static ImmutableDoubleArray of(double d4, double d10, double d11, double d12, double d13) {
        return new ImmutableDoubleArray(new double[]{d4, d10, d11, d12, d13});
    }

    public static ImmutableDoubleArray of(double d4, double d10, double d11, double d12, double d13, double d14) {
        return new ImmutableDoubleArray(new double[]{d4, d10, d11, d12, d13, d14});
    }

    public static ImmutableDoubleArray of(double d4, double... dArr) {
        a0.e(dArr.length <= 2147483646, "the total number of elements must fit in an int");
        double[] dArr2 = new double[dArr.length + 1];
        dArr2[0] = d4;
        System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
        return new ImmutableDoubleArray(dArr2);
    }
}
