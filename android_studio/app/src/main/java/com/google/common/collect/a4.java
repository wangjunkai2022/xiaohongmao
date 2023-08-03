package com.google.common.collect;

/* compiled from: RegularImmutableAsList.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
class a4<E> extends i2<E> {

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableCollection<E> f33068c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableList<? extends E> f33069d;

    a4(ImmutableCollection<E> immutableCollection, ImmutableList<? extends E> immutableList) {
        this.f33068c = immutableCollection;
        this.f33069d = immutableList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    @h3.c
    public int a(Object[] objArr, int i4) {
        return this.f33069d.a(objArr, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] b() {
        return this.f33069d.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int c() {
        return this.f33069d.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int d() {
        return this.f33069d.d();
    }

    @Override // java.util.List
    public E get(int i4) {
        return this.f33069d.get(i4);
    }

    @Override // com.google.common.collect.i2
    ImmutableCollection<E> o() {
        return this.f33068c;
    }

    ImmutableList<? extends E> p() {
        return this.f33069d;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public l5<E> listIterator(int i4) {
        return (l5<? extends E>) this.f33069d.listIterator(i4);
    }

    a4(ImmutableCollection<E> immutableCollection, Object[] objArr) {
        this(immutableCollection, ImmutableList.j(objArr));
    }

    a4(ImmutableCollection<E> immutableCollection, Object[] objArr, int i4) {
        this(immutableCollection, ImmutableList.k(objArr, i4));
    }
}
