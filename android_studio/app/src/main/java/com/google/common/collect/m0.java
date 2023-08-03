package com.google.common.collect;

import com.google.common.collect.k3;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DescendingImmutableSortedMultiset.java */
@h3.c
/* loaded from: classes2.dex */
public final class m0<E> extends ImmutableSortedMultiset<E> {

    /* renamed from: e  reason: collision with root package name */
    private final transient ImmutableSortedMultiset<E> f33736e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.f33736e = immutableSortedMultiset;
    }

    @Override // com.google.common.collect.k3
    public int count(@NullableDecl Object obj) {
        return this.f33736e.count(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return this.f33736e.e();
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> firstEntry() {
        return this.f33736e.lastEntry();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 headMultiset(Object obj, BoundType boundType) {
        return headMultiset((m0<E>) obj, boundType);
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> lastEntry() {
        return this.f33736e.firstEntry();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    k3.a<E> m(int i4) {
        return this.f33736e.entrySet().asList().reverse().get(i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public int size() {
        return this.f33736e.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((m0<E>) obj, boundType);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.f33736e;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public ImmutableSortedMultiset<E> headMultiset(E e4, BoundType boundType) {
        return this.f33736e.tailMultiset((ImmutableSortedMultiset<E>) e4, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public ImmutableSortedMultiset<E> tailMultiset(E e4, BoundType boundType) {
        return this.f33736e.headMultiset((ImmutableSortedMultiset<E>) e4, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.k3
    public ImmutableSortedSet<E> elementSet() {
        return this.f33736e.elementSet().descendingSet();
    }
}
