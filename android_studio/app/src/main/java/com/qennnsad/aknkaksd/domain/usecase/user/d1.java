package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateNameCardUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class d1 implements dagger.internal.h<c1> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48385a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48386b;

    public d1(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48385a = cVar;
        this.f48386b = cVar2;
    }

    public static d1 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new d1(cVar, cVar2);
    }

    public static c1 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new c1(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public c1 get() {
        return c(this.f48385a.get(), this.f48386b.get());
    }
}
