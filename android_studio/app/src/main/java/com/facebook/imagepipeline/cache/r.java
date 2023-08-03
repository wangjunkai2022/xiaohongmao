package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: InstrumentedMemoryCache.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class r<K, V> implements u<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final u<K, V> f12139a;

    /* renamed from: b  reason: collision with root package name */
    private final w f12140b;

    public r(u<K, V> delegate, w tracker) {
        this.f12139a = delegate;
        this.f12140b = tracker;
    }

    @Override // com.facebook.imagepipeline.cache.u
    public void a(K key) {
        this.f12139a.a(key);
    }

    @Override // com.facebook.imagepipeline.cache.u
    public int b() {
        return this.f12139a.b();
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public com.facebook.common.references.a<V> c(K key, com.facebook.common.references.a<V> value) {
        this.f12140b.c(key);
        return this.f12139a.c(key, value);
    }

    @Override // com.facebook.imagepipeline.cache.u
    public boolean contains(K key) {
        return this.f12139a.contains(key);
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public V d(K key) {
        return this.f12139a.d(key);
    }

    @Override // com.facebook.imagepipeline.cache.u
    @r7.h
    public com.facebook.common.references.a<V> get(K key) {
        com.facebook.common.references.a<V> aVar = this.f12139a.get(key);
        if (aVar == null) {
            this.f12140b.b(key);
        } else {
            this.f12140b.a(key);
        }
        return aVar;
    }

    @Override // com.facebook.imagepipeline.cache.u
    public int getCount() {
        return this.f12139a.getCount();
    }

    @Override // com.facebook.cache.common.f
    @r7.h
    public String i() {
        return this.f12139a.i();
    }

    @Override // com.facebook.imagepipeline.cache.u
    public int k(com.facebook.common.internal.k<K> predicate) {
        return this.f12139a.k(predicate);
    }

    @Override // com.facebook.imagepipeline.cache.u
    public boolean l(com.facebook.common.internal.k<K> predicate) {
        return this.f12139a.l(predicate);
    }

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType trimType) {
        this.f12139a.m(trimType);
    }
}
