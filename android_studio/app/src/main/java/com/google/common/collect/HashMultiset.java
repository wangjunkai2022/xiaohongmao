package com.google.common.collect;

import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class HashMultiset<E> extends f<E> {
    @h3.c

    /* renamed from: f  reason: collision with root package name */
    private static final long f32697f = 0;

    HashMultiset(int i4) {
        super(i4);
    }

    public static <E> HashMultiset<E> create() {
        return create(3);
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ boolean contains(@NullableDecl Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.i, com.google.common.collect.k3
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.f
    void h(int i4) {
        this.f33412c = new q3<>(i4);
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public static <E> HashMultiset<E> create(int i4) {
        return new HashMultiset<>(i4);
    }

    public static <E> HashMultiset<E> create(Iterable<? extends E> iterable) {
        HashMultiset<E> create = create(l3.l(iterable));
        w2.a(create, iterable);
        return create;
    }
}
