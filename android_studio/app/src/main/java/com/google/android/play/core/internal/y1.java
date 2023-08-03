package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class y1 implements IInterface {

    /* renamed from: c  reason: collision with root package name */
    private final IBinder f31785c;

    /* renamed from: d  reason: collision with root package name */
    private final String f31786d;

    /* JADX INFO: Access modifiers changed from: protected */
    public y1(IBinder iBinder, String str) {
        this.f31785c = iBinder;
        this.f31786d = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f31785c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel s() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f31786d);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x(int i4, Parcel parcel) throws RemoteException {
        try {
            this.f31785c.transact(i4, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
