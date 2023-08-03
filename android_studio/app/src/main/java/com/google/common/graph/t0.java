package com.google.common.graph;

import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ValueGraph.java */
@h3.a
/* loaded from: classes2.dex */
public interface t0<N, V> extends h<N> {
    @Override // com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    Set<N> a(N n9);

    @Override // com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    Set<N> b(N n9);

    @Override // com.google.common.graph.h
    Set<r<N>> c();

    @Override // com.google.common.graph.h
    boolean d(N n9, N n10);

    @Override // com.google.common.graph.h, com.google.common.graph.w
    boolean e();

    boolean equals(@NullableDecl Object obj);

    @Override // com.google.common.graph.h
    boolean f(r<N> rVar);

    @Override // com.google.common.graph.h
    int g(N n9);

    @Override // com.google.common.graph.h, com.google.common.graph.w
    ElementOrder<N> h();

    int hashCode();

    @Override // com.google.common.graph.h
    int i(N n9);

    @Override // com.google.common.graph.h, com.google.common.graph.w
    boolean j();

    @Override // com.google.common.graph.h, com.google.common.graph.w
    Set<N> k(N n9);

    @Override // com.google.common.graph.h
    Set<r<N>> l(N n9);

    @Override // com.google.common.graph.h, com.google.common.graph.w
    Set<N> m();

    @Override // com.google.common.graph.h
    int n(N n9);

    w<N> s();

    @NullableDecl
    V t(r<N> rVar, @NullableDecl V v9);

    @NullableDecl
    V y(N n9, N n10, @NullableDecl V v9);
}
