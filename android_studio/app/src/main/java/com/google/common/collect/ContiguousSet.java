package com.google.common.collect;

import com.google.common.collect.ImmutableSortedSet;
import java.lang.Comparable;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {

    /* renamed from: h  reason: collision with root package name */
    final p0<C> f32634h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContiguousSet(p0<C> p0Var) {
        super(s3.B());
        this.f32634h = p0Var;
    }

    @Deprecated
    public static <E> ImmutableSortedSet.a<E> builder() {
        throw new UnsupportedOperationException();
    }

    @h3.a
    public static ContiguousSet<Integer> closed(int i4, int i10) {
        return create(Range.closed(Integer.valueOf(i4), Integer.valueOf(i10)), p0.c());
    }

    @h3.a
    public static ContiguousSet<Integer> closedOpen(int i4, int i10) {
        return create(Range.closedOpen(Integer.valueOf(i4), Integer.valueOf(i10)), p0.c());
    }

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, p0<C> p0Var) {
        com.google.common.base.a0.E(range);
        com.google.common.base.a0.E(p0Var);
        try {
            Range<C> intersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(p0Var.h())) : range;
            if (!range.hasUpperBound()) {
                intersection = intersection.intersection(Range.atMost(p0Var.e()));
            }
            return intersection.isEmpty() || Range.b(range.f32934a.o(p0Var), range.f32935b.m(p0Var)) > 0 ? new q0(p0Var) : new z3(intersection, p0Var);
        } catch (NoSuchElementException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: C */
    public abstract ContiguousSet<C> t(C c10, boolean z9);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: D */
    public abstract ContiguousSet<C> v(C c10, boolean z9, C c11, boolean z10);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: E */
    public abstract ContiguousSet<C> w(C c10, boolean z9);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSet(Object obj) {
        return headSet((ContiguousSet<C>) ((Comparable) obj));
    }

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    @Override // com.google.common.collect.ImmutableSortedSet
    @h3.c
    ImmutableSortedSet<C> r() {
        return new n0(this);
    }

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet tailSet(Object obj) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj));
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return range().toString();
    }

    @h3.a
    public static ContiguousSet<Long> closed(long j4, long j10) {
        return create(Range.closed(Long.valueOf(j4), Long.valueOf(j10)), p0.d());
    }

    @h3.a
    public static ContiguousSet<Long> closedOpen(long j4, long j10) {
        return create(Range.closedOpen(Long.valueOf(j4), Long.valueOf(j10)), p0.d());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSet(Object obj, boolean z9) {
        return headSet((ContiguousSet<C>) ((Comparable) obj), z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ ImmutableSortedSet subSet(Object obj, boolean z9, Object obj2, boolean z10) {
        return subSet((boolean) ((Comparable) obj), z9, (boolean) ((Comparable) obj2), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ ImmutableSortedSet tailSet(Object obj, boolean z9) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj), z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ NavigableSet headSet(Object obj, boolean z9) {
        return headSet((ContiguousSet<C>) ((Comparable) obj), z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ NavigableSet subSet(Object obj, boolean z9, Object obj2, boolean z10) {
        return subSet((boolean) ((Comparable) obj), z9, (boolean) ((Comparable) obj2), z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c
    public /* bridge */ /* synthetic */ NavigableSet tailSet(Object obj, boolean z9) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj), z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet((ContiguousSet<C>) ((Comparable) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet((ContiguousSet<C>) ((Comparable) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContiguousSet<C> headSet(C c10) {
        return t((Comparable) com.google.common.base.a0.E(c10), false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> subSet(C c10, C c11) {
        com.google.common.base.a0.E(c10);
        com.google.common.base.a0.E(c11);
        com.google.common.base.a0.d(comparator().compare(c10, c11) <= 0);
        return v(c10, true, c11, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContiguousSet<C> tailSet(C c10) {
        return w((Comparable) com.google.common.base.a0.E(c10), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    public ContiguousSet<C> headSet(C c10, boolean z9) {
        return t((Comparable) com.google.common.base.a0.E(c10), z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    public ContiguousSet<C> tailSet(C c10, boolean z9) {
        return w((Comparable) com.google.common.base.a0.E(c10), z9);
    }

    @h3.c
    public ContiguousSet<C> subSet(C c10, boolean z9, C c11, boolean z10) {
        com.google.common.base.a0.E(c10);
        com.google.common.base.a0.E(c11);
        com.google.common.base.a0.d(comparator().compare(c10, c11) <= 0);
        return v(c10, z9, c11, z10);
    }
}
