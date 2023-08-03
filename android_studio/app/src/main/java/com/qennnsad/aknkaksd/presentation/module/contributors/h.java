package com.qennnsad.aknkaksd.presentation.module.contributors;

import com.qennnsad.aknkaksd.util.q0;
import dagger.internal.r;

/* compiled from: ContributorsFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class h implements d6.g<ContributorsFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51347a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f51348b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f51349c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<q0> f51350d;

    public h(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3, u7.c<q0> cVar4) {
        this.f51347a = cVar;
        this.f51348b = cVar2;
        this.f51349c = cVar3;
        this.f51350d = cVar4;
    }

    public static d6.g<ContributorsFragment> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3, u7.c<q0> cVar4) {
        return new h(cVar, cVar2, cVar3, cVar4);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsFragment.mysteryUtil")
    public static void d(ContributorsFragment contributorsFragment, q0 q0Var) {
        contributorsFragment.f51295m = q0Var;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsFragment.sourceFactory")
    public static void e(ContributorsFragment contributorsFragment, com.qennnsad.aknkaksd.data.repository.m mVar) {
        contributorsFragment.f51294l = mVar;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(ContributorsFragment contributorsFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(contributorsFragment, this.f51347a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(contributorsFragment, this.f51348b.get());
        e(contributorsFragment, this.f51349c.get());
        d(contributorsFragment, this.f51350d.get());
    }
}
