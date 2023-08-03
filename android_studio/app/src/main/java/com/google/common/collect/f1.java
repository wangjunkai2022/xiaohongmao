package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.ConcurrentMap;

/* compiled from: ForwardingConcurrentMap.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class f1<K, V> extends p1<K, V> implements ConcurrentMap<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.p1
    /* renamed from: W */
    public abstract ConcurrentMap<K, V> M();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V putIfAbsent(K k10, V v9) {
        return M().putIfAbsent(k10, v9);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean remove(Object obj, Object obj2) {
        return M().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V replace(K k10, V v9) {
        return M().replace(k10, v9);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean replace(K k10, V v9, V v10) {
        return M().replace(k10, v9, v10);
    }
}
