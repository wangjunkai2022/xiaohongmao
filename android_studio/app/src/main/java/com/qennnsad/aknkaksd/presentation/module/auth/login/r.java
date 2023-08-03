package com.qennnsad.aknkaksd.presentation.module.auth.login;

import com.qennnsad.aknkaksd.domain.usecase.auth.h0;
import com.qennnsad.aknkaksd.domain.usecase.auth.v;
import com.qennnsad.aknkaksd.domain.usecase.auth.x;

/* compiled from: LoginViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class r implements dagger.internal.h<LoginViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51200a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.app.s> f51201b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.a> f51202c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<x> f51203d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<v> f51204e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> f51205f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<h0> f51206g;

    public r(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.s> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.a> cVar3, u7.c<x> cVar4, u7.c<v> cVar5, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> cVar6, u7.c<h0> cVar7) {
        this.f51200a = cVar;
        this.f51201b = cVar2;
        this.f51202c = cVar3;
        this.f51203d = cVar4;
        this.f51204e = cVar5;
        this.f51205f = cVar6;
        this.f51206g = cVar7;
    }

    public static r a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.s> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.a> cVar3, u7.c<x> cVar4, u7.c<v> cVar5, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> cVar6, u7.c<h0> cVar7) {
        return new r(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7);
    }

    public static LoginViewModel c(g5.a aVar, com.qennnsad.aknkaksd.domain.usecase.app.s sVar, com.qennnsad.aknkaksd.domain.usecase.user.a aVar2, x xVar, v vVar, com.qennnsad.aknkaksd.domain.usecase.auth.m mVar, h0 h0Var) {
        return new LoginViewModel(aVar, sVar, aVar2, xVar, vVar, mVar, h0Var);
    }

    @Override // u7.c
    /* renamed from: b */
    public LoginViewModel get() {
        return c(this.f51200a.get(), this.f51201b.get(), this.f51202c.get(), this.f51203d.get(), this.f51204e.get(), this.f51205f.get(), this.f51206g.get());
    }
}
