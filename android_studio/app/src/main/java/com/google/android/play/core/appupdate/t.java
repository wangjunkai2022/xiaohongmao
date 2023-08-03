package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class t extends r {

    /* renamed from: f  reason: collision with root package name */
    private final String f31219f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ u f31220g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, com.google.android.play.core.tasks.o oVar, String str) {
        super(uVar, new com.google.android.play.core.internal.h("OnRequestInstallCallback"), oVar);
        this.f31220g = uVar;
        this.f31219f = str;
    }

    @Override // com.google.android.play.core.appupdate.r, com.google.android.play.core.internal.f2
    public final void h(Bundle bundle) throws RemoteException {
        int i4;
        a l10;
        int i10;
        super.h(bundle);
        i4 = bundle.getInt("error.code", -2);
        if (i4 != 0) {
            com.google.android.play.core.tasks.o oVar = this.f31217d;
            i10 = bundle.getInt("error.code", -2);
            oVar.d(new InstallException(i10));
            return;
        }
        com.google.android.play.core.tasks.o oVar2 = this.f31217d;
        l10 = a.l(this.f31219f, bundle.getInt("version.code", -1), bundle.getInt("update.availability"), bundle.getInt("install.status", 0), r22.getInt("client.version.staleness", -1) == -1 ? null : Integer.valueOf(bundle.getInt("client.version.staleness")), bundle.getInt("in.app.update.priority", 0), bundle.getLong("bytes.downloaded"), bundle.getLong("total.bytes.to.download"), bundle.getLong("additional.size.required"), this.f31220g.f31226d.a(), (PendingIntent) bundle.getParcelable("blocking.intent"), (PendingIntent) bundle.getParcelable("nonblocking.intent"), (PendingIntent) bundle.getParcelable("blocking.destructive.intent"), (PendingIntent) bundle.getParcelable("nonblocking.destructive.intent"));
        oVar2.e(l10);
    }
}
