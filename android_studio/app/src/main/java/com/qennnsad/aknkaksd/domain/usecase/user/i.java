package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: JoinFanClubInfoUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class i implements dagger.internal.h<h> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48410a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48411b;

    public i(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48410a = cVar;
        this.f48411b = cVar2;
    }

    public static i a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new i(cVar, cVar2);
    }

    public static h c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new h(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public h get() {
        return c(this.f48410a.get(), this.f48411b.get());
    }
}
