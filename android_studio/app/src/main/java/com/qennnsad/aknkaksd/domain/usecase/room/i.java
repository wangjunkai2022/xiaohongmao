package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: GetCurrentAgentChatUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class i implements dagger.internal.h<h> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48321a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48322b;

    public i(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48321a = cVar;
        this.f48322b = cVar2;
    }

    public static i a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new i(cVar, cVar2);
    }

    public static h c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new h(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public h get() {
        return c(this.f48321a.get(), this.f48322b.get());
    }
}
