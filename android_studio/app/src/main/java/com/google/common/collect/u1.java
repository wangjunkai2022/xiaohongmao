package com.google.common.collect;

import com.google.common.collect.o4;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* compiled from: ForwardingNavigableSet.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class u1<E> extends b2<E> implements NavigableSet<E> {

    /* compiled from: ForwardingNavigableSet.java */
    @h3.a
    /* loaded from: classes2.dex */
    protected class a extends o4.g<E> {
        public a() {
            super(u1.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.b2
    public SortedSet<E> c0(E e4, E e10) {
        return subSet(e4, true, e10, false);
    }

    public E ceiling(E e4) {
        return b0().ceiling(e4);
    }

    public Iterator<E> descendingIterator() {
        return b0().descendingIterator();
    }

    public NavigableSet<E> descendingSet() {
        return b0().descendingSet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.b2
    /* renamed from: e0 */
    public abstract NavigableSet<E> b0();

    protected E f0(E e4) {
        return (E) x2.J(tailSet(e4, true).iterator(), null);
    }

    public E floor(E e4) {
        return b0().floor(e4);
    }

    protected E g0() {
        return iterator().next();
    }

    protected E h0(E e4) {
        return (E) x2.J(headSet(e4, true).descendingIterator(), null);
    }

    public NavigableSet<E> headSet(E e4, boolean z9) {
        return b0().headSet(e4, z9);
    }

    public E higher(E e4) {
        return b0().higher(e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SortedSet<E> i0(E e4) {
        return headSet(e4, false);
    }

    protected E j0(E e4) {
        return (E) x2.J(tailSet(e4, false).iterator(), null);
    }

    protected E k0() {
        return descendingIterator().next();
    }

    protected E l0(E e4) {
        return (E) x2.J(headSet(e4, false).descendingIterator(), null);
    }

    public E lower(E e4) {
        return b0().lower(e4);
    }

    protected E m0() {
        return (E) x2.U(iterator());
    }

    protected E n0() {
        return (E) x2.U(descendingIterator());
    }

    @h3.a
    protected NavigableSet<E> p0(E e4, boolean z9, E e10, boolean z10) {
        return tailSet(e4, z9).headSet(e10, z10);
    }

    public E pollFirst() {
        return b0().pollFirst();
    }

    public E pollLast() {
        return b0().pollLast();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SortedSet<E> q0(E e4) {
        return tailSet(e4, true);
    }

    public NavigableSet<E> subSet(E e4, boolean z9, E e10, boolean z10) {
        return b0().subSet(e4, z9, e10, z10);
    }

    public NavigableSet<E> tailSet(E e4, boolean z9) {
        return b0().tailSet(e4, z9);
    }
}
