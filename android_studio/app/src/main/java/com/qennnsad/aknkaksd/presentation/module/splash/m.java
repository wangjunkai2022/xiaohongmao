package com.qennnsad.aknkaksd.presentation.module.splash;

import com.qennnsad.aknkaksd.util.m1;
import com.qennnsad.aknkaksd.util.t0;
import dagger.internal.r;

/* compiled from: SplashActivity_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class m implements d6.g<SplashActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f52442a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<t0> f52443b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<m1> f52444c;

    public m(u7.c<g5.a> cVar, u7.c<t0> cVar2, u7.c<m1> cVar3) {
        this.f52442a = cVar;
        this.f52443b = cVar2;
        this.f52444c = cVar3;
    }

    public static d6.g<SplashActivity> b(u7.c<g5.a> cVar, u7.c<t0> cVar2, u7.c<m1> cVar3) {
        return new m(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity.localDataManager")
    public static void c(SplashActivity splashActivity, g5.a aVar) {
        splashActivity.f52388f = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity.networkUtility")
    public static void e(SplashActivity splashActivity, t0 t0Var) {
        splashActivity.f52389g = t0Var;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity.updateUtil")
    public static void f(SplashActivity splashActivity, m1 m1Var) {
        splashActivity.f52390h = m1Var;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(SplashActivity splashActivity) {
        c(splashActivity, this.f52442a.get());
        e(splashActivity, this.f52443b.get());
        f(splashActivity, this.f52444c.get());
    }
}
