package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: PinMessageUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class y implements dagger.internal.h<x> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48360a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48361b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48362c;

    public y(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3) {
        this.f48360a = cVar;
        this.f48361b = cVar2;
        this.f48362c = cVar3;
    }

    public static y a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3) {
        return new y(cVar, cVar2, cVar3);
    }

    public static x c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        return new x(mVar, aVar, jVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public x get() {
        return c(this.f48360a.get(), this.f48361b.get(), this.f48362c.get());
    }
}
