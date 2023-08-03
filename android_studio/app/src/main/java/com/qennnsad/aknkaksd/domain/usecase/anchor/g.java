package com.qennnsad.aknkaksd.domain.usecase.anchor;

/* compiled from: GetFollowAnchorUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class g implements dagger.internal.h<f> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f47970a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f47971b;

    public g(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f47970a = cVar;
        this.f47971b = cVar2;
    }

    public static g a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new g(cVar, cVar2);
    }

    public static f c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new f(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public f get() {
        return c(this.f47970a.get(), this.f47971b.get());
    }
}
