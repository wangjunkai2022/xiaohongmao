package com.qennnsad.aknkaksd.presentation.module.main.webview;

/* compiled from: SimpleWebViewViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class q implements dagger.internal.h<SimpleWebViewViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f52157a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.webview.b> f52158b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.b> f52159c;

    public q(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.webview.b> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.b> cVar3) {
        this.f52157a = cVar;
        this.f52158b = cVar2;
        this.f52159c = cVar3;
    }

    public static q a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.webview.b> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.b> cVar3) {
        return new q(cVar, cVar2, cVar3);
    }

    public static SimpleWebViewViewModel c(com.qennnsad.aknkaksd.data.repository.m mVar, com.qennnsad.aknkaksd.domain.usecase.webview.b bVar, com.qennnsad.aknkaksd.domain.usecase.gamecenter.b bVar2) {
        return new SimpleWebViewViewModel(mVar, bVar, bVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public SimpleWebViewViewModel get() {
        return c(this.f52157a.get(), this.f52158b.get(), this.f52159c.get());
    }
}
