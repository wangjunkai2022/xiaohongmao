package com.google.common.graph;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.f3;
import com.google.common.graph.z;
import com.google.errorprone.annotations.Immutable;
import java.util.Set;

/* compiled from: ImmutableGraph.java */
@Immutable(containerOf = {"N"})
@h3.a
/* loaded from: classes2.dex */
public class b0<N> extends t<N> {

    /* renamed from: a  reason: collision with root package name */
    private final h<N> f34093a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(h<N> hVar) {
        this.f34093a = hVar;
    }

    private static <N> y<N, z.a> Q(w<N> wVar, N n9) {
        com.google.common.base.q b10 = com.google.common.base.s.b(z.a.EDGE_EXISTS);
        if (wVar.e()) {
            return n.q(wVar.a((w<N>) n9), f3.j(wVar.b((w<N>) n9), b10));
        }
        return q0.j(f3.j(wVar.k(n9), b10));
    }

    public static <N> b0<N> R(w<N> wVar) {
        return wVar instanceof b0 ? (b0) wVar : new b0<>(new m(x.f(wVar), T(wVar), wVar.c().size()));
    }

    @Deprecated
    public static <N> b0<N> S(b0<N> b0Var) {
        return (b0) com.google.common.base.a0.E(b0Var);
    }

    private static <N> ImmutableMap<N, y<N, z.a>> T(w<N> wVar) {
        ImmutableMap.b builder = ImmutableMap.builder();
        for (N n9 : wVar.m()) {
            builder.d(n9, Q(wVar, n9));
        }
        return builder.a();
    }

    @Override // com.google.common.graph.t
    protected h<N> P() {
        return this.f34093a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set a(Object obj) {
        return super.a((b0<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set b(Object obj) {
        return super.b((b0<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean d(Object obj, Object obj2) {
        return super.d(obj, obj2);
    }

    @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ boolean e() {
        return super.e();
    }

    @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean f(r rVar) {
        return super.f(rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int g(Object obj) {
        return super.g(obj);
    }

    @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ ElementOrder h() {
        return super.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int i(Object obj) {
        return super.i(obj);
    }

    @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set k(Object obj) {
        return super.k(obj);
    }

    @Override // com.google.common.graph.t, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set m() {
        return super.m();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.t, com.google.common.graph.c, com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int n(Object obj) {
        return super.n(obj);
    }
}
