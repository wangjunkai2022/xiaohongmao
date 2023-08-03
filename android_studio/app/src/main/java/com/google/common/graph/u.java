package com.google.common.graph;

import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ForwardingNetwork.java */
/* loaded from: classes2.dex */
public abstract class u<N, E> extends e<N, E> {
    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public Set<E> C(r<N> rVar) {
        return Q().C(rVar);
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public E D(N n9, N n10) {
        return Q().D(n9, n10);
    }

    @Override // com.google.common.graph.k0
    public r<N> E(E e4) {
        return Q().E(e4);
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<E> G() {
        return Q().G();
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public E H(r<N> rVar) {
        return Q().H(rVar);
    }

    @Override // com.google.common.graph.k0
    public Set<E> J(N n9) {
        return Q().J(n9);
    }

    protected abstract k0<N, E> Q();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.k0, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable a(Object obj) {
        return a((u<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.k0, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Iterable b(Object obj) {
        return b((u<N, E>) obj);
    }

    @Override // com.google.common.graph.k0
    public Set<E> c() {
        return Q().c();
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public boolean d(N n9, N n10) {
        return Q().d(n9, n10);
    }

    @Override // com.google.common.graph.k0
    public boolean e() {
        return Q().e();
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public boolean f(r<N> rVar) {
        return Q().f(rVar);
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public int g(N n9) {
        return Q().g(n9);
    }

    @Override // com.google.common.graph.k0
    public ElementOrder<N> h() {
        return Q().h();
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public int i(N n9) {
        return Q().i(n9);
    }

    @Override // com.google.common.graph.k0
    public boolean j() {
        return Q().j();
    }

    @Override // com.google.common.graph.k0
    public Set<N> k(N n9) {
        return Q().k(n9);
    }

    @Override // com.google.common.graph.k0
    public Set<E> l(N n9) {
        return Q().l(n9);
    }

    @Override // com.google.common.graph.k0
    public Set<N> m() {
        return Q().m();
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public int n(N n9) {
        return Q().n(n9);
    }

    @Override // com.google.common.graph.k0
    public Set<E> u(N n9) {
        return Q().u(n9);
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public Set<E> v(E e4) {
        return Q().v(e4);
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    public Set<E> w(N n9, N n10) {
        return Q().w(n9, n10);
    }

    @Override // com.google.common.graph.k0
    public boolean x() {
        return Q().x();
    }

    @Override // com.google.common.graph.k0, com.google.common.graph.n0, com.google.common.graph.w
    public Set<N> a(N n9) {
        return Q().a((k0<N, E>) n9);
    }

    @Override // com.google.common.graph.k0, com.google.common.graph.o0, com.google.common.graph.w
    public Set<N> b(N n9) {
        return Q().b((k0<N, E>) n9);
    }
}
