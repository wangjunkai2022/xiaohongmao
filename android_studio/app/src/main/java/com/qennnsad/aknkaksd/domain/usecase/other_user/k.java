package com.qennnsad.aknkaksd.domain.usecase.other_user;

import dagger.internal.s;

/* compiled from: GetUserInfoUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<j> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48244a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48245b;

    public k(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48244a = cVar;
        this.f48245b = cVar2;
    }

    public static k a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new k(cVar, cVar2);
    }

    public static j c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new j(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public j get() {
        return c(this.f48244a.get(), this.f48245b.get());
    }
}
