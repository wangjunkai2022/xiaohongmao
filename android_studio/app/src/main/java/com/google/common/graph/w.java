package com.google.common.graph;

import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Graph.java */
@h3.a
/* loaded from: classes2.dex */
public interface w<N> extends h<N> {
    @Override // 
    Set<N> a(N n9);

    @Override // 
    Set<N> b(N n9);

    @Override // com.google.common.graph.h
    Set<r<N>> c();

    @Override // com.google.common.graph.h
    boolean d(N n9, N n10);

    @Override // 
    boolean e();

    boolean equals(@NullableDecl Object obj);

    @Override // com.google.common.graph.h
    boolean f(r<N> rVar);

    @Override // com.google.common.graph.h
    int g(N n9);

    @Override // 
    ElementOrder<N> h();

    int hashCode();

    @Override // com.google.common.graph.h
    int i(N n9);

    @Override // 
    boolean j();

    @Override // 
    Set<N> k(N n9);

    @Override // com.google.common.graph.h
    Set<r<N>> l(N n9);

    @Override // 
    Set<N> m();

    @Override // com.google.common.graph.h
    int n(N n9);
}
