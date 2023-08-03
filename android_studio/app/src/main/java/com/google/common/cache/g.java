package com.google.common.cache;

import com.google.common.base.a0;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.v1;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingCache.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class g<K, V> extends v1 implements c<K, V> {

    /* compiled from: ForwardingCache.java */
    /* loaded from: classes2.dex */
    public static abstract class a<K, V> extends g<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final c<K, V> f32403a;

        protected a(c<K, V> cVar) {
            this.f32403a = (c) a0.E(cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.cache.g, com.google.common.collect.v1
        /* renamed from: M */
        public final c<K, V> L() {
            return this.f32403a;
        }
    }

    @Override // com.google.common.cache.c
    public ImmutableMap<K, V> G(Iterable<?> iterable) {
        return L().G(iterable);
    }

    @Override // com.google.common.cache.c
    public f J() {
        return L().J();
    }

    @Override // com.google.common.cache.c
    public void K() {
        L().K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.v1
    /* renamed from: M */
    public abstract c<K, V> L();

    @Override // com.google.common.cache.c
    public ConcurrentMap<K, V> asMap() {
        return L().asMap();
    }

    @Override // com.google.common.cache.c
    public void c() {
        L().c();
    }

    @Override // com.google.common.cache.c
    public V e(K k10, Callable<? extends V> callable) throws ExecutionException {
        return L().e(k10, callable);
    }

    @Override // com.google.common.cache.c
    public void put(K k10, V v9) {
        L().put(k10, v9);
    }

    @Override // com.google.common.cache.c
    public void putAll(Map<? extends K, ? extends V> map) {
        L().putAll(map);
    }

    @Override // com.google.common.cache.c
    public void q(Object obj) {
        L().q(obj);
    }

    @Override // com.google.common.cache.c
    @NullableDecl
    public V s(Object obj) {
        return L().s(obj);
    }

    @Override // com.google.common.cache.c
    public long size() {
        return L().size();
    }

    @Override // com.google.common.cache.c
    public void u(Iterable<?> iterable) {
        L().u(iterable);
    }
}
