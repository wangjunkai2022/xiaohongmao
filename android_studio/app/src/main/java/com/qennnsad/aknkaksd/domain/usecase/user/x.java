package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: SyncMeUserUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class x implements dagger.internal.h<w> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48494a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48495b;

    public x(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48494a = cVar;
        this.f48495b = cVar2;
    }

    public static x a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new x(cVar, cVar2);
    }

    public static w c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new w(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public w get() {
        return c(this.f48494a.get(), this.f48495b.get());
    }
}
