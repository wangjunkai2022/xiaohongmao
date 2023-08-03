package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: MemoryCache.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface u<K, V> extends com.facebook.common.memory.b, com.facebook.cache.common.f {

    /* compiled from: MemoryCache.java */
    /* loaded from: classes.dex */
    public interface a {
        double a(MemoryTrimType trimType);
    }

    void a(K key);

    int b();

    @r7.h
    com.facebook.common.references.a<V> c(K key, com.facebook.common.references.a<V> value);

    boolean contains(K key);

    @r7.h
    V d(K key);

    @r7.h
    com.facebook.common.references.a<V> get(K key);

    int getCount();

    int k(com.facebook.common.internal.k<K> predicate);

    boolean l(com.facebook.common.internal.k<K> predicate);
}
