package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class g1 extends com.google.android.gms.internal.common.k implements o {
    public g1() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.common.k
    protected final boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i4 == 1) {
            e0(parcel.readInt(), parcel.readStrongBinder(), (Bundle) com.google.android.gms.internal.common.l.a(parcel, Bundle.CREATOR));
        } else if (i4 == 2) {
            g(parcel.readInt(), (Bundle) com.google.android.gms.internal.common.l.a(parcel, Bundle.CREATOR));
        } else if (i4 != 3) {
            return false;
        } else {
            t1(parcel.readInt(), parcel.readStrongBinder(), (zzj) com.google.android.gms.internal.common.l.a(parcel, zzj.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
