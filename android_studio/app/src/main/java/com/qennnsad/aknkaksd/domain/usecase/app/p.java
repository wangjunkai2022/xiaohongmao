package com.qennnsad.aknkaksd.domain.usecase.app;

/* compiled from: RequestLaunchAdUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class p implements dagger.internal.h<o> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48035a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48036b;

    public p(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48035a = cVar;
        this.f48036b = cVar2;
    }

    public static p a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new p(cVar, cVar2);
    }

    public static o c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new o(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public o get() {
        return c(this.f48035a.get(), this.f48036b.get());
    }
}
