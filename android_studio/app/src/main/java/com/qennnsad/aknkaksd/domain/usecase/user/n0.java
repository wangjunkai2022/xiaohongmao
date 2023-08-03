package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateCityUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class n0 implements dagger.internal.h<m0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48445a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48446b;

    public n0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48445a = cVar;
        this.f48446b = cVar2;
    }

    public static n0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new n0(cVar, cVar2);
    }

    public static m0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new m0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public m0 get() {
        return c(this.f48445a.get(), this.f48446b.get());
    }
}
