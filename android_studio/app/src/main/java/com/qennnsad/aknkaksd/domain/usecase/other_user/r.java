package com.qennnsad.aknkaksd.domain.usecase.other_user;

import dagger.internal.s;

/* compiled from: UnfollowUserUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class r implements dagger.internal.h<q> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48260a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48261b;

    public r(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48260a = cVar;
        this.f48261b = cVar2;
    }

    public static r a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new r(cVar, cVar2);
    }

    public static q c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new q(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public q get() {
        return c(this.f48260a.get(), this.f48261b.get());
    }
}
