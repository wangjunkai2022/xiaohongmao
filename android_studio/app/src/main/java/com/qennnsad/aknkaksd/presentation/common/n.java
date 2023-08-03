package com.qennnsad.aknkaksd.presentation.common;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SharedViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<SharedViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f50950a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f50951b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f50952c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.j> f50953d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.f> f50954e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.s> f50955f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.r> f50956g;

    /* renamed from: h  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.room.e> f50957h;

    public n(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<x4.a> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.j> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.f> cVar5, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.s> cVar6, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.r> cVar7, u7.c<com.qennnsad.aknkaksd.domain.usecase.room.e> cVar8) {
        this.f50950a = cVar;
        this.f50951b = cVar2;
        this.f50952c = cVar3;
        this.f50953d = cVar4;
        this.f50954e = cVar5;
        this.f50955f = cVar6;
        this.f50956g = cVar7;
        this.f50957h = cVar8;
    }

    public static n a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<x4.a> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.j> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.gamecenter.f> cVar5, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.s> cVar6, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.r> cVar7, u7.c<com.qennnsad.aknkaksd.domain.usecase.room.e> cVar8) {
        return new n(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8);
    }

    public static SharedViewModel c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar, x4.a aVar2, com.qennnsad.aknkaksd.domain.usecase.gamecenter.j jVar, com.qennnsad.aknkaksd.domain.usecase.gamecenter.f fVar, com.qennnsad.aknkaksd.domain.usecase.anchor.s sVar, com.qennnsad.aknkaksd.domain.usecase.auth.r rVar, com.qennnsad.aknkaksd.domain.usecase.room.e eVar) {
        return new SharedViewModel(aVar, mVar, aVar2, jVar, fVar, sVar, rVar, eVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public SharedViewModel get() {
        return c(this.f50950a.get(), this.f50951b.get(), this.f50952c.get(), this.f50953d.get(), this.f50954e.get(), this.f50955f.get(), this.f50956g.get(), this.f50957h.get());
    }
}
