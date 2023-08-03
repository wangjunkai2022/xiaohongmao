package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: GetDepositAgentUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class l implements dagger.internal.h<k> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48331a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48332b;

    public l(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48331a = cVar;
        this.f48332b = cVar2;
    }

    public static l a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new l(cVar, cVar2);
    }

    public static k c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new k(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public k get() {
        return c(this.f48331a.get(), this.f48332b.get());
    }
}
