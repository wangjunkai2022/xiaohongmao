package com.google.common.collect;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmutableMapKeySet.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class n2<K, V> extends t2<K> {

    /* renamed from: f  reason: collision with root package name */
    private final ImmutableMap<K, V> f33749f;

    /* compiled from: ImmutableMapKeySet.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class a<K> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f33750b = 0;

        /* renamed from: a  reason: collision with root package name */
        final ImmutableMap<K, ?> f33751a;

        a(ImmutableMap<K, ?> immutableMap) {
            this.f33751a = immutableMap;
        }

        Object a() {
            return this.f33751a.keySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n2(ImmutableMap<K, V> immutableMap) {
        this.f33749f = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return this.f33749f.containsKey(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean e() {
        return true;
    }

    @Override // com.google.common.collect.t2
    K get(int i4) {
        return this.f33749f.entrySet().asList().get(i4).getKey();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    @h3.c
    Object h() {
        return new a(this.f33749f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f33749f.size();
    }

    @Override // com.google.common.collect.t2, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public k5<K> iterator() {
        return this.f33749f.k();
    }
}
