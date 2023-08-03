package com.qennnsad.aknkaksd.domain.usecase;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: GetRankSeatUseCase_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class f implements dagger.internal.h<e> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f48171a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48172b;

    public f(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        this.f48171a = cVar;
        this.f48172b = cVar2;
    }

    public static f a(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        return new f(cVar, cVar2);
    }

    public static e c(m mVar, g5.a aVar) {
        return new e(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public e get() {
        return c(this.f48171a.get(), this.f48172b.get());
    }
}
