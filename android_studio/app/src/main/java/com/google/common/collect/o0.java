package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import com.google.common.collect.x4;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* compiled from: DescendingMultiset.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
abstract class o0<E> extends s1<E> implements v4<E> {
    @MonotonicNonNullDecl

    /* renamed from: a  reason: collision with root package name */
    private transient Comparator<? super E> f33759a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient NavigableSet<E> f33760b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private transient Set<k3.a<E>> f33761c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DescendingMultiset.java */
    /* loaded from: classes2.dex */
    public class a extends l3.i<E> {
        a() {
        }

        @Override // com.google.common.collect.l3.i
        k3<E> e() {
            return o0.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<k3.a<E>> iterator() {
            return o0.this.i0();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return o0.this.j0().entrySet().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.s1, com.google.common.collect.e1
    /* renamed from: Y */
    public k3<E> M() {
        return j0();
    }

    @Override // com.google.common.collect.v4, com.google.common.collect.r4
    public Comparator<? super E> comparator() {
        Comparator<? super E> comparator = this.f33759a;
        if (comparator == null) {
            s3 G = s3.k(j0().comparator()).G();
            this.f33759a = G;
            return G;
        }
        return comparator;
    }

    @Override // com.google.common.collect.v4
    public v4<E> descendingMultiset() {
        return j0();
    }

    @Override // com.google.common.collect.s1, com.google.common.collect.k3
    public Set<k3.a<E>> entrySet() {
        Set<k3.a<E>> set = this.f33761c;
        if (set == null) {
            Set<k3.a<E>> h02 = h0();
            this.f33761c = h02;
            return h02;
        }
        return set;
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> firstEntry() {
        return j0().lastEntry();
    }

    Set<k3.a<E>> h0() {
        return new a();
    }

    @Override // com.google.common.collect.v4
    public v4<E> headMultiset(E e4, BoundType boundType) {
        return j0().tailMultiset(e4, boundType).descendingMultiset();
    }

    abstract Iterator<k3.a<E>> i0();

    @Override // com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return l3.n(this);
    }

    abstract v4<E> j0();

    @Override // com.google.common.collect.v4
    public k3.a<E> lastEntry() {
        return j0().firstEntry();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> pollFirstEntry() {
        return j0().pollLastEntry();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> pollLastEntry() {
        return j0().pollFirstEntry();
    }

    @Override // com.google.common.collect.v4
    public v4<E> subMultiset(E e4, BoundType boundType, E e10, BoundType boundType2) {
        return j0().subMultiset(e10, boundType2, e4, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.v4
    public v4<E> tailMultiset(E e4, BoundType boundType) {
        return j0().headMultiset(e4, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return V();
    }

    @Override // com.google.common.collect.v1
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.e1, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) W(tArr);
    }

    @Override // com.google.common.collect.s1, com.google.common.collect.k3
    public NavigableSet<E> elementSet() {
        NavigableSet<E> navigableSet = this.f33760b;
        if (navigableSet == null) {
            x4.b bVar = new x4.b(this);
            this.f33760b = bVar;
            return bVar;
        }
        return navigableSet;
    }
}
