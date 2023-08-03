package com.qennnsad.aknkaksd.presentation.ui.main.mall;

import com.qennnsad.aknkaksd.util.t0;
import dagger.internal.r;

/* compiled from: MallFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class h implements d6.g<MallFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f52859a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f52860b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<c5.g> f52861c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<t0> f52862d;

    public h(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<c5.g> cVar3, u7.c<t0> cVar4) {
        this.f52859a = cVar;
        this.f52860b = cVar2;
        this.f52861c = cVar3;
        this.f52862d = cVar4;
    }

    public static d6.g<MallFragment> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<c5.g> cVar3, u7.c<t0> cVar4) {
        return new h(cVar, cVar2, cVar3, cVar4);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.networkUtility")
    public static void d(MallFragment mallFragment, t0 t0Var) {
        mallFragment.f52808m = t0Var;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment.webViewAuthInterceptor")
    public static void e(MallFragment mallFragment, c5.g gVar) {
        mallFragment.f52807l = gVar;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(MallFragment mallFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(mallFragment, this.f52859a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(mallFragment, this.f52860b.get());
        e(mallFragment, this.f52861c.get());
        d(mallFragment, this.f52862d.get());
    }
}
