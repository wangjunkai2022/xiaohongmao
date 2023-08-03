package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: RemoveUserFromBlacklistUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class o implements dagger.internal.h<n> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48448a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48449b;

    public o(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48448a = cVar;
        this.f48449b = cVar2;
    }

    public static o a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new o(cVar, cVar2);
    }

    public static n c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new n(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public n get() {
        return c(this.f48448a.get(), this.f48449b.get());
    }
}
