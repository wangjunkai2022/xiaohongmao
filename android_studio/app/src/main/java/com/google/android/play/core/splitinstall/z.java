package com.google.android.play.core.splitinstall;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class z extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f32019b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ l0 f32020c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(l0 l0Var, com.google.android.play.core.tasks.o oVar, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f32020c = l0Var;
        this.f32019b = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            l0 l0Var = this.f32020c;
            str = l0Var.f31903a;
            ((com.google.android.play.core.internal.a1) this.f32020c.f31904b.e()).T0(str, new h0(l0Var, this.f32019b));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "getSessionStates", new Object[0]);
            this.f32019b.d(new RuntimeException(e4));
        }
    }
}
