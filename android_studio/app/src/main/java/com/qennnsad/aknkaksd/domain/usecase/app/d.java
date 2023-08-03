package com.qennnsad.aknkaksd.domain.usecase.app;

/* compiled from: GetAdConfigUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class d implements dagger.internal.h<c> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48008a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48009b;

    public d(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48008a = cVar;
        this.f48009b = cVar2;
    }

    public static d a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new d(cVar, cVar2);
    }

    public static c c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new c(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public c get() {
        return c(this.f48008a.get(), this.f48009b.get());
    }
}
