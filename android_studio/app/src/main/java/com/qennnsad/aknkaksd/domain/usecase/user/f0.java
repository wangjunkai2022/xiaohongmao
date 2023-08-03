package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: SyncUserMoneyUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class f0 implements dagger.internal.h<e0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48395a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48396b;

    public f0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48395a = cVar;
        this.f48396b = cVar2;
    }

    public static f0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new f0(cVar, cVar2);
    }

    public static e0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new e0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public e0 get() {
        return c(this.f48395a.get(), this.f48396b.get());
    }
}
