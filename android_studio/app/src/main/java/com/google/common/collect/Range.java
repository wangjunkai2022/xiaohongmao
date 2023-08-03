package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b
/* loaded from: classes2.dex */
public final class Range<C extends Comparable> extends w3 implements com.google.common.base.b0<C>, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final Range<Comparable> f32932c = new Range<>(k0.c(), k0.a());

    /* renamed from: d  reason: collision with root package name */
    private static final long f32933d = 0;

    /* renamed from: a  reason: collision with root package name */
    final k0<C> f32934a;

    /* renamed from: b  reason: collision with root package name */
    final k0<C> f32935b;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32936a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f32936a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32936a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    static class b implements com.google.common.base.q<Range, k0> {

        /* renamed from: a  reason: collision with root package name */
        static final b f32937a = new b();

        b() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public k0 apply(Range range) {
            return range.f32934a;
        }
    }

    /* loaded from: classes2.dex */
    private static class c extends s3<Range<?>> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        static final s3<Range<?>> f32938c = new c();

        /* renamed from: d  reason: collision with root package name */
        private static final long f32939d = 0;

        private c() {
        }

        @Override // com.google.common.collect.s3, java.util.Comparator
        /* renamed from: J */
        public int compare(Range<?> range, Range<?> range2) {
            return g0.n().i(range.f32934a, range2.f32934a).i(range.f32935b, range2.f32935b).m();
        }
    }

    /* loaded from: classes2.dex */
    static class d implements com.google.common.base.q<Range, k0> {

        /* renamed from: a  reason: collision with root package name */
        static final d f32940a = new d();

        d() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public k0 apply(Range range) {
            return range.f32935b;
        }
    }

    private Range(k0<C> k0Var, k0<C> k0Var2) {
        this.f32934a = (k0) com.google.common.base.a0.E(k0Var);
        this.f32935b = (k0) com.google.common.base.a0.E(k0Var2);
        if (k0Var.compareTo(k0Var2) > 0 || k0Var == k0.a() || k0Var2 == k0.c()) {
            throw new IllegalArgumentException("Invalid range: " + i(k0Var, k0Var2));
        }
    }

    private static <T> SortedSet<T> a(Iterable<T> iterable) {
        return (SortedSet) iterable;
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return (Range<C>) f32932c;
    }

    public static <C extends Comparable<?>> Range<C> atLeast(C c10) {
        return c(k0.d(c10), k0.a());
    }

    public static <C extends Comparable<?>> Range<C> atMost(C c10) {
        return c(k0.c(), k0.b(c10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> Range<C> c(k0<C> k0Var, k0<C> k0Var2) {
        return new Range<>(k0Var, k0Var2);
    }

    public static <C extends Comparable<?>> Range<C> closed(C c10, C c11) {
        return c(k0.d(c10), k0.b(c11));
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c10, C c11) {
        return c(k0.d(c10), k0.d(c11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> com.google.common.base.q<Range<C>, k0<C>> d() {
        return b.f32937a;
    }

    public static <C extends Comparable<?>> Range<C> downTo(C c10, BoundType boundType) {
        int i4 = a.f32936a[boundType.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                return atLeast(c10);
            }
            throw new AssertionError();
        }
        return greaterThan(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> s3<Range<C>> e() {
        return (s3<Range<C>>) c.f32938c;
    }

    public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> iterable) {
        com.google.common.base.a0.E(iterable);
        if (iterable instanceof SortedSet) {
            SortedSet a10 = a(iterable);
            Comparator comparator = a10.comparator();
            if (s3.B().equals(comparator) || comparator == null) {
                return closed((Comparable) a10.first(), (Comparable) a10.last());
            }
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) com.google.common.base.a0.E(it.next());
        Comparable comparable2 = comparable;
        while (it.hasNext()) {
            Comparable comparable3 = (Comparable) com.google.common.base.a0.E(it.next());
            comparable = (Comparable) s3.B().y(comparable, comparable3);
            comparable2 = (Comparable) s3.B().u(comparable2, comparable3);
        }
        return closed(comparable, comparable2);
    }

    public static <C extends Comparable<?>> Range<C> greaterThan(C c10) {
        return c(k0.b(c10), k0.a());
    }

    private static String i(k0<?> k0Var, k0<?> k0Var2) {
        StringBuilder sb = new StringBuilder(16);
        k0Var.i(sb);
        sb.append("..");
        k0Var2.k(sb);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> com.google.common.base.q<Range<C>, k0<C>> j() {
        return d.f32940a;
    }

    public static <C extends Comparable<?>> Range<C> lessThan(C c10) {
        return c(k0.c(), k0.d(c10));
    }

    public static <C extends Comparable<?>> Range<C> open(C c10, C c11) {
        return c(k0.b(c10), k0.d(c11));
    }

    public static <C extends Comparable<?>> Range<C> openClosed(C c10, C c11) {
        return c(k0.b(c10), k0.b(c11));
    }

    public static <C extends Comparable<?>> Range<C> range(C c10, BoundType boundType, C c11, BoundType boundType2) {
        com.google.common.base.a0.E(boundType);
        com.google.common.base.a0.E(boundType2);
        BoundType boundType3 = BoundType.OPEN;
        return c(boundType == boundType3 ? k0.b(c10) : k0.d(c10), boundType2 == boundType3 ? k0.d(c11) : k0.b(c11));
    }

    public static <C extends Comparable<?>> Range<C> singleton(C c10) {
        return closed(c10, c10);
    }

    public static <C extends Comparable<?>> Range<C> upTo(C c10, BoundType boundType) {
        int i4 = a.f32936a[boundType.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                return atMost(c10);
            }
            throw new AssertionError();
        }
        return lessThan(c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.b0
    @Deprecated
    public /* bridge */ /* synthetic */ boolean apply(Object obj) {
        return apply((Range<C>) ((Comparable) obj));
    }

    public Range<C> canonical(p0<C> p0Var) {
        com.google.common.base.a0.E(p0Var);
        k0<C> e4 = this.f32934a.e(p0Var);
        k0<C> e10 = this.f32935b.e(p0Var);
        return (e4 == this.f32934a && e10 == this.f32935b) ? this : c(e4, e10);
    }

    public boolean contains(C c10) {
        com.google.common.base.a0.E(c10);
        return this.f32934a.n(c10) && !this.f32935b.n(c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean containsAll(Iterable<? extends C> iterable) {
        if (w2.C(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet a10 = a(iterable);
            Comparator comparator = a10.comparator();
            if (s3.B().equals(comparator) || comparator == null) {
                return contains((Comparable) a10.first()) && contains((Comparable) a10.last());
            }
        }
        for (C c10 : iterable) {
            if (!contains(c10)) {
                return false;
            }
        }
        return true;
    }

    public boolean encloses(Range<C> range) {
        return this.f32934a.compareTo(range.f32934a) <= 0 && this.f32935b.compareTo(range.f32935b) >= 0;
    }

    @Override // com.google.common.base.b0
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof Range) {
            Range range = (Range) obj;
            return this.f32934a.equals(range.f32934a) && this.f32935b.equals(range.f32935b);
        }
        return false;
    }

    public Range<C> gap(Range<C> range) {
        boolean z9 = this.f32934a.compareTo(range.f32934a) < 0;
        Range<C> range2 = z9 ? this : range;
        if (!z9) {
            range = this;
        }
        return c(range2.f32935b, range.f32934a);
    }

    Object h() {
        return equals(f32932c) ? all() : this;
    }

    public boolean hasLowerBound() {
        return this.f32934a != k0.c();
    }

    public boolean hasUpperBound() {
        return this.f32935b != k0.a();
    }

    public int hashCode() {
        return (this.f32934a.hashCode() * 31) + this.f32935b.hashCode();
    }

    public Range<C> intersection(Range<C> range) {
        int compareTo = this.f32934a.compareTo(range.f32934a);
        int compareTo2 = this.f32935b.compareTo(range.f32935b);
        if (compareTo < 0 || compareTo2 > 0) {
            if (compareTo > 0 || compareTo2 < 0) {
                return c(compareTo >= 0 ? this.f32934a : range.f32934a, compareTo2 <= 0 ? this.f32935b : range.f32935b);
            }
            return range;
        }
        return this;
    }

    public boolean isConnected(Range<C> range) {
        return this.f32934a.compareTo(range.f32935b) <= 0 && range.f32934a.compareTo(this.f32935b) <= 0;
    }

    public boolean isEmpty() {
        return this.f32934a.equals(this.f32935b);
    }

    public BoundType lowerBoundType() {
        return this.f32934a.p();
    }

    public C lowerEndpoint() {
        return this.f32934a.l();
    }

    public Range<C> span(Range<C> range) {
        int compareTo = this.f32934a.compareTo(range.f32934a);
        int compareTo2 = this.f32935b.compareTo(range.f32935b);
        if (compareTo > 0 || compareTo2 < 0) {
            if (compareTo < 0 || compareTo2 > 0) {
                return c(compareTo <= 0 ? this.f32934a : range.f32934a, compareTo2 >= 0 ? this.f32935b : range.f32935b);
            }
            return range;
        }
        return this;
    }

    public String toString() {
        return i(this.f32934a, this.f32935b);
    }

    public BoundType upperBoundType() {
        return this.f32935b.q();
    }

    public C upperEndpoint() {
        return this.f32935b.l();
    }

    @Deprecated
    public boolean apply(C c10) {
        return contains(c10);
    }
}
