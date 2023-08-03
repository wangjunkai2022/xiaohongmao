package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
class s extends com.google.android.play.core.internal.j2 {

    /* renamed from: c  reason: collision with root package name */
    final com.google.android.play.core.tasks.o f31566c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d0 f31567d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(d0 d0Var, com.google.android.play.core.tasks.o oVar) {
        this.f31567d = d0Var;
        this.f31566c = oVar;
    }

    @Override // com.google.android.play.core.internal.k2
    public void B(List list) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onGetSessionStates", new Object[0]);
    }

    public void D1(int i4, Bundle bundle) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onStartDownload(%d)", Integer.valueOf(i4));
    }

    @Override // com.google.android.play.core.internal.k2
    public void G0(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31277e;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onKeepAlive(%b)", Boolean.valueOf(bundle.getBoolean("keep_alive")));
    }

    @Override // com.google.android.play.core.internal.k2
    public final void H0(int i4, Bundle bundle) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onGetSession(%d)", Integer.valueOf(i4));
    }

    @Override // com.google.android.play.core.internal.k2
    public final void N0(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onNotifyChunkTransferred(%s, %s, %d, session=%d)", bundle.getString("module_name"), bundle.getString("slice_id"), Integer.valueOf(bundle.getInt("chunk_number")), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.k2
    public void P0(Bundle bundle, Bundle bundle2) throws RemoteException {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onGetChunkFileDescriptor", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.k2
    public final void V(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onRemoveModule()", new Object[0]);
    }

    public void b0(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onRequestDownloadInfo()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.k2
    public final void g(int i4, Bundle bundle) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onCancelDownload(%d)", Integer.valueOf(i4));
    }

    @Override // com.google.android.play.core.internal.k2
    public final void h(Bundle bundle) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onCancelDownloads()", new Object[0]);
    }

    @Override // com.google.android.play.core.internal.k2
    public final void p0(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onNotifyModuleCompleted(%s, sessionId=%d)", bundle.getString("module_name"), Integer.valueOf(bundle.getInt("session_id")));
    }

    @Override // com.google.android.play.core.internal.k2
    public void w(Bundle bundle) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        int i4 = bundle.getInt("error_code");
        hVar = d0.f31271g;
        hVar.b("onError(%d)", Integer.valueOf(i4));
        this.f31566c.d(new AssetPackException(i4));
    }

    @Override // com.google.android.play.core.internal.k2
    public final void w0(Bundle bundle, Bundle bundle2) {
        com.google.android.play.core.internal.t tVar;
        com.google.android.play.core.internal.h hVar;
        tVar = this.f31567d.f31276d;
        tVar.s(this.f31566c);
        hVar = d0.f31271g;
        hVar.d("onNotifySessionFailed(%d)", Integer.valueOf(bundle.getInt("session_id")));
    }
}
