package com.google.common.cache;

import com.google.common.collect.ImmutableMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

/* compiled from: LoadingCache.java */
@h3.b
/* loaded from: classes2.dex */
public interface i<K, V> extends c<K, V>, com.google.common.base.q<K, V> {
    void D(K k10);

    @Deprecated
    V apply(K k10);

    @Override // com.google.common.cache.c
    ConcurrentMap<K, V> asMap();

    V b(K k10);

    V get(K k10) throws ExecutionException;

    ImmutableMap<K, V> h(Iterable<? extends K> iterable) throws ExecutionException;
}
