package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.x4;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

/* compiled from: ForwardingSortedMultiset.java */
@h3.b(emulated = true)
@h3.a
/* loaded from: classes2.dex */
public abstract class a2<E> extends s1<E> implements v4<E> {

    /* compiled from: ForwardingSortedMultiset.java */
    /* loaded from: classes2.dex */
    protected abstract class a extends o0<E> {
        public a() {
        }

        @Override // com.google.common.collect.o0
        v4<E> j0() {
            return a2.this;
        }
    }

    /* compiled from: ForwardingSortedMultiset.java */
    /* loaded from: classes2.dex */
    protected class b extends x4.b<E> {
        public b() {
            super(a2.this);
        }
    }

    protected a2() {
    }

    @Override // com.google.common.collect.v4, com.google.common.collect.r4
    public Comparator<? super E> comparator() {
        return Y().comparator();
    }

    @Override // com.google.common.collect.v4
    public v4<E> descendingMultiset() {
        return Y().descendingMultiset();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> firstEntry() {
        return Y().firstEntry();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.s1
    /* renamed from: h0 */
    public abstract v4<E> Y();

    @Override // com.google.common.collect.v4
    public v4<E> headMultiset(E e4, BoundType boundType) {
        return Y().headMultiset(e4, boundType);
    }

    protected k3.a<E> i0() {
        Iterator<k3.a<E>> it = entrySet().iterator();
        if (it.hasNext()) {
            k3.a<E> next = it.next();
            return l3.k(next.getElement(), next.getCount());
        }
        return null;
    }

    protected k3.a<E> j0() {
        Iterator<k3.a<E>> it = descendingMultiset().entrySet().iterator();
        if (it.hasNext()) {
            k3.a<E> next = it.next();
            return l3.k(next.getElement(), next.getCount());
        }
        return null;
    }

    protected k3.a<E> k0() {
        Iterator<k3.a<E>> it = entrySet().iterator();
        if (it.hasNext()) {
            k3.a<E> next = it.next();
            k3.a<E> k10 = l3.k(next.getElement(), next.getCount());
            it.remove();
            return k10;
        }
        return null;
    }

    protected k3.a<E> l0() {
        Iterator<k3.a<E>> it = descendingMultiset().entrySet().iterator();
        if (it.hasNext()) {
            k3.a<E> next = it.next();
            k3.a<E> k10 = l3.k(next.getElement(), next.getCount());
            it.remove();
            return k10;
        }
        return null;
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> lastEntry() {
        return Y().lastEntry();
    }

    protected v4<E> m0(E e4, BoundType boundType, E e10, BoundType boundType2) {
        return tailMultiset(e4, boundType).headMultiset(e10, boundType2);
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> pollFirstEntry() {
        return Y().pollFirstEntry();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> pollLastEntry() {
        return Y().pollLastEntry();
    }

    @Override // com.google.common.collect.v4
    public v4<E> subMultiset(E e4, BoundType boundType, E e10, BoundType boundType2) {
        return Y().subMultiset(e4, boundType, e10, boundType2);
    }

    @Override // com.google.common.collect.v4
    public v4<E> tailMultiset(E e4, BoundType boundType) {
        return Y().tailMultiset(e4, boundType);
    }

    @Override // com.google.common.collect.s1, com.google.common.collect.k3
    public NavigableSet<E> elementSet() {
        return Y().elementSet();
    }
}
