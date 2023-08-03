package com.google.common.graph;

import com.google.common.base.Optional;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ConfigurableValueGraph.java */
/* loaded from: classes2.dex */
class m<N, V> extends g<N, V> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f34138a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34139b;

    /* renamed from: c  reason: collision with root package name */
    private final ElementOrder<N> f34140c;

    /* renamed from: d  reason: collision with root package name */
    protected final e0<N, y<N, V>> f34141d;

    /* renamed from: e  reason: collision with root package name */
    protected long f34142e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(d<? super N> dVar) {
        this(dVar, dVar.f34100c.c(dVar.f34101d.or((Optional<Integer>) 10).intValue()), 0L);
    }

    @Override // com.google.common.graph.a
    protected long M() {
        return this.f34142e;
    }

    protected final y<N, V> Q(N n9) {
        y<N, V> f10 = this.f34141d.f(n9);
        if (f10 != null) {
            return f10;
        }
        com.google.common.base.a0.E(n9);
        throw new IllegalArgumentException("Node " + n9 + " is not an element of this graph.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean R(@NullableDecl N n9) {
        return this.f34141d.e(n9);
    }

    protected final V S(N n9, N n10, V v9) {
        y<N, V> f10 = this.f34141d.f(n9);
        V d4 = f10 == null ? null : f10.d(n10);
        return d4 == null ? v9 : d4;
    }

    protected final boolean T(N n9, N n10) {
        y<N, V> f10 = this.f34141d.f(n9);
        return f10 != null && f10.a().contains(n10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable a(Object obj) {
        return a((m<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable b(Object obj) {
        return b((m<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public boolean d(N n9, N n10) {
        return T(com.google.common.base.a0.E(n9), com.google.common.base.a0.E(n10));
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public boolean e() {
        return this.f34138a;
    }

    @Override // com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public boolean f(r<N> rVar) {
        com.google.common.base.a0.E(rVar);
        return N(rVar) && T(rVar.d(), rVar.e());
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public ElementOrder<N> h() {
        return this.f34140c;
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public boolean j() {
        return this.f34139b;
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public Set<N> k(N n9) {
        return Q(n9).c();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.w
    public Set<N> m() {
        return this.f34141d.k();
    }

    @NullableDecl
    public V t(r<N> rVar, @NullableDecl V v9) {
        O(rVar);
        return S(rVar.d(), rVar.e(), v9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NullableDecl
    public V y(N n9, N n10, @NullableDecl V v9) {
        return (V) S(com.google.common.base.a0.E(n9), com.google.common.base.a0.E(n10), v9);
    }

    @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public Set<N> a(N n9) {
        return Q(n9).b();
    }

    @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public Set<N> b(N n9) {
        return Q(n9).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(d<? super N> dVar, Map<N, y<N, V>> map, long j4) {
        this.f34138a = dVar.f34098a;
        this.f34139b = dVar.f34099b;
        this.f34140c = (ElementOrder<N>) dVar.f34100c.a();
        this.f34141d = map instanceof TreeMap ? new f0<>(map) : new e0<>(map);
        this.f34142e = a0.c(j4);
    }
}
