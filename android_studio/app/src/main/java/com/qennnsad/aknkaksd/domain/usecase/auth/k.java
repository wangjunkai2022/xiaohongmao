package com.qennnsad.aknkaksd.domain.usecase.auth;

/* compiled from: ChangePasswordUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<j> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.f> f48111a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48112b;

    public k(u7.c<g5.f> cVar, u7.c<g5.a> cVar2) {
        this.f48111a = cVar;
        this.f48112b = cVar2;
    }

    public static k a(u7.c<g5.f> cVar, u7.c<g5.a> cVar2) {
        return new k(cVar, cVar2);
    }

    public static j c(g5.f fVar, g5.a aVar) {
        return new j(fVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public j get() {
        return c(this.f48111a.get(), this.f48112b.get());
    }
}
