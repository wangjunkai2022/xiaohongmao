package com.qennnsad.aknkaksd.domain.usecase.app;

import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;

/* compiled from: SyncConfigUseCase_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class t implements dagger.internal.h<s> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48043a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f48044b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<DnsResolver> f48045c;

    public t(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<DnsResolver> cVar3) {
        this.f48043a = cVar;
        this.f48044b = cVar2;
        this.f48045c = cVar3;
    }

    public static t a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2, u7.c<DnsResolver> cVar3) {
        return new t(cVar, cVar2, cVar3);
    }

    public static s c(g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar, DnsResolver dnsResolver) {
        return new s(aVar, mVar, dnsResolver);
    }

    @Override // u7.c
    /* renamed from: b */
    public s get() {
        return c(this.f48043a.get(), this.f48044b.get(), this.f48045c.get());
    }
}
