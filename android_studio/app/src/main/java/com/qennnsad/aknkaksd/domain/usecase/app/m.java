package com.qennnsad.aknkaksd.domain.usecase.app;

/* compiled from: RequestAppVersionUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class m implements dagger.internal.h<l> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48029a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48030b;

    public m(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48029a = cVar;
        this.f48030b = cVar2;
    }

    public static m a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new m(cVar, cVar2);
    }

    public static l c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new l(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public l get() {
        return c(this.f48029a.get(), this.f48030b.get());
    }
}
