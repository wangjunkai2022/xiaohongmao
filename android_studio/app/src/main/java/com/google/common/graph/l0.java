package com.google.common.graph;

import com.google.common.base.Optional;

/* compiled from: NetworkBuilder.java */
@h3.a
/* loaded from: classes2.dex */
public final class l0<N, E> extends d<N> {

    /* renamed from: e  reason: collision with root package name */
    boolean f34135e;

    /* renamed from: f  reason: collision with root package name */
    ElementOrder<? super E> f34136f;

    /* renamed from: g  reason: collision with root package name */
    Optional<Integer> f34137g;

    private l0(boolean z9) {
        super(z9);
        this.f34135e = false;
        this.f34136f = ElementOrder.d();
        this.f34137g = Optional.absent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N1 extends N, E1 extends E> l0<N1, E1> d() {
        return this;
    }

    public static l0<Object, Object> e() {
        return new l0<>(true);
    }

    public static <N, E> l0<N, E> i(k0<N, E> k0Var) {
        return new l0(k0Var.e()).a(k0Var.x()).b(k0Var.j()).j(k0Var.h()).f(k0Var.G());
    }

    public static l0<Object, Object> k() {
        return new l0<>(false);
    }

    public l0<N, E> a(boolean z9) {
        this.f34135e = z9;
        return this;
    }

    public l0<N, E> b(boolean z9) {
        this.f34099b = z9;
        return this;
    }

    public <N1 extends N, E1 extends E> i0<N1, E1> c() {
        return new j(this);
    }

    public <E1 extends E> l0<N, E1> f(ElementOrder<E1> elementOrder) {
        l0<N, E1> l0Var = (l0<N, E1>) d();
        l0Var.f34136f = (ElementOrder) com.google.common.base.a0.E(elementOrder);
        return l0Var;
    }

    public l0<N, E> g(int i4) {
        this.f34137g = Optional.of(Integer.valueOf(a0.b(i4)));
        return this;
    }

    public l0<N, E> h(int i4) {
        this.f34101d = Optional.of(Integer.valueOf(a0.b(i4)));
        return this;
    }

    public <N1 extends N> l0<N1, E> j(ElementOrder<N1> elementOrder) {
        l0<N1, E> l0Var = (l0<N1, E>) d();
        l0Var.f34100c = (ElementOrder) com.google.common.base.a0.E(elementOrder);
        return l0Var;
    }
}
