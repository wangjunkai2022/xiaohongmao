package com.qennnsad.aknkaksd.domain.usecase.anchor;

/* compiled from: LoadPrivateLimitUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class t implements dagger.internal.h<s> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48001a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48002b;

    public t(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48001a = cVar;
        this.f48002b = cVar2;
    }

    public static t a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new t(cVar, cVar2);
    }

    public static s c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new s(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public s get() {
        return c(this.f48001a.get(), this.f48002b.get());
    }
}
