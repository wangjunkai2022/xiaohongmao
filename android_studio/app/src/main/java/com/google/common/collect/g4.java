package com.google.common.collect;

import com.google.common.collect.k3;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableSortedMultiset.java */
@h3.c
/* loaded from: classes2.dex */
public final class g4<E> extends ImmutableSortedMultiset<E> {

    /* renamed from: i  reason: collision with root package name */
    private static final long[] f33528i = {0};

    /* renamed from: j  reason: collision with root package name */
    static final ImmutableSortedMultiset<Comparable> f33529j = new g4(s3.B());
    @h3.d

    /* renamed from: e  reason: collision with root package name */
    final transient h4<E> f33530e;

    /* renamed from: f  reason: collision with root package name */
    private final transient long[] f33531f;

    /* renamed from: g  reason: collision with root package name */
    private final transient int f33532g;

    /* renamed from: h  reason: collision with root package name */
    private final transient int f33533h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(Comparator<? super E> comparator) {
        this.f33530e = ImmutableSortedSet.s(comparator);
        this.f33531f = f33528i;
        this.f33532g = 0;
        this.f33533h = 0;
    }

    private int p(int i4) {
        long[] jArr = this.f33531f;
        int i10 = this.f33532g;
        return (int) (jArr[(i10 + i4) + 1] - jArr[i10 + i4]);
    }

    @Override // com.google.common.collect.k3
    public int count(@NullableDecl Object obj) {
        int indexOf = this.f33530e.indexOf(obj);
        if (indexOf >= 0) {
            return p(indexOf);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return this.f33532g > 0 || this.f33533h < this.f33531f.length - 1;
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return m(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 headMultiset(Object obj, BoundType boundType) {
        return headMultiset((g4<E>) obj, boundType);
    }

    @Override // com.google.common.collect.v4
    public k3.a<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return m(this.f33533h - 1);
    }

    @Override // com.google.common.collect.ImmutableMultiset
    k3.a<E> m(int i4) {
        return l3.k(this.f33530e.asList().get(i4), p(i4));
    }

    ImmutableSortedMultiset<E> q(int i4, int i10) {
        com.google.common.base.a0.f0(i4, i10, this.f33533h);
        if (i4 == i10) {
            return ImmutableSortedMultiset.o(comparator());
        }
        return (i4 == 0 && i10 == this.f33533h) ? this : new g4(this.f33530e.C(i4, i10), this.f33531f, this.f33532g + i4, i10 - i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public int size() {
        long[] jArr = this.f33531f;
        int i4 = this.f33532g;
        return com.google.common.primitives.f.x(jArr[this.f33533h + i4] - jArr[i4]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public /* bridge */ /* synthetic */ v4 tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((g4<E>) obj, boundType);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public ImmutableSortedMultiset<E> headMultiset(E e4, BoundType boundType) {
        return q(0, this.f33530e.D(e4, com.google.common.base.a0.E(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.v4
    public ImmutableSortedMultiset<E> tailMultiset(E e4, BoundType boundType) {
        return q(this.f33530e.E(e4, com.google.common.base.a0.E(boundType) == BoundType.CLOSED), this.f33533h);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.k3
    public ImmutableSortedSet<E> elementSet() {
        return this.f33530e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(h4<E> h4Var, long[] jArr, int i4, int i10) {
        this.f33530e = h4Var;
        this.f33531f = jArr;
        this.f33532g = i4;
        this.f33533h = i10;
    }
}
