package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateGenderUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class v0 implements dagger.internal.h<u0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48487a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48488b;

    public v0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48487a = cVar;
        this.f48488b = cVar2;
    }

    public static v0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new v0(cVar, cVar2);
    }

    public static u0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new u0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public u0 get() {
        return c(this.f48487a.get(), this.f48488b.get());
    }
}
