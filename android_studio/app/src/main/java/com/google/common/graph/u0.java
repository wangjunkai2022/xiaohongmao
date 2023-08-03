package com.google.common.graph;

import com.google.common.base.Optional;

/* compiled from: ValueGraphBuilder.java */
@h3.a
/* loaded from: classes2.dex */
public final class u0<N, V> extends d<N> {
    private u0(boolean z9) {
        super(z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N1 extends N, V1 extends V> u0<N1, V1> c() {
        return this;
    }

    public static u0<Object, Object> d() {
        return new u0<>(true);
    }

    public static <N, V> u0<N, V> f(t0<N, V> t0Var) {
        return (u0<N, V>) new u0(t0Var.e()).a(t0Var.j()).g(t0Var.h());
    }

    public static u0<Object, Object> h() {
        return new u0<>(false);
    }

    public u0<N, V> a(boolean z9) {
        this.f34099b = z9;
        return this;
    }

    public <N1 extends N, V1 extends V> j0<N1, V1> b() {
        return new k(this);
    }

    public u0<N, V> e(int i4) {
        this.f34101d = Optional.of(Integer.valueOf(a0.b(i4)));
        return this;
    }

    public <N1 extends N> u0<N1, V> g(ElementOrder<N1> elementOrder) {
        u0<N1, V> u0Var = (u0<N1, V>) c();
        u0Var.f34100c = (ElementOrder) com.google.common.base.a0.E(elementOrder);
        return u0Var;
    }
}
