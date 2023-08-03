package com.google.common.cache;

import com.google.common.base.a0;
import com.google.common.base.i0;
import com.google.common.util.concurrent.j0;
import com.google.common.util.concurrent.q0;
import com.google.common.util.concurrent.r0;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

@h3.b(emulated = true)
/* loaded from: classes2.dex */
public abstract class CacheLoader<K, V> {

    /* loaded from: classes2.dex */
    public static final class InvalidCacheLoadException extends RuntimeException {
        public InvalidCacheLoadException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public static final class UnsupportedLoadingOperationException extends UnsupportedOperationException {
        UnsupportedLoadingOperationException() {
        }
    }

    /* loaded from: classes2.dex */
    static class a extends CacheLoader<K, V> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Executor f32330b;

        /* renamed from: com.google.common.cache.CacheLoader$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class CallableC0207a implements Callable<V> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f32331a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Object f32332b;

            CallableC0207a(Object obj, Object obj2) {
                this.f32331a = obj;
                this.f32332b = obj2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public V call() throws Exception {
                return CacheLoader.this.h(this.f32331a, this.f32332b).get();
            }
        }

        a(Executor executor) {
            this.f32330b = executor;
        }

        @Override // com.google.common.cache.CacheLoader
        public V d(K k10) throws Exception {
            return (V) CacheLoader.this.d(k10);
        }

        @Override // com.google.common.cache.CacheLoader
        public Map<K, V> e(Iterable<? extends K> iterable) throws Exception {
            return CacheLoader.this.e(iterable);
        }

        @Override // com.google.common.cache.CacheLoader
        public q0<V> h(K k10, V v9) throws Exception {
            r0 b10 = r0.b(new CallableC0207a(k10, v9));
            this.f32330b.execute(b10);
            return b10;
        }
    }

    /* loaded from: classes2.dex */
    private static final class b<K, V> extends CacheLoader<K, V> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32334b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final com.google.common.base.q<K, V> f32335a;

        public b(com.google.common.base.q<K, V> qVar) {
            this.f32335a = (com.google.common.base.q) a0.E(qVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.cache.CacheLoader
        public V d(K k10) {
            return (V) this.f32335a.apply(a0.E(k10));
        }
    }

    /* loaded from: classes2.dex */
    private static final class c<V> extends CacheLoader<Object, V> implements Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32336b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final i0<V> f32337a;

        public c(i0<V> i0Var) {
            this.f32337a = (i0) a0.E(i0Var);
        }

        @Override // com.google.common.cache.CacheLoader
        public V d(Object obj) {
            a0.E(obj);
            return this.f32337a.get();
        }
    }

    @h3.c
    public static <K, V> CacheLoader<K, V> a(CacheLoader<K, V> cacheLoader, Executor executor) {
        a0.E(cacheLoader);
        a0.E(executor);
        return new a(executor);
    }

    public static <K, V> CacheLoader<K, V> b(com.google.common.base.q<K, V> qVar) {
        return new b(qVar);
    }

    public static <V> CacheLoader<Object, V> c(i0<V> i0Var) {
        return new c(i0Var);
    }

    public abstract V d(K k10) throws Exception;

    public Map<K, V> e(Iterable<? extends K> iterable) throws Exception {
        throw new UnsupportedLoadingOperationException();
    }

    @h3.c
    public q0<V> h(K k10, V v9) throws Exception {
        a0.E(k10);
        a0.E(v9);
        return j0.n(d(k10));
    }
}
