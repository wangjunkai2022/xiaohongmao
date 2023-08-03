package com.qennnsad.aknkaksd.presentation.ui.main.me.edit;

import com.qennnsad.aknkaksd.domain.usecase.user.c1;
import com.qennnsad.aknkaksd.domain.usecase.user.g1;
import com.qennnsad.aknkaksd.domain.usecase.user.i0;
import com.qennnsad.aknkaksd.domain.usecase.user.m0;
import com.qennnsad.aknkaksd.domain.usecase.user.q0;
import com.qennnsad.aknkaksd.domain.usecase.user.s1;
import com.qennnsad.aknkaksd.domain.usecase.user.u0;
import com.qennnsad.aknkaksd.domain.usecase.user.y0;

/* compiled from: EditProfileViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class q implements dagger.internal.h<EditProfileViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f52978a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g1> f52979b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<y0> f52980c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<c1> f52981d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<m0> f52982e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<u0> f52983f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<i0> f52984g;

    /* renamed from: h  reason: collision with root package name */
    private final u7.c<q0> f52985h;

    /* renamed from: i  reason: collision with root package name */
    private final u7.c<s1> f52986i;

    public q(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g1> cVar2, u7.c<y0> cVar3, u7.c<c1> cVar4, u7.c<m0> cVar5, u7.c<u0> cVar6, u7.c<i0> cVar7, u7.c<q0> cVar8, u7.c<s1> cVar9) {
        this.f52978a = cVar;
        this.f52979b = cVar2;
        this.f52980c = cVar3;
        this.f52981d = cVar4;
        this.f52982e = cVar5;
        this.f52983f = cVar6;
        this.f52984g = cVar7;
        this.f52985h = cVar8;
        this.f52986i = cVar9;
    }

    public static q a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g1> cVar2, u7.c<y0> cVar3, u7.c<c1> cVar4, u7.c<m0> cVar5, u7.c<u0> cVar6, u7.c<i0> cVar7, u7.c<q0> cVar8, u7.c<s1> cVar9) {
        return new q(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, cVar9);
    }

    public static EditProfileViewModel c(com.qennnsad.aknkaksd.data.repository.m mVar, g1 g1Var, y0 y0Var, c1 c1Var, m0 m0Var, u0 u0Var, i0 i0Var, q0 q0Var, s1 s1Var) {
        return new EditProfileViewModel(mVar, g1Var, y0Var, c1Var, m0Var, u0Var, i0Var, q0Var, s1Var);
    }

    @Override // u7.c
    /* renamed from: b */
    public EditProfileViewModel get() {
        return c(this.f52978a.get(), this.f52979b.get(), this.f52980c.get(), this.f52981d.get(), this.f52982e.get(), this.f52983f.get(), this.f52984g.get(), this.f52985h.get(), this.f52986i.get());
    }
}
