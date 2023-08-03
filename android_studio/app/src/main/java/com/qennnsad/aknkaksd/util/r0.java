package com.qennnsad.aknkaksd.util;

import android.content.Context;

/* compiled from: MysteryUtil_Factory.java */
@dagger.internal.r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@dagger.internal.s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class r0 implements dagger.internal.h<q0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f54892a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f54893b;

    public r0(u7.c<Context> cVar, u7.c<g5.a> cVar2) {
        this.f54892a = cVar;
        this.f54893b = cVar2;
    }

    public static r0 a(u7.c<Context> cVar, u7.c<g5.a> cVar2) {
        return new r0(cVar, cVar2);
    }

    public static q0 c(Context context, g5.a aVar) {
        return new q0(context, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public q0 get() {
        return c(this.f54892a.get(), this.f54893b.get());
    }
}
