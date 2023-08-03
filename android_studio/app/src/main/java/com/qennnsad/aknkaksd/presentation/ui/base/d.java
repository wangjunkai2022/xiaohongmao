package com.qennnsad.aknkaksd.presentation.ui.base;

import com.qennnsad.aknkaksd.util.q0;

/* compiled from: BaseFragment_MembersInjector.java */
@dagger.internal.r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class d implements d6.g<b> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<x4.a> f52505a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f52506b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f52507c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<q0> f52508d;

    public d(u7.c<x4.a> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3, u7.c<q0> cVar4) {
        this.f52505a = cVar;
        this.f52506b = cVar2;
        this.f52507c = cVar3;
        this.f52508d = cVar4;
    }

    public static d6.g<b> b(u7.c<x4.a> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3, u7.c<q0> cVar4) {
        return new d(cVar, cVar2, cVar3, cVar4);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.base.BaseFragment.analytics")
    public static void c(b bVar, x4.a aVar) {
        bVar.f52489f = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.base.BaseFragment.localDataManager")
    public static void d(b bVar, g5.a aVar) {
        bVar.f52490g = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.base.BaseFragment.mysteryUtil")
    public static void f(b bVar, q0 q0Var) {
        bVar.f52492i = q0Var;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.base.BaseFragment.sourceFactory")
    public static void g(b bVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        bVar.f52491h = mVar;
    }

    @Override // d6.g
    /* renamed from: e */
    public void a(b bVar) {
        c(bVar, this.f52505a.get());
        d(bVar, this.f52506b.get());
        g(bVar, this.f52507c.get());
        f(bVar, this.f52508d.get());
    }
}
