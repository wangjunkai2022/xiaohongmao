package com.google.common.collect;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegularImmutableSet.java */
@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class f4<E> extends ImmutableSet<E> {

    /* renamed from: k  reason: collision with root package name */
    static final f4<Object> f33487k = new f4<>(new Object[0], 0, null, 0, 0);
    @h3.d

    /* renamed from: f  reason: collision with root package name */
    final transient Object[] f33488f;
    @h3.d

    /* renamed from: g  reason: collision with root package name */
    final transient Object[] f33489g;

    /* renamed from: h  reason: collision with root package name */
    private final transient int f33490h;

    /* renamed from: i  reason: collision with root package name */
    private final transient int f33491i;

    /* renamed from: j  reason: collision with root package name */
    private final transient int f33492j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f4(Object[] objArr, int i4, Object[] objArr2, int i10, int i11) {
        this.f33488f = objArr;
        this.f33489g = objArr2;
        this.f33490h = i10;
        this.f33491i = i4;
        this.f33492j = i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int a(Object[] objArr, int i4) {
        System.arraycopy(this.f33488f, 0, objArr, i4, this.f33492j);
        return i4 + this.f33492j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] b() {
        return this.f33488f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int c() {
        return this.f33492j;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f33489g;
        if (obj == null || objArr == null) {
            return false;
        }
        int d4 = h2.d(obj);
        while (true) {
            int i4 = d4 & this.f33490h;
            Object obj2 = objArr[i4];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            d4 = i4 + 1;
        }
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

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f33491i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet
    public ImmutableList<E> n() {
        return ImmutableList.k(this.f33488f, this.f33492j);
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f33492j;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<E> iterator() {
        return asList().iterator();
    }
}
