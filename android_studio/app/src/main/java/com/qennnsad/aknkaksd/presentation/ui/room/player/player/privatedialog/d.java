package com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog;

import d6.g;
import dagger.internal.j;
import dagger.internal.r;

/* compiled from: PrivateRoomFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class d implements g<PrivateRoomFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<x4.a> f53955a;

    public d(u7.c<x4.a> cVar) {
        this.f53955a = cVar;
    }

    public static g<PrivateRoomFragment> b(u7.c<x4.a> cVar) {
        return new d(cVar);
    }

    @j("com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.PrivateRoomFragment.analytics")
    public static void c(PrivateRoomFragment privateRoomFragment, x4.a aVar) {
        privateRoomFragment.f53924h = aVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(PrivateRoomFragment privateRoomFragment) {
        c(privateRoomFragment, this.f53955a.get());
    }
}
