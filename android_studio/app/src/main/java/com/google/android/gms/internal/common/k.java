package com.google.android.gms.internal.common;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class k extends Binder implements IInterface {
    /* JADX INFO: Access modifiers changed from: protected */
    public k(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i4 > 16777215) {
            if (super.onTransact(i4, parcel, parcel2, i10)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return s(i4, parcel, parcel2, i10);
    }

    protected boolean s(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        return false;
    }
}
