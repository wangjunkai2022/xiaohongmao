package com.qennnsad.aknkaksd.domain.usecase;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: GetRanksUseCase_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class i implements dagger.internal.h<h> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f48221a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48222b;

    public i(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        this.f48221a = cVar;
        this.f48222b = cVar2;
    }

    public static i a(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        return new i(cVar, cVar2);
    }

    public static h c(m mVar, g5.a aVar) {
        return new h(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public h get() {
        return c(this.f48221a.get(), this.f48222b.get());
    }
}
