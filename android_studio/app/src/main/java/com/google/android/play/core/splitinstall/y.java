package com.google.android.play.core.splitinstall;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class y extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f32015b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f32016c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l0 f32017d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(l0 l0Var, com.google.android.play.core.tasks.o oVar, int i4, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f32017d = l0Var;
        this.f32015b = i4;
        this.f32016c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            l0 l0Var = this.f32017d;
            str = l0Var.f31903a;
            ((com.google.android.play.core.internal.a1) this.f32017d.f31904b.e()).L0(str, this.f32015b, new g0(l0Var, this.f32016c));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "getSessionState(%d)", Integer.valueOf(this.f32015b));
            this.f32016c.d(new RuntimeException(e4));
        }
    }
}
