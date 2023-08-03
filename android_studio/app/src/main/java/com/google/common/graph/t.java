package com.google.common.graph;

import java.util.Set;

/* compiled from: ForwardingGraph.java */
/* loaded from: classes2.dex */
abstract class t<N> extends c<N> {
    @Override // com.google.common.graph.a
    protected long M() {
        return P().c().size();
    }

    protected abstract h<N> P();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable a(Object obj) {
        return a((t<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable b(Object obj) {
        return b((t<N>) obj);
    }

    @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public boolean d(N n9, N n10) {
        return P().d(n9, n10);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public boolean e() {
        return P().e();
    }

    @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public boolean f(r<N> rVar) {
        return P().f(rVar);
    }

    @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public int g(N n9) {
        return P().g(n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public ElementOrder<N> h() {
        return P().h();
    }

    @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public int i(N n9) {
        return P().i(n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public boolean j() {
        return P().j();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public Set<N> k(N n9) {
        return P().k(n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public Set<N> m() {
        return P().m();
    }

    @Override // com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public int n(N n9) {
        return P().n(n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public Set<N> a(N n9) {
        return P().a((h<N>) n9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public Set<N> b(N n9) {
        return P().b((h<N>) n9);
    }
}
