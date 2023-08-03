package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: SyncDepositOptionsUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class j0 implements dagger.internal.h<i0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48327a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48328b;

    public j0(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48327a = cVar;
        this.f48328b = cVar2;
    }

    public static j0 a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new j0(cVar, cVar2);
    }

    public static i0 c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new i0(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public i0 get() {
        return c(this.f48327a.get(), this.f48328b.get());
    }
}
