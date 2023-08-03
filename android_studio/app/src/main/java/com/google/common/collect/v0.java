package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredEntrySetMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public final class v0<K, V> extends u0<K, V> implements b1<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(n4<K, V> n4Var, com.google.common.base.b0<? super Map.Entry<K, V>> b0Var) {
        super(n4Var, b0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.u0, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((v0<K, V>) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.u0, com.google.common.collect.h
    /* renamed from: p */
    public Set<Map.Entry<K, V>> c() {
        return o4.i(a().entries(), v());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((v0<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.u0, com.google.common.collect.z0
    public n4<K, V> a() {
        return (n4) this.f33891f;
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.u0, com.google.common.collect.h3, com.google.common.collect.a3
    public Set<V> get(K k10) {
        return (Set) super.get((v0<K, V>) k10);
    }

    @Override // com.google.common.collect.u0, com.google.common.collect.h3, com.google.common.collect.a3
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((v0<K, V>) k10, (Iterable) iterable);
    }
}
