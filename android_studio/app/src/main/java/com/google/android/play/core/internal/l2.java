package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class l2 extends z1 implements m2 {
    public l2() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // com.google.android.play.core.internal.z1
    protected final boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        n2 n2Var = null;
        if (i4 == 2) {
            Bundle bundle = (Bundle) a2.a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                n2Var = queryLocalInterface instanceof n2 ? (n2) queryLocalInterface : new n2(readStrongBinder);
            }
            t0(bundle, n2Var);
            return true;
        } else if (i4 != 3) {
            return false;
        } else {
            Bundle bundle2 = (Bundle) a2.a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                n2Var = queryLocalInterface2 instanceof n2 ? (n2) queryLocalInterface2 : new n2(readStrongBinder2);
            }
            m0(bundle2, n2Var);
            return true;
        }
    }
}
