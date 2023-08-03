package com.qennnsad.aknkaksd.presentation.ui.room;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.j;
import dagger.internal.r;

/* compiled from: RoomFinishedFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class i implements d6.g<RoomFinishedFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f53484a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f53485b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f53486c;

    public i(u7.c<m> cVar, u7.c<g5.a> cVar2, u7.c<x4.a> cVar3) {
        this.f53484a = cVar;
        this.f53485b = cVar2;
        this.f53486c = cVar3;
    }

    public static d6.g<RoomFinishedFragment> b(u7.c<m> cVar, u7.c<g5.a> cVar2, u7.c<x4.a> cVar3) {
        return new i(cVar, cVar2, cVar3);
    }

    @j("com.qennnsad.aknkaksd.presentation.ui.room.RoomFinishedFragment.analytics")
    public static void c(RoomFinishedFragment roomFinishedFragment, x4.a aVar) {
        roomFinishedFragment.f53273j = aVar;
    }

    @j("com.qennnsad.aknkaksd.presentation.ui.room.RoomFinishedFragment.localDataManager")
    public static void d(RoomFinishedFragment roomFinishedFragment, g5.a aVar) {
        roomFinishedFragment.f53272i = aVar;
    }

    @j("com.qennnsad.aknkaksd.presentation.ui.room.RoomFinishedFragment.sourceFactory")
    public static void f(RoomFinishedFragment roomFinishedFragment, m mVar) {
        roomFinishedFragment.f53271h = mVar;
    }

    @Override // d6.g
    /* renamed from: e */
    public void a(RoomFinishedFragment roomFinishedFragment) {
        f(roomFinishedFragment, this.f53484a.get());
        d(roomFinishedFragment, this.f53485b.get());
        c(roomFinishedFragment, this.f53486c.get());
    }
}
