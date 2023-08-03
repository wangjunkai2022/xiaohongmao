package com.google.android.play.core.splitinstall;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
class k0 extends com.google.android.play.core.internal.b1 {

    /* renamed from: c  reason: collision with root package name */
    final com.google.android.play.core.tasks.o f31894c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ l0 f31895d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(l0 l0Var, com.google.android.play.core.tasks.o oVar) {
        this.f31895d = l0Var;
        this.f31894c = oVar;
    }

    public void A(List list) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onGetSessionStates", new Object[0]);
    }

    public void B0(int i4, Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onGetSession(%d)", Integer.valueOf(i4));
    }

    public void X0(Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onDeferredUninstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.c1
    public final void c0(int i4, Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onCompleteInstall(%d)", Integer.valueOf(i4));
    }

    @Override // com.google.android.play.core.internal.c1
    public final void d0(Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onGetSplitsForAppUpdate", new Object[0]);
    }

    public void f1(Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onDeferredLanguageUninstall", new Object[0]);
    }

    public void g(int i4, Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onCancelInstall(%d)", Integer.valueOf(i4));
    }

    public void h(Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onDeferredInstall", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.c1
    public final void k0(Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        int i4 = bundle.getInt("error_code");
        hVar = l0.f31901c;
        hVar.b("onError(%d)", Integer.valueOf(i4));
        this.f31894c.d(new SplitInstallException(i4));
    }

    public void q0(int i4, Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onStartInstall(%d)", Integer.valueOf(i4));
    }

    @Override // com.google.android.play.core.internal.c1
    public final void u0(Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onCompleteInstallForAppUpdate", new Object[0]);
    }

    public void w(Bundle bundle) throws RemoteException {
        com.google.android.play.core.internal.h hVar;
        this.f31895d.f31904b.s(this.f31894c);
        hVar = l0.f31901c;
        hVar.d("onDeferredLanguageInstall", new Object[0]);
    }
}
