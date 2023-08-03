package com.google.common.collect;

import com.google.errorprone.annotations.concurrent.LazyInit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingletonImmutableSet.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class p4<E> extends ImmutableSet<E> {

    /* renamed from: f  reason: collision with root package name */
    final transient E f33826f;
    @LazyInit

    /* renamed from: g  reason: collision with root package name */
    private transient int f33827g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p4(E e4) {
        this.f33826f = (E) com.google.common.base.a0.E(e4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int a(Object[] objArr, int i4) {
        objArr[i4] = this.f33826f;
        return i4 + 1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f33826f.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i4 = this.f33827g;
        if (i4 == 0) {
            int hashCode = this.f33826f.hashCode();
            this.f33827g = hashCode;
            return hashCode;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet
    public ImmutableList<E> n() {
        return ImmutableList.of((Object) this.f33826f);
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean o() {
        return this.f33827g != 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.f33826f.toString() + ']';
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return x2.Y(this.f33826f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p4(E e4, int i4) {
        this.f33826f = e4;
        this.f33827g = i4;
    }
}
