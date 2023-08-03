package com.google.common.graph;

import com.google.common.base.Optional;
import com.google.common.collect.ImmutableSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ConfigurableNetwork.java */
/* loaded from: classes2.dex */
class l<N, E> extends e<N, E> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f34128a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34129b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34130c;

    /* renamed from: d  reason: collision with root package name */
    private final ElementOrder<N> f34131d;

    /* renamed from: e  reason: collision with root package name */
    private final ElementOrder<E> f34132e;

    /* renamed from: f  reason: collision with root package name */
    protected final e0<N, m0<N, E>> f34133f;

    /* renamed from: g  reason: collision with root package name */
    protected final e0<E, N> f34134g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(l0<? super N, ? super E> l0Var) {
        this(l0Var, l0Var.f34100c.c(l0Var.f34101d.or((Optional<Integer>) 10).intValue()), l0Var.f34136f.c(l0Var.f34137g.or((Optional<Integer>) 20).intValue()));
    }

    @Override // com.google.common.graph.k0
    public r<N> E(E e4) {
        N R = R(e4);
        return r.g(this, R, this.f34133f.f(R).h(e4));
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<E> G() {
        return this.f34132e;
    }

    @Override // com.google.common.graph.k0
    public Set<E> J(N n9) {
        return Q(n9).i();
    }

    protected final m0<N, E> Q(N n9) {
        m0<N, E> f10 = this.f34133f.f(n9);
        if (f10 != null) {
            return f10;
        }
        com.google.common.base.a0.E(n9);
        throw new IllegalArgumentException(String.format("Node %s is not an element of this graph.", n9));
    }

    protected final N R(E e4) {
        N f10 = this.f34134g.f(e4);
        if (f10 != null) {
            return f10;
        }
        com.google.common.base.a0.E(e4);
        throw new IllegalArgumentException(String.format("Edge %s is not an element of this graph.", e4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean S(@NullableDecl E e4) {
        return this.f34134g.e(e4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean T(@NullableDecl N n9) {
        return this.f34133f.e(n9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.k0, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable a(Object obj) {
        return a((l<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.k0, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable b(Object obj) {
        return b((l<N, E>) obj);
    }

    @Override // com.google.common.graph.k0
    public Set<E> c() {
        return this.f34134g.k();
    }

    @Override // com.google.common.graph.k0
    public boolean e() {
        return this.f34128a;
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<N> h() {
        return this.f34131d;
    }

    @Override // com.google.common.graph.k0
    public boolean j() {
        return this.f34130c;
    }

    @Override // com.google.common.graph.k0
    public Set<N> k(N n9) {
        return Q(n9).c();
    }

    @Override // com.google.common.graph.k0
    public Set<E> l(N n9) {
        return Q(n9).g();
    }

    @Override // com.google.common.graph.k0
    public Set<N> m() {
        return this.f34133f.k();
    }

    @Override // com.google.common.graph.k0
    public Set<E> u(N n9) {
        return Q(n9).k();
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public Set<E> w(N n9, N n10) {
        m0<N, E> Q = Q(n9);
        if (!this.f34130c && n9 == n10) {
            return ImmutableSet.of();
        }
        com.google.common.base.a0.u(T(n10), "Node %s is not an element of this graph.", n10);
        return Q.l(n10);
    }

    @Override // com.google.common.graph.k0
    public boolean x() {
        return this.f34129b;
    }

    @Override // com.google.common.graph.k0, com.google.common.graph.n0, com.google.common.graph.w
    public Set<N> a(N n9) {
        return Q(n9).b();
    }

    @Override // com.google.common.graph.k0, com.google.common.graph.o0, com.google.common.graph.w
    public Set<N> b(N n9) {
        return Q(n9).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(l0<? super N, ? super E> l0Var, Map<N, m0<N, E>> map, Map<E, N> map2) {
        this.f34128a = l0Var.f34098a;
        this.f34129b = l0Var.f34135e;
        this.f34130c = l0Var.f34099b;
        this.f34131d = (ElementOrder<N>) l0Var.f34100c.a();
        this.f34132e = (ElementOrder<E>) l0Var.f34136f.a();
        this.f34133f = map instanceof TreeMap ? new f0<>(map) : new e0<>(map);
        this.f34134g = new e0<>(map2);
    }
}
