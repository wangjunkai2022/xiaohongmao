package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.qennnsad.aknkaksd.util.JwtUtil;

/* compiled from: LoginUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class y implements dagger.internal.h<x> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48152a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.f> f48153b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<JwtUtil> f48154c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<x4.a> f48155d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48156e;

    public y(u7.c<g5.a> cVar, u7.c<g5.f> cVar2, u7.c<JwtUtil> cVar3, u7.c<x4.a> cVar4, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar5) {
        this.f48152a = cVar;
        this.f48153b = cVar2;
        this.f48154c = cVar3;
        this.f48155d = cVar4;
        this.f48156e = cVar5;
    }

    public static y a(u7.c<g5.a> cVar, u7.c<g5.f> cVar2, u7.c<JwtUtil> cVar3, u7.c<x4.a> cVar4, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar5) {
        return new y(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static x c(g5.a aVar, g5.f fVar, JwtUtil jwtUtil, x4.a aVar2, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        return new x(aVar, fVar, jwtUtil, aVar2, jVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public x get() {
        return c(this.f48152a.get(), this.f48153b.get(), this.f48154c.get(), this.f48155d.get(), this.f48156e.get());
    }
}
