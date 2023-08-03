package com.qennnsad.aknkaksd.domain.usecase.auth;

/* compiled from: SendSmsUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class i0 implements dagger.internal.h<h0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48102a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.f> f48103b;

    public i0(u7.c<g5.a> cVar, u7.c<g5.f> cVar2) {
        this.f48102a = cVar;
        this.f48103b = cVar2;
    }

    public static i0 a(u7.c<g5.a> cVar, u7.c<g5.f> cVar2) {
        return new i0(cVar, cVar2);
    }

    public static h0 c(g5.a aVar, g5.f fVar) {
        return new h0(aVar, fVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public h0 get() {
        return c(this.f48102a.get(), this.f48103b.get());
    }
}
