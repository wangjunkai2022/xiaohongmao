package com.qennnsad.aknkaksd.data.websocket;

import dagger.internal.r;

/* compiled from: WebSocketService_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class h implements d6.g<WebSocketService> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f47853a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<j> f47854b;

    public h(u7.c<g5.a> cVar, u7.c<j> cVar2) {
        this.f47853a = cVar;
        this.f47854b = cVar2;
    }

    public static d6.g<WebSocketService> b(u7.c<g5.a> cVar, u7.c<j> cVar2) {
        return new h(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.data.websocket.WebSocketService.localDataManager")
    public static void c(WebSocketService webSocketService, g5.a aVar) {
        webSocketService.f47786d = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.data.websocket.WebSocketService.wsObjectPool")
    public static void e(WebSocketService webSocketService, j jVar) {
        webSocketService.f47787e = jVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(WebSocketService webSocketService) {
        c(webSocketService, this.f47853a.get());
        e(webSocketService, this.f47854b.get());
    }
}
