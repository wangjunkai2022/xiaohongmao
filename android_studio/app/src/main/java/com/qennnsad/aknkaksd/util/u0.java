package com.qennnsad.aknkaksd.util;

import android.content.Context;

/* compiled from: NetworkUtility_Factory.java */
@dagger.internal.r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@dagger.internal.s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class u0 implements dagger.internal.h<t0> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f55110a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f55111b;

    public u0(u7.c<Context> cVar, u7.c<g5.a> cVar2) {
        this.f55110a = cVar;
        this.f55111b = cVar2;
    }

    public static u0 a(u7.c<Context> cVar, u7.c<g5.a> cVar2) {
        return new u0(cVar, cVar2);
    }

    public static t0 c(Context context, g5.a aVar) {
        return new t0(context, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public t0 get() {
        return c(this.f55110a.get(), this.f55111b.get());
    }
}
