package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: InterruptDepositUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class u implements dagger.internal.h<t> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48348a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48349b;

    public u(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48348a = cVar;
        this.f48349b = cVar2;
    }

    public static u a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new u(cVar, cVar2);
    }

    public static t c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new t(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public t get() {
        return c(this.f48348a.get(), this.f48349b.get());
    }
}
