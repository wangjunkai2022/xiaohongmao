package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import dagger.internal.r;

/* compiled from: AdminListActivity_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class e implements d6.g<AdminListActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f53542a;

    public e(u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar) {
        this.f53542a = cVar;
    }

    public static d6.g<AdminListActivity> b(u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar) {
        return new e(cVar);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.manage.AdminListActivity.wsObjectPool")
    public static void d(AdminListActivity adminListActivity, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        adminListActivity.f53489d = jVar;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(AdminListActivity adminListActivity) {
        d(adminListActivity, this.f53542a.get());
    }
}
