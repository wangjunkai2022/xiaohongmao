package com.google.common.graph;

import com.google.common.collect.ImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: UndirectedGraphConnections.java */
/* loaded from: classes2.dex */
final class q0<N, V> implements y<N, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<N, V> f34196a;

    private q0(Map<N, V> map) {
        this.f34196a = (Map) com.google.common.base.a0.E(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, V> q0<N, V> i() {
        return new q0<>(new HashMap(2, 1.0f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <N, V> q0<N, V> j(Map<N, V> map) {
        return new q0<>(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.google.common.graph.y
    public Set<N> a() {
        return c();
    }

    @Override // com.google.common.graph.y
    public Set<N> b() {
        return c();
    }

    @Override // com.google.common.graph.y
    public Set<N> c() {
        return Collections.unmodifiableSet(this.f34196a.keySet());
    }

    @Override // com.google.common.graph.y
    public V d(N n9) {
        return this.f34196a.get(n9);
    }

    @Override // com.google.common.graph.y
    public V e(N n9) {
        return this.f34196a.remove(n9);
    }

    @Override // com.google.common.graph.y
    public void f(N n9) {
        e(n9);
    }

    @Override // com.google.common.graph.y
    public V g(N n9, V v9) {
        return this.f34196a.put(n9, v9);
    }

    @Override // com.google.common.graph.y
    public void h(N n9, V v9) {
        g(n9, v9);
    }
}
