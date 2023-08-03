package com.qennnsad.aknkaksd.presentation.ui.main;

import com.qennnsad.aknkaksd.domain.usecase.room.i0;
import com.qennnsad.aknkaksd.domain.usecase.user.e0;

/* compiled from: MainViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class v implements dagger.internal.h<MainViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f53249a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.app.c> f53250b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.app.w> f53251c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.gift.d> f53252d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.w> f53253e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<e0> f53254f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<i0> f53255g;

    public v(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.c> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.w> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.gift.d> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.w> cVar5, u7.c<e0> cVar6, u7.c<i0> cVar7) {
        this.f53249a = cVar;
        this.f53250b = cVar2;
        this.f53251c = cVar3;
        this.f53252d = cVar4;
        this.f53253e = cVar5;
        this.f53254f = cVar6;
        this.f53255g = cVar7;
    }

    public static v a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.c> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.w> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.gift.d> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.w> cVar5, u7.c<e0> cVar6, u7.c<i0> cVar7) {
        return new v(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7);
    }

    public static MainViewModel c(g5.a aVar, com.qennnsad.aknkaksd.domain.usecase.app.c cVar, com.qennnsad.aknkaksd.domain.usecase.app.w wVar, com.qennnsad.aknkaksd.domain.usecase.gift.d dVar, com.qennnsad.aknkaksd.domain.usecase.user.w wVar2, e0 e0Var, i0 i0Var) {
        return new MainViewModel(aVar, cVar, wVar, dVar, wVar2, e0Var, i0Var);
    }

    @Override // u7.c
    /* renamed from: b */
    public MainViewModel get() {
        return c(this.f53249a.get(), this.f53250b.get(), this.f53251c.get(), this.f53252d.get(), this.f53253e.get(), this.f53254f.get(), this.f53255g.get());
    }
}
