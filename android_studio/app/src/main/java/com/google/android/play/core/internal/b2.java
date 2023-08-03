package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b2 extends y1 implements d2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b2(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.appupdate.protocol.IAppUpdateService");
    }

    @Override // com.google.android.play.core.internal.d2
    public final void C1(String str, Bundle bundle, f2 f2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.c(s9, f2Var);
        x(3, s9);
    }

    @Override // com.google.android.play.core.internal.d2
    public final void s1(String str, Bundle bundle, f2 f2Var) throws RemoteException {
        Parcel s9 = s();
        s9.writeString(str);
        a2.b(s9, bundle);
        a2.c(s9, f2Var);
        x(2, s9);
    }
}
