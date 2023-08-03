package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class k extends com.google.android.gms.internal.base.b implements l {
    public k() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override // com.google.android.gms.internal.base.b
    protected final boolean J1(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i4 == 1) {
            i1(parcel.readInt());
            return true;
        }
        return false;
    }
}
