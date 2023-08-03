package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.d2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class q extends com.google.android.play.core.internal.i {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.tasks.o f31213b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f31214c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ u f31215d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(u uVar, com.google.android.play.core.tasks.o oVar, com.google.android.play.core.tasks.o oVar2, String str) {
        super(oVar);
        this.f31215d = uVar;
        this.f31213b = oVar2;
        this.f31214c = str;
    }

    @Override // com.google.android.play.core.internal.i
    protected final void a() {
        com.google.android.play.core.internal.h hVar;
        String str;
        Bundle i4;
        try {
            str = this.f31215d.f31224b;
            i4 = u.i();
            ((d2) this.f31215d.f31223a.e()).C1(str, i4, new s(this.f31215d, this.f31213b));
        } catch (RemoteException e4) {
            hVar = u.f31221e;
            hVar.c(e4, "completeUpdate(%s)", this.f31214c);
            this.f31213b.d(new RuntimeException(e4));
        }
    }
}
