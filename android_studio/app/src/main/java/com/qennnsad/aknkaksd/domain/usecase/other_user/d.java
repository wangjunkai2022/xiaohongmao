package com.qennnsad.aknkaksd.domain.usecase.other_user;

import dagger.internal.s;

/* compiled from: BlacklistUserUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class d implements dagger.internal.h<c> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48229a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48230b;

    public d(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48229a = cVar;
        this.f48230b = cVar2;
    }

    public static d a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new d(cVar, cVar2);
    }

    public static c c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new c(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public c get() {
        return c(this.f48229a.get(), this.f48230b.get());
    }
}
