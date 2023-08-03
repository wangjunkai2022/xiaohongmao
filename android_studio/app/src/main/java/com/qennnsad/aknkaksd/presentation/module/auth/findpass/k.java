package com.qennnsad.aknkaksd.presentation.module.auth.findpass;

import com.qennnsad.aknkaksd.domain.usecase.auth.h0;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RestorePasswordViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<RestorePasswordViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<h0> f51091a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> f51092b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.j> f51093c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<g5.a> f51094d;

    public k(u7.c<h0> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.j> cVar3, u7.c<g5.a> cVar4) {
        this.f51091a = cVar;
        this.f51092b = cVar2;
        this.f51093c = cVar3;
        this.f51094d = cVar4;
    }

    public static k a(u7.c<h0> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.m> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.j> cVar3, u7.c<g5.a> cVar4) {
        return new k(cVar, cVar2, cVar3, cVar4);
    }

    public static RestorePasswordViewModel c(h0 h0Var, com.qennnsad.aknkaksd.domain.usecase.auth.m mVar, com.qennnsad.aknkaksd.domain.usecase.auth.j jVar, g5.a aVar) {
        return new RestorePasswordViewModel(h0Var, mVar, jVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public RestorePasswordViewModel get() {
        return c(this.f51091a.get(), this.f51092b.get(), this.f51093c.get(), this.f51094d.get());
    }
}
