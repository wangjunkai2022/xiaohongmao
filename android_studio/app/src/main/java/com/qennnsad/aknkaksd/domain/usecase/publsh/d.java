package com.qennnsad.aknkaksd.domain.usecase.publsh;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.e;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: GetLiveRoomEndInfoUseCase_Factory.java */
@r
@e
@s
/* loaded from: classes3.dex */
public final class d implements h<c> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f48271a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48272b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f48273c;

    public d(u7.c<m> cVar, u7.c<g5.a> cVar2, u7.c<x4.a> cVar3) {
        this.f48271a = cVar;
        this.f48272b = cVar2;
        this.f48273c = cVar3;
    }

    public static d a(u7.c<m> cVar, u7.c<g5.a> cVar2, u7.c<x4.a> cVar3) {
        return new d(cVar, cVar2, cVar3);
    }

    public static c c(m mVar, g5.a aVar, x4.a aVar2) {
        return new c(mVar, aVar, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public c get() {
        return c(this.f48271a.get(), this.f48272b.get(), this.f48273c.get());
    }
}
