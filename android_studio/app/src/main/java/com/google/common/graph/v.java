package com.google.common.graph;

import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingValueGraph.java */
/* loaded from: classes2.dex */
abstract class v<N, V> extends g<N, V> {
    @Override // com.google.common.graph.a
    protected long M() {
        return Q().c().size();
    }

    protected abstract t0<N, V> Q();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable a(Object obj) {
        return a((v<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable b(Object obj) {
        return b((v<N, V>) obj);
    }

    @Override // com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public boolean d(N n9, N n10) {
        return Q().d(n9, n10);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public boolean e() {
        return Q().e();
    }

    @Override // com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public boolean f(r<N> rVar) {
        return Q().f(rVar);
    }

    @Override // com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public int g(N n9) {
        return Q().g(n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public ElementOrder<N> h() {
        return Q().h();
    }

    @Override // com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public int i(N n9) {
        return Q().i(n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public boolean j() {
        return Q().j();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public Set<N> k(N n9) {
        return Q().k(n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public Set<N> m() {
        return Q().m();
    }

    @Override // com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public int n(N n9) {
        return Q().n(n9);
    }

    @NullableDecl
    public V t(r<N> rVar, @NullableDecl V v9) {
        return Q().t(rVar, v9);
    }

    @NullableDecl
    public V y(N n9, N n10, @NullableDecl V v9) {
        return Q().y(n9, n10, v9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public Set<N> a(N n9) {
        return Q().a((t0<N, V>) n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public Set<N> b(N n9) {
        return Q().b((t0<N, V>) n9);
    }
}
