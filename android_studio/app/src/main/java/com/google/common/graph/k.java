package com.google.common.graph;

import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigurableMutableValueGraph.java */
/* loaded from: classes2.dex */
public final class k<N, V> extends m<N, V> implements j0<N, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(d<? super N> dVar) {
        super(dVar);
    }

    @CanIgnoreReturnValue
    private y<N, V> U(N n9) {
        y<N, V> V = V();
        com.google.common.base.a0.g0(this.f34141d.i(n9, V) == null);
        return V;
    }

    private y<N, V> V() {
        if (e()) {
            return n.p();
        }
        return q0.i();
    }

    @Override // com.google.common.graph.j0
    @CanIgnoreReturnValue
    public V B(r<N> rVar, V v9) {
        O(rVar);
        return K(rVar.d(), rVar.e(), v9);
    }

    @Override // com.google.common.graph.j0
    @CanIgnoreReturnValue
    public V K(N n9, N n10, V v9) {
        com.google.common.base.a0.F(n9, "nodeU");
        com.google.common.base.a0.F(n10, "nodeV");
        com.google.common.base.a0.F(v9, "value");
        if (!j()) {
            com.google.common.base.a0.u(!n9.equals(n10), "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.", n9);
        }
        y<N, V> f10 = this.f34141d.f(n9);
        if (f10 == null) {
            f10 = U(n9);
        }
        V g4 = f10.g(n10, v9);
        y<N, V> f11 = this.f34141d.f(n10);
        if (f11 == null) {
            f11 = U(n10);
        }
        f11.h(n9, v9);
        if (g4 == null) {
            long j4 = this.f34142e + 1;
            this.f34142e = j4;
            a0.e(j4);
        }
        return g4;
    }

    @Override // com.google.common.graph.j0
    @CanIgnoreReturnValue
    public boolean o(N n9) {
        com.google.common.base.a0.F(n9, "node");
        y<N, V> f10 = this.f34141d.f(n9);
        if (f10 == null) {
            return false;
        }
        if (j() && f10.e(n9) != null) {
            f10.f(n9);
            this.f34142e--;
        }
        for (N n10 : f10.a()) {
            this.f34141d.h(n10).f(n9);
            this.f34142e--;
        }
        if (e()) {
            for (N n11 : f10.b()) {
                com.google.common.base.a0.g0(this.f34141d.h(n11).e(n9) != null);
                this.f34142e--;
            }
        }
        this.f34141d.j(n9);
        a0.c(this.f34142e);
        return true;
    }

    @Override // com.google.common.graph.j0
    @CanIgnoreReturnValue
    public boolean p(N n9) {
        com.google.common.base.a0.F(n9, "node");
        if (R(n9)) {
            return false;
        }
        U(n9);
        return true;
    }

    @Override // com.google.common.graph.j0
    @CanIgnoreReturnValue
    public V q(N n9, N n10) {
        com.google.common.base.a0.F(n9, "nodeU");
        com.google.common.base.a0.F(n10, "nodeV");
        y<N, V> f10 = this.f34141d.f(n9);
        y<N, V> f11 = this.f34141d.f(n10);
        if (f10 == null || f11 == null) {
            return null;
        }
        V e4 = f10.e(n10);
        if (e4 != null) {
            f11.f(n9);
            long j4 = this.f34142e - 1;
            this.f34142e = j4;
            a0.c(j4);
        }
        return e4;
    }

    @Override // com.google.common.graph.j0
    @CanIgnoreReturnValue
    public V r(r<N> rVar) {
        O(rVar);
        return q(rVar.d(), rVar.e());
    }
}
