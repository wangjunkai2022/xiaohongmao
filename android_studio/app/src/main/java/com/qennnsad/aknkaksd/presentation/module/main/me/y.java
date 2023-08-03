package com.qennnsad.aknkaksd.presentation.module.main.me;

import com.qennnsad.aknkaksd.domain.usecase.user.s1;

/* compiled from: MeProfileViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class y implements dagger.internal.h<MeProfileViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f51822a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f51823b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.w> f51824c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.e0> f51825d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.a0> f51826e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.s> f51827f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<s1> f51828g;

    public y(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.w> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.e0> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.a0> cVar5, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.s> cVar6, u7.c<s1> cVar7) {
        this.f51822a = cVar;
        this.f51823b = cVar2;
        this.f51824c = cVar3;
        this.f51825d = cVar4;
        this.f51826e = cVar5;
        this.f51827f = cVar6;
        this.f51828g = cVar7;
    }

    public static y a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.w> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.e0> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.a0> cVar5, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.s> cVar6, u7.c<s1> cVar7) {
        return new y(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7);
    }

    public static MeProfileViewModel c(com.qennnsad.aknkaksd.data.repository.m mVar, x4.a aVar, com.qennnsad.aknkaksd.domain.usecase.user.w wVar, com.qennnsad.aknkaksd.domain.usecase.user.e0 e0Var, com.qennnsad.aknkaksd.domain.usecase.user.a0 a0Var, com.qennnsad.aknkaksd.domain.usecase.user.s sVar, s1 s1Var) {
        return new MeProfileViewModel(mVar, aVar, wVar, e0Var, a0Var, sVar, s1Var);
    }

    @Override // u7.c
    /* renamed from: b */
    public MeProfileViewModel get() {
        return c(this.f51822a.get(), this.f51823b.get(), this.f51824c.get(), this.f51825d.get(), this.f51826e.get(), this.f51827f.get(), this.f51828g.get());
    }
}
