package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: GetBlacklistedUsersUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class e implements dagger.internal.h<d> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48387a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48388b;

    public e(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48387a = cVar;
        this.f48388b = cVar2;
    }

    public static e a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new e(cVar, cVar2);
    }

    public static d c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new d(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public d get() {
        return c(this.f48387a.get(), this.f48388b.get());
    }
}
