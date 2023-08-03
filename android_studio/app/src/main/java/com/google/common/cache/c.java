package com.google.common.cache;

import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CompatibleWith;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Cache.java */
@h3.b
/* loaded from: classes2.dex */
public interface c<K, V> {
    ImmutableMap<K, V> G(Iterable<?> iterable);

    f J();

    void K();

    ConcurrentMap<K, V> asMap();

    void c();

    V e(K k10, Callable<? extends V> callable) throws ExecutionException;

    void put(K k10, V v9);

    void putAll(Map<? extends K, ? extends V> map);

    void q(@CompatibleWith("K") Object obj);

    @NullableDecl
    V s(@CompatibleWith("K") Object obj);

    long size();

    void u(Iterable<?> iterable);
}
