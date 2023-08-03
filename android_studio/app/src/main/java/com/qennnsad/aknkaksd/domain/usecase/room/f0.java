package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: SendGiftUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class f0 implements dagger.internal.h<e0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48312a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48313b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48314c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<x4.a> f48315d;

    public f0(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3, u7.c<x4.a> cVar4) {
        this.f48312a = cVar;
        this.f48313b = cVar2;
        this.f48314c = cVar3;
        this.f48315d = cVar4;
    }

    public static f0 a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3, u7.c<x4.a> cVar4) {
        return new f0(cVar, cVar2, cVar3, cVar4);
    }

    public static e0 c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar, com.qennnsad.aknkaksd.data.websocket.j jVar, x4.a aVar2) {
        return new e0(mVar, aVar, jVar, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public e0 get() {
        return c(this.f48312a.get(), this.f48313b.get(), this.f48314c.get(), this.f48315d.get());
    }
}
