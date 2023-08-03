package com.qennnsad.aknkaksd.domain.usecase.room;

/* compiled from: GetShareDataUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class r implements dagger.internal.h<q> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48343a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48344b;

    public r(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        this.f48343a = cVar;
        this.f48344b = cVar2;
    }

    public static r a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2) {
        return new r(cVar, cVar2);
    }

    public static q c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar) {
        return new q(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public q get() {
        return c(this.f48343a.get(), this.f48344b.get());
    }
}
