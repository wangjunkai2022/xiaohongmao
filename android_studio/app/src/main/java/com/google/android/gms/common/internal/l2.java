package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class l2 extends com.google.android.gms.internal.common.k implements m2 {
    public l2() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static m2 x(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof m2 ? (m2) queryLocalInterface : new k2(iBinder);
    }

    @Override // com.google.android.gms.internal.common.k
    protected final boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i4 == 1) {
            com.google.android.gms.dynamic.d b10 = b();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.l.e(parcel2, b10);
        } else if (i4 != 2) {
            return false;
        } else {
            int e4 = e();
            parcel2.writeNoException();
            parcel2.writeInt(e4);
        }
        return true;
    }
}
