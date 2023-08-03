package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularContiguousSet.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class z3<C extends Comparable> extends ContiguousSet<C> {

    /* renamed from: j  reason: collision with root package name */
    private static final long f33995j = 0;

    /* renamed from: i  reason: collision with root package name */
    private final Range<C> f33996i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RegularContiguousSet.java */
    /* loaded from: classes2.dex */
    public class a extends l<C> {

        /* renamed from: b  reason: collision with root package name */
        final C f33997b;

        a(Comparable comparable) {
            super(comparable);
            this.f33997b = (C) z3.this.last();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.l
        /* renamed from: b */
        public C a(C c10) {
            if (z3.G(c10, this.f33997b)) {
                return null;
            }
            return z3.this.f32634h.i(c10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RegularContiguousSet.java */
    /* loaded from: classes2.dex */
    public class b extends l<C> {

        /* renamed from: b  reason: collision with root package name */
        final C f33999b;

        b(Comparable comparable) {
            super(comparable);
            this.f33999b = (C) z3.this.first();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.l
        /* renamed from: b */
        public C a(C c10) {
            if (z3.G(c10, this.f33999b)) {
                return null;
            }
            return z3.this.f32634h.k(c10);
        }
    }

    /* compiled from: RegularContiguousSet.java */
    /* loaded from: classes2.dex */
    class c extends i2<C> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.i2
        /* renamed from: p */
        public ImmutableSortedSet<C> o() {
            return z3.this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        /* renamed from: q */
        public C get(int i4) {
            com.google.common.base.a0.C(i4, size());
            z3 z3Var = z3.this;
            return (C) z3Var.f32634h.j(z3Var.first(), i4);
        }
    }

    /* compiled from: RegularContiguousSet.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static final class d<C extends Comparable> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Range<C> f34002a;

        /* renamed from: b  reason: collision with root package name */
        final p0<C> f34003b;

        /* synthetic */ d(Range range, p0 p0Var, a aVar) {
            this(range, p0Var);
        }

        private Object a() {
            return new z3(this.f34002a, this.f34003b);
        }

        private d(Range<C> range, p0<C> p0Var) {
            this.f34002a = range;
            this.f34003b = p0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z3(Range<C> range, p0<C> p0Var) {
        super(p0Var);
        this.f33996i = range;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean G(Comparable<?> comparable, @NullableDecl Comparable<?> comparable2) {
        return comparable2 != null && Range.b(comparable, comparable2) == 0;
    }

    private ContiguousSet<C> I(Range<C> range) {
        return this.f33996i.isConnected(range) ? ContiguousSet.create(this.f33996i.intersection(range), this.f32634h) : new q0(this.f32634h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: C */
    public ContiguousSet<C> t(C c10, boolean z9) {
        return I(Range.upTo(c10, BoundType.b(z9)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: D */
    public ContiguousSet<C> v(C c10, boolean z9, C c11, boolean z10) {
        if (c10.compareTo(c11) == 0 && !z9 && !z10) {
            return new q0(this.f32634h);
        }
        return I(Range.range(c10, BoundType.b(z9), c11, BoundType.b(z10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: E */
    public ContiguousSet<C> w(C c10, boolean z9) {
        return I(Range.downTo(c10, BoundType.b(z9)));
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: H */
    public C first() {
        return this.f33996i.f32934a.o(this.f32634h);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: J */
    public C last() {
        return this.f33996i.f32935b.m(this.f32634h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.f33996i.contains((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return z.c(this, collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof z3) {
            z3 z3Var = (z3) obj;
            if (this.f32634h.equals(z3Var.f32634h)) {
                return first().equals(z3Var.first()) && last().equals(z3Var.last());
            }
        }
        return super.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    @h3.c
    Object h() {
        return new d(this.f33996i, this.f32634h, null);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return o4.k(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet
    @h3.c
    public int indexOf(Object obj) {
        if (contains(obj)) {
            return (int) this.f32634h.b(first(), (Comparable) obj);
        }
        return -1;
    }

    @Override // com.google.common.collect.ContiguousSet
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        com.google.common.base.a0.E(contiguousSet);
        com.google.common.base.a0.d(this.f32634h.equals(contiguousSet.f32634h));
        if (contiguousSet.isEmpty()) {
            return contiguousSet;
        }
        Comparable comparable = (Comparable) s3.B().u(first(), contiguousSet.first());
        Comparable comparable2 = (Comparable) s3.B().y(last(), contiguousSet.last());
        return comparable.compareTo(comparable2) <= 0 ? ContiguousSet.create(Range.closed(comparable, comparable2), this.f32634h) : new q0(this.f32634h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet
    public ImmutableList<C> n() {
        if (this.f32634h.f33814a) {
            return new c();
        }
        return super.n();
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range() {
        BoundType boundType = BoundType.CLOSED;
        return range(boundType, boundType);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long b10 = this.f32634h.b(first(), last());
        if (b10 >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) b10) + 1;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public k5<C> descendingIterator() {
        return new b(last());
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<C> iterator() {
        return new a(first());
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        return Range.c(this.f33996i.f32934a.r(boundType, this.f32634h), this.f33996i.f32935b.s(boundType2, this.f32634h));
    }
}
