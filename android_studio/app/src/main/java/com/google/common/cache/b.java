package com.google.common.cache;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.f3;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* compiled from: AbstractLoadingCache.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class b<K, V> extends a<K, V> implements i<K, V> {
    protected b() {
    }

    @Override // com.google.common.cache.i
    public void D(K k10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.i, com.google.common.base.q
    public final V apply(K k10) {
        return b(k10);
    }

    @Override // com.google.common.cache.i
    public V b(K k10) {
        try {
            return get(k10);
        } catch (ExecutionException e4) {
            throw new UncheckedExecutionException(e4.getCause());
        }
    }

    @Override // com.google.common.cache.i
    public ImmutableMap<K, V> h(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap c02 = f3.c0();
        for (K k10 : iterable) {
            if (!c02.containsKey(k10)) {
                c02.put(k10, get(k10));
            }
        }
        return ImmutableMap.copyOf((Map) c02);
    }
}
