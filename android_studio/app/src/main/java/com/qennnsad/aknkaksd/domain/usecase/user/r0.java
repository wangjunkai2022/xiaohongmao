package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateEmotionUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class r0 implements dagger.internal.h<q0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48467a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48468b;

    public r0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48467a = cVar;
        this.f48468b = cVar2;
    }

    public static r0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new r0(cVar, cVar2);
    }

    public static q0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new q0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public q0 get() {
        return c(this.f48467a.get(), this.f48468b.get());
    }
}
