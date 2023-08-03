package com.qennnsad.aknkaksd.domain.usecase.auth;

/* compiled from: LogoutUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class d0 implements dagger.internal.h<c0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48074a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48075b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f48076c;

    public d0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<x4.a> cVar3) {
        this.f48074a = cVar;
        this.f48075b = cVar2;
        this.f48076c = cVar3;
    }

    public static d0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<x4.a> cVar3) {
        return new d0(cVar, cVar2, cVar3);
    }

    public static c0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar, x4.a aVar2) {
        return new c0(aVar, mVar, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public c0 get() {
        return c(this.f48074a.get(), this.f48075b.get(), this.f48076c.get());
    }
}
