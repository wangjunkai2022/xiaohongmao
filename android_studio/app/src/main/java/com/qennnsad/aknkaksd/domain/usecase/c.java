package com.qennnsad.aknkaksd.domain.usecase;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: GetContributorsUseCase_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class c implements dagger.internal.h<b> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f48163a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48164b;

    public c(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        this.f48163a = cVar;
        this.f48164b = cVar2;
    }

    public static c a(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        return new c(cVar, cVar2);
    }

    public static b c(m mVar, g5.a aVar) {
        return new b(mVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public b get() {
        return c(this.f48163a.get(), this.f48164b.get());
    }
}
