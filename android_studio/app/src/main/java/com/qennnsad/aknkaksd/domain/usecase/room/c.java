package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: CheckPrivatePassUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class c implements dagger.internal.h<b> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48289a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48290b;

    public c(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48289a = cVar;
        this.f48290b = cVar2;
    }

    public static c a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new c(cVar, cVar2);
    }

    public static b c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new b(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public b get() {
        return c(this.f48289a.get(), this.f48290b.get());
    }
}
