package com.qennnsad.aknkaksd.data.repository.dns;

import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.t0;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: DnsResolver_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class g implements dagger.internal.h<DnsResolver> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<t0> f47725a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f47726b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<g5.a> f47727c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<h> f47728d;

    public g(u7.c<t0> cVar, u7.c<m> cVar2, u7.c<g5.a> cVar3, u7.c<h> cVar4) {
        this.f47725a = cVar;
        this.f47726b = cVar2;
        this.f47727c = cVar3;
        this.f47728d = cVar4;
    }

    public static g a(u7.c<t0> cVar, u7.c<m> cVar2, u7.c<g5.a> cVar3, u7.c<h> cVar4) {
        return new g(cVar, cVar2, cVar3, cVar4);
    }

    public static DnsResolver c(t0 t0Var, m mVar, g5.a aVar, h hVar) {
        return new DnsResolver(t0Var, mVar, aVar, hVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public DnsResolver get() {
        return c(this.f47725a.get(), this.f47726b.get(), this.f47727c.get(), this.f47728d.get());
    }
}
