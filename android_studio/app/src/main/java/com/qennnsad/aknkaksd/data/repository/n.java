package com.qennnsad.aknkaksd.data.repository;

import com.qennnsad.aknkaksd.util.t0;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SourceFactory_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<m> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f47772a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<t0> f47773b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<g5.d> f47774c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<c5.b> f47775d;

    public n(u7.c<g5.a> cVar, u7.c<t0> cVar2, u7.c<g5.d> cVar3, u7.c<c5.b> cVar4) {
        this.f47772a = cVar;
        this.f47773b = cVar2;
        this.f47774c = cVar3;
        this.f47775d = cVar4;
    }

    public static n a(u7.c<g5.a> cVar, u7.c<t0> cVar2, u7.c<g5.d> cVar3, u7.c<c5.b> cVar4) {
        return new n(cVar, cVar2, cVar3, cVar4);
    }

    public static m c(g5.a aVar, t0 t0Var, g5.d dVar, c5.b bVar) {
        return new m(aVar, t0Var, dVar, bVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public m get() {
        return c(this.f47772a.get(), this.f47773b.get(), this.f47774c.get(), this.f47775d.get());
    }
}
