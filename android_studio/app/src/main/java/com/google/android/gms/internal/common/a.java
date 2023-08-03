package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public class a implements IInterface {

    /* renamed from: c  reason: collision with root package name */
    private final IBinder f29380c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29381d;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f29380c = iBinder;
        this.f29381d = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29380c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel n1() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f29381d);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel s(int i4, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f29380c.transact(i4, parcel, obtain, 0);
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
    public final void x(int i4, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f29380c.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void z(int i4, Parcel parcel) throws RemoteException {
        try {
            this.f29380c.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
