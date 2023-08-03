package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.util.t0;

/* compiled from: RequestAppConfigUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<g> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48018a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48019b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<DnsResolver> f48020c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<t0> f48021d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.dns.h> f48022e;

    public h(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<DnsResolver> cVar3, u7.c<t0> cVar4, u7.c<com.qennnsad.aknkaksd.data.repository.dns.h> cVar5) {
        this.f48018a = cVar;
        this.f48019b = cVar2;
        this.f48020c = cVar3;
        this.f48021d = cVar4;
        this.f48022e = cVar5;
    }

    public static h a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<g5.a> cVar2, u7.c<DnsResolver> cVar3, u7.c<t0> cVar4, u7.c<com.qennnsad.aknkaksd.data.repository.dns.h> cVar5) {
        return new h(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static g c(com.qennnsad.aknkaksd.data.repository.m mVar, g5.a aVar, DnsResolver dnsResolver, t0 t0Var, com.qennnsad.aknkaksd.data.repository.dns.h hVar) {
        return new g(mVar, aVar, dnsResolver, t0Var, hVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public g get() {
        return c(this.f48018a.get(), this.f48019b.get(), this.f48020c.get(), this.f48021d.get(), this.f48022e.get());
    }
}
