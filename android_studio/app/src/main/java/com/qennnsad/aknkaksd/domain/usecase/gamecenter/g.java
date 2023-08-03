package com.qennnsad.aknkaksd.domain.usecase.gamecenter;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RequestGameCenterPointsUseCase_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class g implements dagger.internal.h<f> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48187a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f48188b;

    public g(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        this.f48187a = cVar;
        this.f48188b = cVar2;
    }

    public static g a(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        return new g(cVar, cVar2);
    }

    public static f c(g5.a aVar, m mVar) {
        return new f(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public f get() {
        return c(this.f48187a.get(), this.f48188b.get());
    }
}
