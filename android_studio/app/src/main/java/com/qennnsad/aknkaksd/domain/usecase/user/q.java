package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: SetUserAndStartSocketUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class q implements dagger.internal.h<p> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48460a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48461b;

    public q(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2) {
        this.f48460a = cVar;
        this.f48461b = cVar2;
    }

    public static q a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2) {
        return new q(cVar, cVar2);
    }

    public static p c(g5.a aVar, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        return new p(aVar, jVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public p get() {
        return c(this.f48460a.get(), this.f48461b.get());
    }
}
