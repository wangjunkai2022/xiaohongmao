package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.e2;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
class r extends e2 {

    /* renamed from: c  reason: collision with root package name */
    final com.google.android.play.core.internal.h f31216c;

    /* renamed from: d  reason: collision with root package name */
    final com.google.android.play.core.tasks.o f31217d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ u f31218e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(u uVar, com.google.android.play.core.internal.h hVar, com.google.android.play.core.tasks.o oVar) {
        this.f31218e = uVar;
        this.f31216c = hVar;
        this.f31217d = oVar;
    }

    @Override // com.google.android.play.core.internal.f2
    public void h(Bundle bundle) throws RemoteException {
        this.f31218e.f31223a.s(this.f31217d);
        this.f31216c.d("onRequestInfo", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.f2
    public void y(Bundle bundle) throws RemoteException {
        this.f31218e.f31223a.s(this.f31217d);
        this.f31216c.d("onCompleteUpdate", new Object[0]);
    }
}
