package com.qennnsad.aknkaksd.util;

/* compiled from: JwtUtil_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class n0 implements dagger.internal.h<JwtUtil> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f54864a;

    public n0(u7.c<g5.a> cVar) {
        this.f54864a = cVar;
    }

    public static n0 a(u7.c<g5.a> cVar) {
        return new n0(cVar);
    }

    public static JwtUtil c(g5.a aVar) {
        return new JwtUtil(aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public JwtUtil get() {
        return c(this.f54864a.get());
    }
}
