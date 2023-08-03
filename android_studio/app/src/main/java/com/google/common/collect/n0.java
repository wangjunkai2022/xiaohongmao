package com.google.common.collect;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: DescendingImmutableSortedSet.java */
@h3.c
/* loaded from: classes2.dex */
final class n0<E> extends ImmutableSortedSet<E> {

    /* renamed from: h  reason: collision with root package name */
    private final ImmutableSortedSet<E> f33748h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(ImmutableSortedSet<E> immutableSortedSet) {
        super(s3.k(immutableSortedSet.comparator()).G());
        this.f33748h = immutableSortedSet;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e4) {
        return this.f33748h.floor(e4);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return this.f33748h.contains(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return this.f33748h.e();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e4) {
        return this.f33748h.ceiling(e4);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e4) {
        return this.f33748h.lower(e4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(@NullableDecl Object obj) {
        int indexOf = this.f33748h.indexOf(obj);
        return indexOf == -1 ? indexOf : (size() - 1) - indexOf;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e4) {
        return this.f33748h.higher(e4);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    @h3.c("NavigableSet")
    ImmutableSortedSet<E> r() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f33748h.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet<E> t(E e4, boolean z9) {
        return this.f33748h.tailSet((ImmutableSortedSet<E>) e4, z9).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> v(E e4, boolean z9, E e10, boolean z10) {
        return this.f33748h.subSet((boolean) e10, z10, (boolean) e4, z9).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> w(E e4, boolean z9) {
        return this.f33748h.headSet((ImmutableSortedSet<E>) e4, z9).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c("NavigableSet")
    public k5<E> descendingIterator() {
        return this.f33748h.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @h3.c("NavigableSet")
    public ImmutableSortedSet<E> descendingSet() {
        return this.f33748h;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return this.f33748h.descendingIterator();
    }
}
