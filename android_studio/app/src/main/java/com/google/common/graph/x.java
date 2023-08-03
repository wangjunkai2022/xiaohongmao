package com.google.common.graph;

import com.google.common.base.Optional;

/* compiled from: GraphBuilder.java */
@h3.a
/* loaded from: classes2.dex */
public final class x<N> extends d<N> {
    private x(boolean z9) {
        super(z9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N1 extends N> x<N1> c() {
        return this;
    }

    public static x<Object> d() {
        return new x<>(true);
    }

    public static <N> x<N> f(w<N> wVar) {
        return (x<N>) new x(wVar.e()).a(wVar.j()).g(wVar.h());
    }

    public static x<Object> h() {
        return new x<>(false);
    }

    public x<N> a(boolean z9) {
        this.f34099b = z9;
        return this;
    }

    public <N1 extends N> h0<N1> b() {
        return new i(this);
    }

    public x<N> e(int i4) {
        this.f34101d = Optional.of(Integer.valueOf(a0.b(i4)));
        return this;
    }

    public <N1 extends N> x<N1> g(ElementOrder<N1> elementOrder) {
        x<N1> c10 = c();
        c10.f34100c = (ElementOrder) com.google.common.base.a0.E(elementOrder);
        return c10;
    }
}
