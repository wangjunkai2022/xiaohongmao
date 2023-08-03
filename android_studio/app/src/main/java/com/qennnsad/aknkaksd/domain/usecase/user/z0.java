package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateIntroUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class z0 implements dagger.internal.h<y0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48502a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48503b;

    public z0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48502a = cVar;
        this.f48503b = cVar2;
    }

    public static z0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new z0(cVar, cVar2);
    }

    public static y0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new y0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public y0 get() {
        return c(this.f48502a.get(), this.f48503b.get());
    }
}
