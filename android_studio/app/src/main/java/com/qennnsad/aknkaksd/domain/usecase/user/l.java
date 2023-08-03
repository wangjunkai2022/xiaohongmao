package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: ModifyPasswordUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class l implements dagger.internal.h<k> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48432a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48433b;

    public l(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48432a = cVar;
        this.f48433b = cVar2;
    }

    public static l a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new l(cVar, cVar2);
    }

    public static k c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new k(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public k get() {
        return c(this.f48432a.get(), this.f48433b.get());
    }
}
