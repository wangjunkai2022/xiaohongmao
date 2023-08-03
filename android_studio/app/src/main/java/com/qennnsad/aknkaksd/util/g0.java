package com.qennnsad.aknkaksd.util;

/* compiled from: FanClubUtil_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class g0 implements dagger.internal.h<e0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f54725a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f54726b;

    public g0(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f54725a = cVar;
        this.f54726b = cVar2;
    }

    public static g0 a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new g0(cVar, cVar2);
    }

    public static e0 c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar) {
        return new e0(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public e0 get() {
        return c(this.f54725a.get(), this.f54726b.get());
    }
}
