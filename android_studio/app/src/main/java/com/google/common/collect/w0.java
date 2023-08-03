package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredKeyListMultimap.java */
@h3.b
/* loaded from: classes2.dex */
public final class w0<K, V> extends x0<K, V> implements a3<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(a3<K, V> a3Var, com.google.common.base.b0<? super K> b0Var) {
        super(a3Var, b0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.x0, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((w0<K, V>) obj);
    }

    @Override // com.google.common.collect.x0, com.google.common.collect.z0
    /* renamed from: l */
    public a3<K, V> a() {
        return (a3) super.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((w0<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.x0, com.google.common.collect.h3, com.google.common.collect.a3
    public List<V> get(K k10) {
        return (List) super.get((w0<K, V>) k10);
    }

    @Override // com.google.common.collect.x0, com.google.common.collect.h3, com.google.common.collect.a3
    public List<V> removeAll(@NullableDecl Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public List<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((w0<K, V>) k10, (Iterable) iterable);
    }
}
