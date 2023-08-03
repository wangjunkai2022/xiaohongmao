package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class p extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f31509b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31510c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d0 f31511d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(d0 d0Var, com.google.android.play.core.tasks.o oVar, int i4, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31511d = d0Var;
        this.f31509b = i4;
        this.f31510c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        Bundle k10;
        Bundle j4;
        try {
            tVar = this.f31511d.f31276d;
            str = this.f31511d.f31273a;
            k10 = d0.k(this.f31509b);
            j4 = d0.j();
            ((com.google.android.play.core.internal.i2) tVar.e()).D0(str, k10, j4, new z(this.f31511d, this.f31510c));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "notifySessionFailed", new Object[0]);
        }
    }
}
