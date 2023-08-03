package com.google.common.graph;

import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseGraph.java */
/* loaded from: classes2.dex */
public interface h<N> extends o0<N>, n0<N> {
    Set<N> a(N n9);

    @Override // com.google.common.graph.o0, com.google.common.graph.w
    Set<N> b(N n9);

    Set<r<N>> c();

    boolean d(N n9, N n10);

    boolean e();

    boolean f(r<N> rVar);

    int g(N n9);

    ElementOrder<N> h();

    int i(N n9);

    boolean j();

    Set<N> k(N n9);

    Set<r<N>> l(N n9);

    Set<N> m();

    int n(N n9);
}
