package com.google.common.graph;

import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Network.java */
@h3.a
/* loaded from: classes2.dex */
public interface k0<N, E> extends o0<N>, n0<N> {
    Set<E> C(r<N> rVar);

    @NullableDecl
    E D(N n9, N n10);

    r<N> E(E e4);

    ElementOrder<E> G();

    @NullableDecl
    E H(r<N> rVar);

    Set<E> J(N n9);

    Set<N> a(N n9);

    @Override // com.google.common.graph.o0, com.google.common.graph.w
    Set<N> b(N n9);

    Set<E> c();

    boolean d(N n9, N n10);

    boolean e();

    boolean equals(@NullableDecl Object obj);

    boolean f(r<N> rVar);

    int g(N n9);

    ElementOrder<N> h();

    int hashCode();

    int i(N n9);

    boolean j();

    Set<N> k(N n9);

    Set<E> l(N n9);

    Set<N> m();

    int n(N n9);

    w<N> s();

    Set<E> u(N n9);

    Set<E> v(E e4);

    Set<E> w(N n9, N n10);

    boolean x();
}
