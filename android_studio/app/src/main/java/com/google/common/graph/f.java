package com.google.common.graph;

import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* compiled from: AbstractUndirectedNetworkConnections.java */
/* loaded from: classes2.dex */
abstract class f<N, E> implements m0<N, E> {

    /* renamed from: a  reason: collision with root package name */
    protected final Map<E, N> f34116a;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(Map<E, N> map) {
        this.f34116a = (Map) com.google.common.base.a0.E(map);
    }

    @Override // com.google.common.graph.m0
    public Set<N> a() {
        return c();
    }

    @Override // com.google.common.graph.m0
    public Set<N> b() {
        return c();
    }

    @Override // com.google.common.graph.m0
    public N d(E e4, boolean z9) {
        if (z9) {
            return null;
        }
        return j(e4);
    }

    @Override // com.google.common.graph.m0
    public void e(E e4, N n9) {
        com.google.common.base.a0.g0(this.f34116a.put(e4, n9) == null);
    }

    @Override // com.google.common.graph.m0
    public void f(E e4, N n9, boolean z9) {
        if (z9) {
            return;
        }
        e(e4, n9);
    }

    @Override // com.google.common.graph.m0
    public Set<E> g() {
        return Collections.unmodifiableSet(this.f34116a.keySet());
    }

    @Override // com.google.common.graph.m0
    public N h(E e4) {
        return (N) com.google.common.base.a0.E(this.f34116a.get(e4));
    }

    @Override // com.google.common.graph.m0
    public Set<E> i() {
        return g();
    }

    @Override // com.google.common.graph.m0
    public N j(E e4) {
        return (N) com.google.common.base.a0.E(this.f34116a.remove(e4));
    }

    @Override // com.google.common.graph.m0
    public Set<E> k() {
        return g();
    }
}
