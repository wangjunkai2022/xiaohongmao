package com.qennnsad.aknkaksd.domain.usecase.auth;

/* compiled from: LinkGuestUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class u implements dagger.internal.h<t> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48133a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f48134b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48135c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<g5.f> f48136d;

    public u(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3, u7.c<g5.f> cVar4) {
        this.f48133a = cVar;
        this.f48134b = cVar2;
        this.f48135c = cVar3;
        this.f48136d = cVar4;
    }

    public static u a(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3, u7.c<g5.f> cVar4) {
        return new u(cVar, cVar2, cVar3, cVar4);
    }

    public static t c(g5.a aVar, x4.a aVar2, com.qennnsad.aknkaksd.data.websocket.j jVar, g5.f fVar) {
        return new t(aVar, aVar2, jVar, fVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public t get() {
        return c(this.f48133a.get(), this.f48134b.get(), this.f48135c.get(), this.f48136d.get());
    }
}
