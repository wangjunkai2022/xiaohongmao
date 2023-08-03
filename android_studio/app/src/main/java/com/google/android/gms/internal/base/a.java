package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public class a implements IInterface {

    /* renamed from: c  reason: collision with root package name */
    private final IBinder f29353c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29354d;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f29353c = iBinder;
        this.f29354d = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29353c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n1(int i4, Parcel parcel) throws RemoteException {
        try {
            this.f29353c.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel s() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29354d);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel x(int i4, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29353c.transact(2, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e4) {
                obtain.recycle();
                throw e4;
            }
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void z(int i4, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29353c.transact(i4, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
