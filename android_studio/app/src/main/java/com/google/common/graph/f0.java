package com.google.common.graph;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: MapRetrievalCache.java */
/* loaded from: classes2.dex */
class f0<K, V> extends e0<K, V> {
    @NullableDecl

    /* renamed from: c  reason: collision with root package name */
    private transient a<K, V> f34117c;
    @NullableDecl

    /* renamed from: d  reason: collision with root package name */
    private transient a<K, V> f34118d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapRetrievalCache.java */
    /* loaded from: classes2.dex */
    public static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f34119a;

        /* renamed from: b  reason: collision with root package name */
        final V f34120b;

        a(K k10, V v9) {
            this.f34119a = k10;
            this.f34120b = v9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(Map<K, V> map) {
        super(map);
    }

    private void l(a<K, V> aVar) {
        this.f34118d = this.f34117c;
        this.f34117c = aVar;
    }

    private void m(K k10, V v9) {
        l(new a<>(k10, v9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.graph.e0
    public void d() {
        super.d();
        this.f34117c = null;
        this.f34118d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.e0
    public V f(@NullableDecl Object obj) {
        V g4 = g(obj);
        if (g4 != null) {
            return g4;
        }
        V h4 = h(obj);
        if (h4 != null) {
            m(obj, h4);
        }
        return h4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.graph.e0
    public V g(@NullableDecl Object obj) {
        V v9 = (V) super.g(obj);
        if (v9 != null) {
            return v9;
        }
        a<K, V> aVar = this.f34117c;
        if (aVar != null && aVar.f34119a == obj) {
            return aVar.f34120b;
        }
        a<K, V> aVar2 = this.f34118d;
        if (aVar2 == null || aVar2.f34119a != obj) {
            return null;
        }
        l(aVar2);
        return aVar2.f34120b;
    }
}
