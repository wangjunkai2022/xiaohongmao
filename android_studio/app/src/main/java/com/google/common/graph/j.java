package com.google.common.graph;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.k5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigurableMutableNetwork.java */
/* loaded from: classes2.dex */
public final class j<N, E> extends l<N, E> implements i0<N, E> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(l0<? super N, ? super E> l0Var) {
        super(l0Var);
    }

    @CanIgnoreReturnValue
    private m0<N, E> U(N n9) {
        m0<N, E> V = V();
        com.google.common.base.a0.g0(this.f34133f.i(n9, V) == null);
        return V;
    }

    private m0<N, E> V() {
        if (e()) {
            if (x()) {
                return o.p();
            }
            return p.n();
        } else if (x()) {
            return r0.p();
        } else {
            return s0.m();
        }
    }

    @Override // com.google.common.graph.i0
    @CanIgnoreReturnValue
    public boolean I(E e4) {
        com.google.common.base.a0.F(e4, "edge");
        N f10 = this.f34134g.f(e4);
        boolean z9 = false;
        if (f10 == null) {
            return false;
        }
        m0<N, E> f11 = this.f34133f.f(f10);
        N h4 = f11.h(e4);
        m0<N, E> f12 = this.f34133f.f(h4);
        f11.j(e4);
        if (j() && f10.equals(h4)) {
            z9 = true;
        }
        f12.d(e4, z9);
        this.f34134g.j(e4);
        return true;
    }

    @Override // com.google.common.graph.i0
    @CanIgnoreReturnValue
    public boolean L(N n9, N n10, E e4) {
        com.google.common.base.a0.F(n9, "nodeU");
        com.google.common.base.a0.F(n10, "nodeV");
        com.google.common.base.a0.F(e4, "edge");
        boolean z9 = false;
        if (S(e4)) {
            r<N> E = E(e4);
            r g4 = r.g(this, n9, n10);
            com.google.common.base.a0.z(E.equals(g4), "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s.", e4, E, g4);
            return false;
        }
        m0<N, E> f10 = this.f34133f.f(n9);
        if (!x()) {
            com.google.common.base.a0.y((f10 == null || !f10.a().contains(n10)) ? true : true, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder.", n9, n10);
        }
        boolean equals = n9.equals(n10);
        if (!j()) {
            com.google.common.base.a0.u(!equals, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder.", n9);
        }
        if (f10 == null) {
            f10 = U(n9);
        }
        f10.e(e4, n10);
        m0<N, E> f11 = this.f34133f.f(n10);
        if (f11 == null) {
            f11 = U(n10);
        }
        f11.f(e4, n9, equals);
        this.f34134g.i(e4, n9);
        return true;
    }

    @Override // com.google.common.graph.i0
    @CanIgnoreReturnValue
    public boolean o(N n9) {
        com.google.common.base.a0.F(n9, "node");
        m0<N, E> f10 = this.f34133f.f(n9);
        if (f10 == null) {
            return false;
        }
        k5<E> it = ImmutableList.copyOf((Collection) f10.g()).iterator();
        while (it.hasNext()) {
            I(it.next());
        }
        this.f34133f.j(n9);
        return true;
    }

    @Override // com.google.common.graph.i0
    @CanIgnoreReturnValue
    public boolean p(N n9) {
        com.google.common.base.a0.F(n9, "node");
        if (T(n9)) {
            return false;
        }
        U(n9);
        return true;
    }

    @Override // com.google.common.graph.i0
    @CanIgnoreReturnValue
    public boolean z(r<N> rVar, E e4) {
        P(rVar);
        return L(rVar.d(), rVar.e(), e4);
    }
}
