package com.qennnsad.aknkaksd.util;

/* compiled from: DebugInfoUtil_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class r implements dagger.internal.h<q> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f54891a;

    public r(u7.c<g5.a> cVar) {
        this.f54891a = cVar;
    }

    public static r a(u7.c<g5.a> cVar) {
        return new r(cVar);
    }

    public static q c(g5.a aVar) {
        return new q(aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public q get() {
        return c(this.f54891a.get());
    }
}
