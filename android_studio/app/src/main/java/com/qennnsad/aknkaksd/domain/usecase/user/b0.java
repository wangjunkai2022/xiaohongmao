package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: SyncMyFanClubInfoUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class b0 implements dagger.internal.h<a0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48373a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48374b;

    public b0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48373a = cVar;
        this.f48374b = cVar2;
    }

    public static b0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new b0(cVar, cVar2);
    }

    public static a0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new a0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public a0 get() {
        return c(this.f48373a.get(), this.f48374b.get());
    }
}
