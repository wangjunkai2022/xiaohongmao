package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: SendDanmuUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class b0 implements dagger.internal.h<a0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48287a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48288b;

    public b0(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48287a = cVar;
        this.f48288b = cVar2;
    }

    public static b0 a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new b0(cVar, cVar2);
    }

    public static a0 c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new a0(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public a0 get() {
        return c(this.f48287a.get(), this.f48288b.get());
    }
}
