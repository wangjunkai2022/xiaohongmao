package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class o extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f31486b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f31487c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31488d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ int f31489e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ d0 f31490f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(d0 d0Var, com.google.android.play.core.tasks.o oVar, int i4, String str, com.google.android.play.core.tasks.o oVar2, int i10) {
        super(oVar);
        this.f31490f = d0Var;
        this.f31486b = i4;
        this.f31487c = str;
        this.f31488d = oVar2;
        this.f31489e = i10;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        com.google.android.play.core.internal.t tVar;
        String str;
        Bundle D;
        Bundle j4;
        try {
            tVar = this.f31490f.f31276d;
            str = this.f31490f.f31273a;
            D = d0.D(this.f31486b, this.f31487c);
            j4 = d0.j();
            ((com.google.android.play.core.internal.i2) tVar.e()).J0(str, D, j4, new y(this.f31490f, this.f31488d, this.f31486b, this.f31487c, this.f31489e));
        } catch (RemoteException e4) {
            hVar = d0.f31271g;
            hVar.c(e4, "notifyModuleCompleted", new Object[0]);
        }
    }
}
