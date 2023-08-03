package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class n2 extends y1 implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n2(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    public final void P0(Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel s9 = s();
        a2.b(s9, bundle);
        a2.b(s9, bundle2);
        x(2, s9);
    }

    public final void h(Bundle bundle) throws RemoteException {
        Parcel s9 = s();
        a2.b(s9, bundle);
        x(4, s9);
    }

    public final void w(Bundle bundle) throws RemoteException {
        Parcel s9 = s();
        a2.b(s9, bundle);
        x(3, s9);
    }
}
