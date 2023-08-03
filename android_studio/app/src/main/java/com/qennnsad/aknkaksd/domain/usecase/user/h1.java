package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateNicknameUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class h1 implements dagger.internal.h<g1> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48408a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48409b;

    public h1(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48408a = cVar;
        this.f48409b = cVar2;
    }

    public static h1 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new h1(cVar, cVar2);
    }

    public static g1 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new g1(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public g1 get() {
        return c(this.f48408a.get(), this.f48409b.get());
    }
}
