package com.qennnsad.aknkaksd.domain.usecase.anchor;

/* compiled from: GetPageListForAnchorUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<i> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f47981a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f47982b;

    public k(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f47981a = cVar;
        this.f47982b = cVar2;
    }

    public static k a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new k(cVar, cVar2);
    }

    public static i c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new i(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public i get() {
        return c(this.f47981a.get(), this.f47982b.get());
    }
}
