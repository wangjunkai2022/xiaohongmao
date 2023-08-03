package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingList.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class m1<E> extends e1<E> implements List<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    /* renamed from: Y */
    public abstract List<E> M();

    protected boolean Z(E e4) {
        add(size(), e4);
        return true;
    }

    protected boolean a0(int i4, Iterable<? extends E> iterable) {
        return b3.a(this, i4, iterable);
    }

    @Override // java.util.List
    public void add(int i4, E e4) {
        M().add(i4, e4);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    public boolean addAll(int i4, Collection<? extends E> collection) {
        return M().addAll(i4, collection);
    }

    @h3.a
    protected boolean b0(@NullableDecl Object obj) {
        return b3.j(this, obj);
    }

    @h3.a
    protected int c0() {
        return b3.k(this);
    }

    protected int d0(@NullableDecl Object obj) {
        return b3.l(this, obj);
    }

    protected Iterator<E> e0() {
        return listIterator();
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || M().equals(obj);
    }

    protected int f0(@NullableDecl Object obj) {
        return b3.n(this, obj);
    }

    protected ListIterator<E> g0() {
        return listIterator(0);
    }

    @Override // java.util.List
    public E get(int i4) {
        return M().get(i4);
    }

    @h3.a
    protected ListIterator<E> h0(int i4) {
        return b3.p(this, i4);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return M().hashCode();
    }

    @h3.a
    protected List<E> i0(int i4, int i10) {
        return b3.C(this, i4, i10);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return M().indexOf(obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return M().lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return M().listIterator();
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    public E remove(int i4) {
        return M().remove(i4);
    }

    @Override // java.util.List
    @CanIgnoreReturnValue
    public E set(int i4, E e4) {
        return M().set(i4, e4);
    }

    @Override // java.util.List
    public List<E> subList(int i4, int i10) {
        return M().subList(i4, i10);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i4) {
        return M().listIterator(i4);
    }
}
