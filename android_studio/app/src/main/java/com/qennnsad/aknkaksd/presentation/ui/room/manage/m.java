package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import dagger.internal.r;

/* compiled from: RoomManageDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class m implements d6.g<RoomManageDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f53567a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f53568b;

    public m(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2) {
        this.f53567a = cVar;
        this.f53568b = cVar2;
    }

    public static d6.g<RoomManageDialog> b(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2) {
        return new m(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.manage.RoomManageDialog.localDataManager")
    public static void c(RoomManageDialog roomManageDialog, g5.a aVar) {
        roomManageDialog.f53508k = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.manage.RoomManageDialog.wsObjectPool")
    public static void e(RoomManageDialog roomManageDialog, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        roomManageDialog.f53509l = jVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(RoomManageDialog roomManageDialog) {
        c(roomManageDialog, this.f53567a.get());
        e(roomManageDialog, this.f53568b.get());
    }
}
