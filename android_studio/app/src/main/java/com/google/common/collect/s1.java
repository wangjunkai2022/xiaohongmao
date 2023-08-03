package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingMultiset.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class s1<E> extends e1<E> implements k3<E> {

    /* compiled from: ForwardingMultiset.java */
    @h3.a
    /* loaded from: classes2.dex */
    protected class a extends l3.h<E> {
        public a() {
        }

        @Override // com.google.common.collect.l3.h
        k3<E> e() {
            return s1.this;
        }

        @Override // com.google.common.collect.l3.h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return l3.h(e().entrySet().iterator());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    @h3.a
    public boolean N(Collection<? extends E> collection) {
        return l3.c(this, collection);
    }

    @Override // com.google.common.collect.e1
    protected void O() {
        x2.h(entrySet().iterator());
    }

    @Override // com.google.common.collect.e1
    protected boolean P(@NullableDecl Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.e1
    protected boolean S(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // com.google.common.collect.e1
    protected boolean T(Collection<?> collection) {
        return l3.p(this, collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    public boolean U(Collection<?> collection) {
        return l3.s(this, collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    public String X() {
        return entrySet().toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.e1
    /* renamed from: Y */
    public abstract k3<E> M();

    protected boolean Z(E e4) {
        add(e4, 1);
        return true;
    }

    @h3.a
    protected int a0(@NullableDecl Object obj) {
        for (k3.a<E> aVar : entrySet()) {
            if (com.google.common.base.w.a(aVar.getElement(), obj)) {
                return aVar.getCount();
            }
        }
        return 0;
    }

    @CanIgnoreReturnValue
    public int add(E e4, int i4) {
        return M().add(e4, i4);
    }

    protected boolean b0(@NullableDecl Object obj) {
        return l3.i(this, obj);
    }

    protected int c0() {
        return entrySet().hashCode();
    }

    @Override // com.google.common.collect.k3
    public int count(Object obj) {
        return M().count(obj);
    }

    protected Iterator<E> d0() {
        return l3.n(this);
    }

    protected int e0(E e4, int i4) {
        return l3.v(this, e4, i4);
    }

    public Set<E> elementSet() {
        return M().elementSet();
    }

    public Set<k3.a<E>> entrySet() {
        return M().entrySet();
    }

    @Override // java.util.Collection, com.google.common.collect.k3
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || M().equals(obj);
    }

    protected boolean f0(E e4, int i4, int i10) {
        return l3.w(this, e4, i4, i10);
    }

    protected int g0() {
        return l3.o(this);
    }

    @Override // java.util.Collection, com.google.common.collect.k3
    public int hashCode() {
        return M().hashCode();
    }

    @CanIgnoreReturnValue
    public int remove(Object obj, int i4) {
        return M().remove(obj, i4);
    }

    @CanIgnoreReturnValue
    public int setCount(E e4, int i4) {
        return M().setCount(e4, i4);
    }

    @CanIgnoreReturnValue
    public boolean setCount(E e4, int i4, int i10) {
        return M().setCount(e4, i4, i10);
    }
}
