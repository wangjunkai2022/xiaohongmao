package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: GetPrivateLimitUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class o implements dagger.internal.h<n> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48337a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48338b;

    public o(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48337a = cVar;
        this.f48338b = cVar2;
    }

    public static o a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new o(cVar, cVar2);
    }

    public static n c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new n(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public n get() {
        return c(this.f48337a.get(), this.f48338b.get());
    }
}
