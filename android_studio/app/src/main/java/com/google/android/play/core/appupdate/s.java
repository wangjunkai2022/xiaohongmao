package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.install.InstallException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class s extends r {
    /* JADX INFO: Access modifiers changed from: package-private */
    public s(u uVar, com.google.android.play.core.tasks.o oVar) {
        super(uVar, new com.google.android.play.core.internal.h("OnCompleteUpdateCallback"), oVar);
    }

    @Override // com.google.android.play.core.appupdate.r, com.google.android.play.core.internal.f2
    public final void y(Bundle bundle) throws RemoteException {
        int i4;
        int i10;
        super.y(bundle);
        i4 = bundle.getInt("error.code", -2);
        if (i4 != 0) {
            com.google.android.play.core.tasks.o oVar = this.f31217d;
            i10 = bundle.getInt("error.code", -2);
            oVar.d(new InstallException(i10));
            return;
        }
        this.f31217d.e(null);
    }
}
