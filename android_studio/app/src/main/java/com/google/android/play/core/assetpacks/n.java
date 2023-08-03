package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class n extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f31465b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f31466c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f31467d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f31468e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31469f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ d0 f31470g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(d0 d0Var, com.google.android.play.core.tasks.o oVar, int i4, String str, String str2, int i10, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31470g = d0Var;
        this.f31465b = i4;
        this.f31466c = str;
        this.f31467d = str2;
        this.f31468e = i10;
        this.f31469f = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        Bundle j4;
        try {
            tVar = this.f31470g.f31276d;
            str = this.f31470g.f31273a;
            Bundle o9 = d0.o(this.f31465b, this.f31466c, this.f31467d, this.f31468e);
            j4 = d0.j();
            ((com.google.android.play.core.internal.i2) tVar.e()).o0(str, o9, j4, new x(this.f31470g, this.f31469f));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "notifyChunkTransferred", new Object[0]);
        }
    }
}
