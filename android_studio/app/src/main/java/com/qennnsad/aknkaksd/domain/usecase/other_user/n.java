package com.qennnsad.aknkaksd.domain.usecase.other_user;

import dagger.internal.s;

/* compiled from: UnblacklistUserUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<m> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48250a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48251b;

    public n(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48250a = cVar;
        this.f48251b = cVar2;
    }

    public static n a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new n(cVar, cVar2);
    }

    public static m c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new m(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public m get() {
        return c(this.f48250a.get(), this.f48251b.get());
    }
}
