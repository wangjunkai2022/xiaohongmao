package com.qennnsad.aknkaksd.presentation.module.main.search;

import com.qennnsad.aknkaksd.domain.usecase.anchor.p;
import com.qennnsad.aknkaksd.domain.usecase.other_user.q;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SearchUserViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<SearchUserViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f52035a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f52036b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f52037c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<p> f52038d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> f52039e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<q> f52040f;

    public k(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<x4.a> cVar3, u7.c<p> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar5, u7.c<q> cVar6) {
        this.f52035a = cVar;
        this.f52036b = cVar2;
        this.f52037c = cVar3;
        this.f52038d = cVar4;
        this.f52039e = cVar5;
        this.f52040f = cVar6;
    }

    public static k a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<x4.a> cVar3, u7.c<p> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar5, u7.c<q> cVar6) {
        return new k(cVar, cVar2, cVar3, cVar4, cVar5, cVar6);
    }

    public static SearchUserViewModel c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar, x4.a aVar2, p pVar, com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar, q qVar) {
        return new SearchUserViewModel(aVar, mVar, aVar2, pVar, gVar, qVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public SearchUserViewModel get() {
        return c(this.f52035a.get(), this.f52036b.get(), this.f52037c.get(), this.f52038d.get(), this.f52039e.get(), this.f52040f.get());
    }
}
