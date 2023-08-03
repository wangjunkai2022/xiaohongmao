package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class h1 implements p {

    /* renamed from: c  reason: collision with root package name */
    private final IBinder f29135c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1(IBinder iBinder) {
        this.f29135c = iBinder;
    }

    @Override // com.google.android.gms.common.internal.p
    public final void Y0(o oVar, @Nullable GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(oVar != null ? oVar.asBinder() : null);
            if (getServiceRequest != null) {
                obtain.writeInt(1);
                z1.a(getServiceRequest, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f29135c.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29135c;
    }
}
