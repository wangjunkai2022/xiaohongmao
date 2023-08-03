package com.qennnsad.aknkaksd.domain.usecase.auth;

import com.qennnsad.aknkaksd.util.JwtUtil;

/* compiled from: LoginGuestUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class w implements dagger.internal.h<v> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48142a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.f> f48143b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<JwtUtil> f48144c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<x4.a> f48145d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48146e;

    public w(u7.c<g5.a> cVar, u7.c<g5.f> cVar2, u7.c<JwtUtil> cVar3, u7.c<x4.a> cVar4, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar5) {
        this.f48142a = cVar;
        this.f48143b = cVar2;
        this.f48144c = cVar3;
        this.f48145d = cVar4;
        this.f48146e = cVar5;
    }

    public static w a(u7.c<g5.a> cVar, u7.c<g5.f> cVar2, u7.c<JwtUtil> cVar3, u7.c<x4.a> cVar4, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar5) {
        return new w(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static v c(g5.a aVar, g5.f fVar, JwtUtil jwtUtil, x4.a aVar2, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        return new v(aVar, fVar, jwtUtil, aVar2, jVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public v get() {
        return c(this.f48142a.get(), this.f48143b.get(), this.f48144c.get(), this.f48145d.get(), this.f48146e.get());
    }
}
