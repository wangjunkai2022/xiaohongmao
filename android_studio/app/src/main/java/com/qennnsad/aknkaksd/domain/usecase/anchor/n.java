package com.qennnsad.aknkaksd.domain.usecase.anchor;

/* compiled from: GetPageListForFollowersUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<m> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f47989a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f47990b;

    public n(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f47989a = cVar;
        this.f47990b = cVar2;
    }

    public static n a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new n(cVar, cVar2);
    }

    public static m c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new m(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public m get() {
        return c(this.f47989a.get(), this.f47990b.get());
    }
}
