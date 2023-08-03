package com.qennnsad.aknkaksd.presentation.module.main.webview;

import com.qennnsad.aknkaksd.util.t0;

/* compiled from: SimpleWebViewFragment_MembersInjector.java */
@dagger.internal.r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class p implements d6.g<SimpleWebViewFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f52153a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f52154b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<c5.g> f52155c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<t0> f52156d;

    public p(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<c5.g> cVar3, u7.c<t0> cVar4) {
        this.f52153a = cVar;
        this.f52154b = cVar2;
        this.f52155c = cVar3;
        this.f52156d = cVar4;
    }

    public static d6.g<SimpleWebViewFragment> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<c5.g> cVar3, u7.c<t0> cVar4) {
        return new p(cVar, cVar2, cVar3, cVar4);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.networkUtility")
    public static void d(SimpleWebViewFragment simpleWebViewFragment, t0 t0Var) {
        simpleWebViewFragment.f52050m = t0Var;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.webViewAuthInterceptor")
    public static void e(SimpleWebViewFragment simpleWebViewFragment, c5.g gVar) {
        simpleWebViewFragment.f52049l = gVar;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(SimpleWebViewFragment simpleWebViewFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(simpleWebViewFragment, this.f52153a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(simpleWebViewFragment, this.f52154b.get());
        e(simpleWebViewFragment, this.f52155c.get());
        d(simpleWebViewFragment, this.f52156d.get());
    }
}
