package com.google.common.collect;

import com.google.common.collect.k3;
import com.google.common.collect.l3;
import java.util.Comparator;
import java.util.NavigableSet;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnmodifiableSortedMultiset.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class m5<E> extends l3.m<E> implements v4<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f33746f = 0;
    @MonotonicNonNullDecl

    /* renamed from: e  reason: collision with root package name */
    private transient m5<E> f33747e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m5(v4<E> v4Var) {
        super(v4Var);
    }

    @Override // com.google.common.collect.v4, com.google.common.collect.r4
    public Comparator<? super E> comparator() {
        return Y().comparator();
    }

    @Override // com.google.common.collect.v4
    public v4<E> descendingMultiset() {
        m5<E> m5Var = this.f33747e;
        if (m5Var == null) {
            m5<E> m5Var2 = new m5<>(Y().descendingMultiset());
            m5Var2.f33747e = this;
            this.f33747e = m5Var2;
            return m5Var2;
        }
        return m5Var;
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> firstEntry() {
        return Y().firstEntry();
    }

    @Override // com.google.common.collect.v4
    public v4<E> headMultiset(E e4, BoundType boundType) {
        return l3.B(Y().headMultiset(e4, boundType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.l3.m
    /* renamed from: i0 */
    public NavigableSet<E> h0() {
        return o4.O(Y().elementSet());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.l3.m, com.google.common.collect.s1
    /* renamed from: j0 */
    public v4<E> Y() {
        return (v4) super.M();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> lastEntry() {
        return Y().lastEntry();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.v4
    public v4<E> subMultiset(E e4, BoundType boundType, E e10, BoundType boundType2) {
        return l3.B(Y().subMultiset(e4, boundType, e10, boundType2));
    }

    @Override // com.google.common.collect.v4
    public v4<E> tailMultiset(E e4, BoundType boundType) {
        return l3.B(Y().tailMultiset(e4, boundType));
    }

    @Override // com.google.common.collect.l3.m, com.google.common.collect.s1, com.google.common.collect.k3
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }
}
