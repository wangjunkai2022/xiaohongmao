package com.qennnsad.aknkaksd.domain.usecase.auth;

/* compiled from: ImLoginUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class s implements dagger.internal.h<r> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48126a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.f> f48127b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f48128c;

    public s(u7.c<g5.a> cVar, u7.c<g5.f> cVar2, u7.c<x4.a> cVar3) {
        this.f48126a = cVar;
        this.f48127b = cVar2;
        this.f48128c = cVar3;
    }

    public static s a(u7.c<g5.a> cVar, u7.c<g5.f> cVar2, u7.c<x4.a> cVar3) {
        return new s(cVar, cVar2, cVar3);
    }

    public static r c(g5.a aVar, g5.f fVar, x4.a aVar2) {
        return new r(aVar, fVar, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public r get() {
        return c(this.f48126a.get(), this.f48127b.get(), this.f48128c.get());
    }
}
