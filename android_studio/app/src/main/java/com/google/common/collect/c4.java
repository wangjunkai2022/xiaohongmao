package com.google.common.collect;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableList.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class c4<E> extends ImmutableList<E> {

    /* renamed from: e  reason: collision with root package name */
    static final ImmutableList<Object> f33180e = new c4(new Object[0], 0);
    @h3.d

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f33181c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f33182d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c4(Object[] objArr, int i4) {
        this.f33181c = objArr;
        this.f33182d = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public int a(Object[] objArr, int i4) {
        System.arraycopy(this.f33181c, 0, objArr, i4, this.f33182d);
        return i4 + this.f33182d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] b() {
        return this.f33181c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int c() {
        return this.f33182d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int d() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return false;
    }

    @Override // java.util.List
    public E get(int i4) {
        com.google.common.base.a0.C(i4, this.f33182d);
        return (E) this.f33181c[i4];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f33182d;
    }
}
