package com.google.common.graph;

import com.google.common.graph.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigurableMutableGraph.java */
/* loaded from: classes2.dex */
public final class i<N> extends t<N> implements h0<N> {

    /* renamed from: a  reason: collision with root package name */
    private final j0<N, z.a> f34127a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(d<? super N> dVar) {
        this.f34127a = new k(dVar);
    }

    @Override // com.google.common.graph.h0
    public boolean A(r<N> rVar) {
        O(rVar);
        return F(rVar.d(), rVar.e());
    }

    @Override // com.google.common.graph.h0
    public boolean F(N n9, N n10) {
        return this.f34127a.K(n9, n10, z.a.EDGE_EXISTS) == null;
    }

    @Override // com.google.common.graph.t
    protected h<N> P() {
        return this.f34127a;
    }

    @Override // com.google.common.graph.h0
    public boolean o(N n9) {
        return this.f34127a.o(n9);
    }

    @Override // com.google.common.graph.h0
    public boolean p(N n9) {
        return this.f34127a.p(n9);
    }

    @Override // com.google.common.graph.h0
    public boolean q(N n9, N n10) {
        return this.f34127a.q(n9, n10) != null;
    }

    @Override // com.google.common.graph.h0
    public boolean r(r<N> rVar) {
        O(rVar);
        return q(rVar.d(), rVar.e());
    }
}
