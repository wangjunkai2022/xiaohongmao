package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: ClearCurrentUserAndReleaseSocketUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class b implements dagger.internal.h<a> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48371a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48372b;

    public b(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2) {
        this.f48371a = cVar;
        this.f48372b = cVar2;
    }

    public static b a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2) {
        return new b(cVar, cVar2);
    }

    public static a c(g5.a aVar, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        return new a(aVar, jVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public a get() {
        return c(this.f48371a.get(), this.f48372b.get());
    }
}
