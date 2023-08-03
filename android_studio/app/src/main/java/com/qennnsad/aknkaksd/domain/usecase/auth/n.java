package com.qennnsad.aknkaksd.domain.usecase.auth;

/* compiled from: GetGraphCaptchaUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<m> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48117a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.f> f48118b;

    public n(u7.c<g5.a> cVar, u7.c<g5.f> cVar2) {
        this.f48117a = cVar;
        this.f48118b = cVar2;
    }

    public static n a(u7.c<g5.a> cVar, u7.c<g5.f> cVar2) {
        return new n(cVar, cVar2);
    }

    public static m c(g5.a aVar, g5.f fVar) {
        return new m(aVar, fVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public m get() {
        return c(this.f48117a.get(), this.f48118b.get());
    }
}
