package com.google.common.cache;

import com.google.common.base.a0;
import com.google.common.collect.ImmutableMap;
import java.util.concurrent.ExecutionException;

/* compiled from: ForwardingLoadingCache.java */
@h3.c
/* loaded from: classes2.dex */
public abstract class h<K, V> extends g<K, V> implements i<K, V> {

    /* compiled from: ForwardingLoadingCache.java */
    /* loaded from: classes2.dex */
    public static abstract class a<K, V> extends h<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final i<K, V> f32404a;

        protected a(i<K, V> iVar) {
            this.f32404a = (i) a0.E(iVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.cache.h, com.google.common.cache.g
        /* renamed from: N */
        public final i<K, V> M() {
            return this.f32404a;
        }
    }

    protected h() {
    }

    @Override // com.google.common.cache.i
    public void D(K k10) {
        M().D(k10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.cache.g
    /* renamed from: N */
    public abstract i<K, V> M();

    @Override // com.google.common.cache.i, com.google.common.base.q
    public V apply(K k10) {
        return M().apply(k10);
    }

    @Override // com.google.common.cache.i
    public V b(K k10) {
        return M().b(k10);
    }

    @Override // com.google.common.cache.i
    public V get(K k10) throws ExecutionException {
        return M().get(k10);
    }

    @Override // com.google.common.cache.i
    public ImmutableMap<K, V> h(Iterable<? extends K> iterable) throws ExecutionException {
        return M().h(iterable);
    }
}
