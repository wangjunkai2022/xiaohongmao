package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class r extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31547b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d0 f31548c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(d0 d0Var, com.google.android.play.core.tasks.o oVar, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31548c = d0Var;
        this.f31547b = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        Bundle j4;
        try {
            tVar = this.f31548c.f31277e;
            str = this.f31548c.f31273a;
            j4 = d0.j();
            ((com.google.android.play.core.internal.i2) tVar.e()).C0(str, j4, new w(this.f31548c, this.f31547b));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "keepAlive", new Object[0]);
        }
    }
}
