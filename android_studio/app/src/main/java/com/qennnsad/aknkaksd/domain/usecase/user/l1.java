package com.qennnsad.aknkaksd.domain.usecase.user;

/* compiled from: UpdateSettingUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class l1 implements dagger.internal.h<k1> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48435a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48436b;

    public l1(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f48435a = cVar;
        this.f48436b = cVar2;
    }

    public static l1 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new l1(cVar, cVar2);
    }

    public static k1 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new k1(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public k1 get() {
        return c(this.f48435a.get(), this.f48436b.get());
    }
}
