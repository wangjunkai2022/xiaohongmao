package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.x4;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractSortedMultiset.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
abstract class o<E> extends i<E> implements v4<E> {
    @f2

    /* renamed from: c  reason: collision with root package name */
    final Comparator<? super E> f33756c;
    @MonotonicNonNullDecl

    /* renamed from: d  reason: collision with root package name */
    private transient v4<E> f33757d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractSortedMultiset.java */
    /* loaded from: classes2.dex */
    public class a extends o0<E> {
        a() {
        }

        @Override // com.google.common.collect.o0
        Iterator<k3.a<E>> i0() {
            return o.this.j();
        }

        @Override // com.google.common.collect.o0, com.google.common.collect.e1, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return o.this.descendingIterator();
        }

        @Override // com.google.common.collect.o0
        v4<E> j0() {
            return o.this;
        }
    }

    o() {
        this(s3.B());
    }

    public Comparator<? super E> comparator() {
        return this.f33756c;
    }

    Iterator<E> descendingIterator() {
        return l3.n(descendingMultiset());
    }

    public v4<E> descendingMultiset() {
        v4<E> v4Var = this.f33757d;
        if (v4Var == null) {
            v4<E> e4 = e();
            this.f33757d = e4;
            return e4;
        }
        return v4Var;
    }

    v4<E> e() {
        return new a();
    }

    public k3.a<E> firstEntry() {
        Iterator<k3.a<E>> d4 = d();
        if (d4.hasNext()) {
            return d4.next();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.i
    /* renamed from: h */
    public NavigableSet<E> a() {
        return new x4.b(this);
    }

    abstract Iterator<k3.a<E>> j();

    public k3.a<E> lastEntry() {
        Iterator<k3.a<E>> j4 = j();
        if (j4.hasNext()) {
            return j4.next();
        }
        return null;
    }

    public k3.a<E> pollFirstEntry() {
        Iterator<k3.a<E>> d4 = d();
        if (d4.hasNext()) {
            k3.a<E> next = d4.next();
            k3.a<E> k10 = l3.k(next.getElement(), next.getCount());
            d4.remove();
            return k10;
        }
        return null;
    }

    public k3.a<E> pollLastEntry() {
        Iterator<k3.a<E>> j4 = j();
        if (j4.hasNext()) {
            k3.a<E> next = j4.next();
            k3.a<E> k10 = l3.k(next.getElement(), next.getCount());
            j4.remove();
            return k10;
        }
        return null;
    }

    public v4<E> subMultiset(@NullableDecl E e4, BoundType boundType, @NullableDecl E e10, BoundType boundType2) {
        com.google.common.base.a0.E(boundType);
        com.google.common.base.a0.E(boundType2);
        return tailMultiset(e4, boundType).headMultiset(e10, boundType2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Comparator<? super E> comparator) {
        this.f33756c = (Comparator) com.google.common.base.a0.E(comparator);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }
}
