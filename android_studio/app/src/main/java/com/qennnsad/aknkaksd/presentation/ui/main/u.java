package com.qennnsad.aknkaksd.presentation.ui.main;

import com.qennnsad.aknkaksd.util.m1;

/* compiled from: MainFragment_MembersInjector.java */
@dagger.internal.r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class u implements d6.g<MainFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f53246a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f53247b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<m1> f53248c;

    public u(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<m1> cVar3) {
        this.f53246a = cVar;
        this.f53247b = cVar2;
        this.f53248c = cVar3;
    }

    public static d6.g<MainFragment> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<m1> cVar3) {
        return new u(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.main.MainFragment.updateUtil")
    public static void d(MainFragment mainFragment, m1 m1Var) {
        mainFragment.f52741l = m1Var;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(MainFragment mainFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(mainFragment, this.f53246a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(mainFragment, this.f53247b.get());
        d(mainFragment, this.f53248c.get());
    }
}
