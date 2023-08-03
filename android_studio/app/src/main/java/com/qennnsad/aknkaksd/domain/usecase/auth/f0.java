package com.qennnsad.aknkaksd.domain.usecase.auth;

/* compiled from: RegisterUserUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class f0 implements dagger.internal.h<e0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48083a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f48084b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48085c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<g5.f> f48086d;

    public f0(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3, u7.c<g5.f> cVar4) {
        this.f48083a = cVar;
        this.f48084b = cVar2;
        this.f48085c = cVar3;
        this.f48086d = cVar4;
    }

    public static f0 a(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar3, u7.c<g5.f> cVar4) {
        return new f0(cVar, cVar2, cVar3, cVar4);
    }

    public static e0 c(g5.a aVar, x4.a aVar2, com.qennnsad.aknkaksd.data.websocket.j jVar, g5.f fVar) {
        return new e0(aVar, aVar2, jVar, fVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public e0 get() {
        return c(this.f48083a.get(), this.f48084b.get(), this.f48085c.get(), this.f48086d.get());
    }
}
