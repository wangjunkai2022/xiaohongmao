package com.qennnsad.aknkaksd.presentation.module.auth.signup;

import com.qennnsad.aknkaksd.domain.usecase.auth.e0;
import com.qennnsad.aknkaksd.domain.usecase.auth.h0;
import com.qennnsad.aknkaksd.domain.usecase.auth.t;

/* compiled from: SignUpViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class q implements dagger.internal.h<SignUpViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> f51286a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<h0> f51287b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<e0> f51288c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<t> f51289d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<g5.a> f51290e;

    public q(u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> cVar, u7.c<h0> cVar2, u7.c<e0> cVar3, u7.c<t> cVar4, u7.c<g5.a> cVar5) {
        this.f51286a = cVar;
        this.f51287b = cVar2;
        this.f51288c = cVar3;
        this.f51289d = cVar4;
        this.f51290e = cVar5;
    }

    public static q a(u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> cVar, u7.c<h0> cVar2, u7.c<e0> cVar3, u7.c<t> cVar4, u7.c<g5.a> cVar5) {
        return new q(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static SignUpViewModel c(com.qennnsad.aknkaksd.domain.usecase.auth.m mVar, h0 h0Var, e0 e0Var, t tVar, g5.a aVar) {
        return new SignUpViewModel(mVar, h0Var, e0Var, tVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public SignUpViewModel get() {
        return c(this.f51286a.get(), this.f51287b.get(), this.f51288c.get(), this.f51289d.get(), this.f51290e.get());
    }
}
