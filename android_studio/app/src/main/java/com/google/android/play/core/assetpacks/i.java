package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class i extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f31328b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31329c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d0 f31330d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(d0 d0Var, com.google.android.play.core.tasks.o oVar, String str, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31330d = d0Var;
        this.f31328b = str;
        this.f31329c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        Bundle D;
        Bundle j4;
        try {
            tVar = this.f31330d.f31276d;
            str = this.f31330d.f31273a;
            D = d0.D(0, this.f31328b);
            j4 = d0.j();
            ((com.google.android.play.core.internal.i2) tVar.e()).L(str, D, j4, new a0(this.f31330d, this.f31329c));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "removePack(%s)", this.f31328b);
        }
    }
}
