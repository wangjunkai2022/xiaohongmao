package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateBirthdayUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class j0 implements dagger.internal.h<i0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48418a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48419b;

    public j0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48418a = cVar;
        this.f48419b = cVar2;
    }

    public static j0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new j0(cVar, cVar2);
    }

    public static i0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new i0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public i0 get() {
        return c(this.f48418a.get(), this.f48419b.get());
    }
}
