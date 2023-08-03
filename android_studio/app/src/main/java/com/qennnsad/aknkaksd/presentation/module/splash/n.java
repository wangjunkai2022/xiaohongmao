package com.qennnsad.aknkaksd.presentation.module.splash;

import androidx.lifecycle.SavedStateHandle;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.domain.usecase.auth.v;
import com.qennnsad.aknkaksd.util.JwtUtil;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SplashViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<SplashViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<SavedStateHandle> f52445a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.app.o> f52446b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.app.l> f52447c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.app.g> f52448d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<v> f52449e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<g5.a> f52450f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<JwtUtil> f52451g;

    /* renamed from: h  reason: collision with root package name */
    private final u7.c<DnsResolver> f52452h;

    /* renamed from: i  reason: collision with root package name */
    private final u7.c<x4.a> f52453i;

    public n(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.o> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.l> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.g> cVar4, u7.c<v> cVar5, u7.c<g5.a> cVar6, u7.c<JwtUtil> cVar7, u7.c<DnsResolver> cVar8, u7.c<x4.a> cVar9) {
        this.f52445a = cVar;
        this.f52446b = cVar2;
        this.f52447c = cVar3;
        this.f52448d = cVar4;
        this.f52449e = cVar5;
        this.f52450f = cVar6;
        this.f52451g = cVar7;
        this.f52452h = cVar8;
        this.f52453i = cVar9;
    }

    public static n a(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.o> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.l> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.app.g> cVar4, u7.c<v> cVar5, u7.c<g5.a> cVar6, u7.c<JwtUtil> cVar7, u7.c<DnsResolver> cVar8, u7.c<x4.a> cVar9) {
        return new n(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, cVar9);
    }

    public static SplashViewModel c(SavedStateHandle savedStateHandle, com.qennnsad.aknkaksd.domain.usecase.app.o oVar, com.qennnsad.aknkaksd.domain.usecase.app.l lVar, com.qennnsad.aknkaksd.domain.usecase.app.g gVar, v vVar, g5.a aVar, JwtUtil jwtUtil, DnsResolver dnsResolver, x4.a aVar2) {
        return new SplashViewModel(savedStateHandle, oVar, lVar, gVar, vVar, aVar, jwtUtil, dnsResolver, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public SplashViewModel get() {
        return c(this.f52445a.get(), this.f52446b.get(), this.f52447c.get(), this.f52448d.get(), this.f52449e.get(), this.f52450f.get(), this.f52451g.get(), this.f52452h.get(), this.f52453i.get());
    }
}
