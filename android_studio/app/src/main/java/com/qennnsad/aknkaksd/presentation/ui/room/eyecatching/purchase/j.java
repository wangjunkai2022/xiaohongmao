package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase;

import dagger.internal.r;

/* compiled from: PurchaseItemListFragmentDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class j implements d6.g<PurchaseItemListFragmentDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f53410a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f53411b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f53412c;

    public j(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2, u7.c<x4.a> cVar3) {
        this.f53410a = cVar;
        this.f53411b = cVar2;
        this.f53412c = cVar3;
    }

    public static d6.g<PurchaseItemListFragmentDialog> b(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar2, u7.c<x4.a> cVar3) {
        return new j(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog.analytics")
    public static void c(PurchaseItemListFragmentDialog purchaseItemListFragmentDialog, x4.a aVar) {
        purchaseItemListFragmentDialog.f53376j = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog.localDataManager")
    public static void d(PurchaseItemListFragmentDialog purchaseItemListFragmentDialog, g5.a aVar) {
        purchaseItemListFragmentDialog.f53374h = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog.wsObjectPool")
    public static void f(PurchaseItemListFragmentDialog purchaseItemListFragmentDialog, com.qennnsad.aknkaksd.data.websocket.j jVar) {
        purchaseItemListFragmentDialog.f53375i = jVar;
    }

    @Override // d6.g
    /* renamed from: e */
    public void a(PurchaseItemListFragmentDialog purchaseItemListFragmentDialog) {
        d(purchaseItemListFragmentDialog, this.f53410a.get());
        f(purchaseItemListFragmentDialog, this.f53411b.get());
        c(purchaseItemListFragmentDialog, this.f53412c.get());
    }
}
