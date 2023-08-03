package com.qennnsad.aknkaksd.presentation.ui.main;

import android.content.Context;

/* compiled from: RankFlavorController_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class z implements dagger.internal.h<y> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f53259a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f53260b;

    public z(u7.c<Context> cVar, u7.c<g5.a> cVar2) {
        this.f53259a = cVar;
        this.f53260b = cVar2;
    }

    public static z a(u7.c<Context> cVar, u7.c<g5.a> cVar2) {
        return new z(cVar, cVar2);
    }

    public static y c(Context context, g5.a aVar) {
        return new y(context, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public y get() {
        return c(this.f53259a.get(), this.f53260b.get());
    }
}
