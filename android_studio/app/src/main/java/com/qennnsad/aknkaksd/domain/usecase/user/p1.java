package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateSubscribeNotificationsUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class p1 implements dagger.internal.h<o1> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48458a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48459b;

    public p1(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48458a = cVar;
        this.f48459b = cVar2;
    }

    public static p1 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new p1(cVar, cVar2);
    }

    public static o1 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new o1(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public o1 get() {
        return c(this.f48458a.get(), this.f48459b.get());
    }
}
