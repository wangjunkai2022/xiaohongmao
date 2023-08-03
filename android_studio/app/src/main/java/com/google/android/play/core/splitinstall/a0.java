package com.google.android.play.core.splitinstall;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class a0 extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f31850b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31851c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l0 f31852d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(l0 l0Var, com.google.android.play.core.tasks.o oVar, int i4, com.google.android.play.core.tasks.o oVar2) {
        super(oVar);
        this.f31852d = l0Var;
        this.f31850b = i4;
        this.f31851c = oVar2;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        try {
            str = this.f31852d.f31903a;
            ((com.google.android.play.core.internal.a1) this.f31852d.f31904b.e()).l0(str, this.f31850b, l0.a(), new b0(this.f31852d, this.f31851c));
        } catch (RemoteException e4) {
            hVar = l0.f31901c;
            hVar.c(e4, "cancelInstall(%d)", Integer.valueOf(this.f31850b));
            this.f31851c.d(new RuntimeException(e4));
        }
    }
}
