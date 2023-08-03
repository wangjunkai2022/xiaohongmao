package com.qennnsad.aknkaksd.domain.usecase.anchor;

/* compiled from: GetPageListForSearchUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class q implements dagger.internal.h<p> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f47996a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f47997b;

    public q(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f47996a = cVar;
        this.f47997b = cVar2;
    }

    public static q a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new q(cVar, cVar2);
    }

    public static p c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new p(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public p get() {
        return c(this.f47996a.get(), this.f47997b.get());
    }
}
