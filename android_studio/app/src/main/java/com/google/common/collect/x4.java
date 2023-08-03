package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.j2objc.annotations.Weak;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: SortedMultisets.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
final class x4 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SortedMultisets.java */
    /* loaded from: classes2.dex */
    public static class a<E> extends l3.h<E> implements SortedSet<E> {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        private final v4<E> f33976a;

        a(v4<E> v4Var) {
            this.f33976a = v4Var;
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return e().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l3.h
        /* renamed from: f */
        public final v4<E> e() {
            return this.f33976a;
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) x4.d(e().firstEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e4) {
            return e().headMultiset(e4, BoundType.OPEN).elementSet();
        }

        @Override // com.google.common.collect.l3.h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return l3.h(e().entrySet().iterator());
        }

        @Override // java.util.SortedSet
        public E last() {
            return (E) x4.d(e().lastEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e4, E e10) {
            return e().subMultiset(e4, BoundType.CLOSED, e10, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e4) {
            return e().tailMultiset(e4, BoundType.CLOSED).elementSet();
        }
    }

    /* compiled from: SortedMultisets.java */
    @h3.c
    /* loaded from: classes2.dex */
    static class b<E> extends a<E> implements NavigableSet<E> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(v4<E> v4Var) {
            super(v4Var);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e4) {
            return (E) x4.c(e().tailMultiset(e4, BoundType.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return new b(e().descendingMultiset());
        }

        @Override // java.util.NavigableSet
        public E floor(E e4) {
            return (E) x4.c(e().headMultiset(e4, BoundType.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e4, boolean z9) {
            return new b(e().headMultiset(e4, BoundType.b(z9)));
        }

        @Override // java.util.NavigableSet
        public E higher(E e4) {
            return (E) x4.c(e().tailMultiset(e4, BoundType.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        public E lower(E e4) {
            return (E) x4.c(e().headMultiset(e4, BoundType.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) x4.c(e().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) x4.c(e().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
            return new b(e().subMultiset(e4, BoundType.b(z9), e10, BoundType.b(z10)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e4, boolean z9) {
            return new b(e().tailMultiset(e4, BoundType.b(z9)));
        }
    }

    private x4() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> E c(@NullableDecl k3.a<E> aVar) {
        if (aVar == null) {
            return null;
        }
        return aVar.getElement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> E d(k3.a<E> aVar) {
        if (aVar != null) {
            return aVar.getElement();
        }
        throw new NoSuchElementException();
    }
}
