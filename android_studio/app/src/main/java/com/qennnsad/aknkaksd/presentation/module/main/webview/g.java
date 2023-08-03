package com.qennnsad.aknkaksd.presentation.module.main.webview;

/* compiled from: SimpleWebViewActivity_MembersInjector.java */
@dagger.internal.r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class g implements d6.g<SimpleWebViewActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f52138a;

    public g(u7.c<g5.a> cVar) {
        this.f52138a = cVar;
    }

    public static d6.g<SimpleWebViewActivity> b(u7.c<g5.a> cVar) {
        return new g(cVar);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity.localDataManager")
    public static void c(SimpleWebViewActivity simpleWebViewActivity, g5.a aVar) {
        simpleWebViewActivity.f52047k = aVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(SimpleWebViewActivity simpleWebViewActivity) {
        c(simpleWebViewActivity, this.f52138a.get());
    }
}
