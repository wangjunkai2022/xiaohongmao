package com.qennnsad.aknkaksd.presentation.module.main.profile;

import com.qennnsad.aknkaksd.domain.usecase.other_user.q;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: UserProfileViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<UserProfileViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51917a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f51918b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.j> f51919c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.c> f51920d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> f51921e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<q> f51922f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.c> f51923g;

    /* renamed from: h  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.m> f51924h;

    public n(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.j> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.c> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar5, u7.c<q> cVar6, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.c> cVar7, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.m> cVar8) {
        this.f51917a = cVar;
        this.f51918b = cVar2;
        this.f51919c = cVar3;
        this.f51920d = cVar4;
        this.f51921e = cVar5;
        this.f51922f = cVar6;
        this.f51923g = cVar7;
        this.f51924h = cVar8;
    }

    public static n a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.j> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.c> cVar4, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar5, u7.c<q> cVar6, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.c> cVar7, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.m> cVar8) {
        return new n(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8);
    }

    public static UserProfileViewModel c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar, com.qennnsad.aknkaksd.domain.usecase.other_user.j jVar, com.qennnsad.aknkaksd.domain.usecase.anchor.c cVar, com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar, q qVar, com.qennnsad.aknkaksd.domain.usecase.other_user.c cVar2, com.qennnsad.aknkaksd.domain.usecase.other_user.m mVar2) {
        return new UserProfileViewModel(aVar, mVar, jVar, cVar, gVar, qVar, cVar2, mVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public UserProfileViewModel get() {
        return c(this.f51917a.get(), this.f51918b.get(), this.f51919c.get(), this.f51920d.get(), this.f51921e.get(), this.f51922f.get(), this.f51923g.get(), this.f51924h.get());
    }
}
