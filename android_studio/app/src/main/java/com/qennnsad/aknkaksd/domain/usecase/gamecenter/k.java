package com.qennnsad.aknkaksd.domain.usecase.gamecenter;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RequestGameCenterUrlUseCase_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<j> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48194a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f48195b;

    public k(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        this.f48194a = cVar;
        this.f48195b = cVar2;
    }

    public static k a(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        return new k(cVar, cVar2);
    }

    public static j c(g5.a aVar, m mVar) {
        return new j(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public j get() {
        return c(this.f48194a.get(), this.f48195b.get());
    }
}
