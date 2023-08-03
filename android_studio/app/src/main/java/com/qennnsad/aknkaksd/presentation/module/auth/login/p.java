package com.qennnsad.aknkaksd.presentation.module.auth.login;

import com.qennnsad.aknkaksd.util.t0;

/* compiled from: LoginFragment_MembersInjector.java */
@dagger.internal.r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class p implements d6.g<LoginFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51196a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f51197b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<t0> f51198c;

    public p(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<t0> cVar3) {
        this.f51196a = cVar;
        this.f51197b = cVar2;
        this.f51198c = cVar3;
    }

    public static d6.g<LoginFragment> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<t0> cVar3) {
        return new p(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.auth.login.LoginFragment.networkUtility")
    public static void d(LoginFragment loginFragment, t0 t0Var) {
        loginFragment.f51112l = t0Var;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(LoginFragment loginFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(loginFragment, this.f51196a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(loginFragment, this.f51197b.get());
        d(loginFragment, this.f51198c.get());
    }
}
