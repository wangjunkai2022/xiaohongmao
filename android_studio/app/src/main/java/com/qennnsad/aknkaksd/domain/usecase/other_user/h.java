package com.qennnsad.aknkaksd.domain.usecase.other_user;

import dagger.internal.s;

/* compiled from: FollowUserUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<g> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48239a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48240b;

    public h(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48239a = cVar;
        this.f48240b = cVar2;
    }

    public static h a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new h(cVar, cVar2);
    }

    public static g c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new g(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public g get() {
        return c(this.f48239a.get(), this.f48240b.get());
    }
}
