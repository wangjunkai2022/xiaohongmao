package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: ComplainPinnedMessageUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class f implements dagger.internal.h<e> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48309a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48310b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48311c;

    public f(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3) {
        this.f48309a = cVar;
        this.f48310b = cVar2;
        this.f48311c = cVar3;
    }

    public static f a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3) {
        return new f(cVar, cVar2, cVar3);
    }

    public static e c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        return new e(mVar, aVar, jVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public e get() {
        return c(this.f48309a.get(), this.f48310b.get(), this.f48311c.get());
    }
}
