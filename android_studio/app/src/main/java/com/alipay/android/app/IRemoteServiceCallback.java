package com.alipay.android.app;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IRemoteServiceCallback extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IRemoteServiceCallback {
        private static final String DESCRIPTOR = "com.alipay.android.app.IRemoteServiceCallback";
        static final int TRANSACTION_isHideLoadingScreen = 3;
        static final int TRANSACTION_payEnd = 2;
        static final int TRANSACTION_startActivity = 1;

        /* loaded from: classes.dex */
        private static class a implements IRemoteServiceCallback {

            /* renamed from: c  reason: collision with root package name */
            private IBinder f6592c;

            a(IBinder iBinder) {
                this.f6592c = iBinder;
            }

            private static String s() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f6592c;
            }

            @Override // com.alipay.android.app.IRemoteServiceCallback
            public final boolean isHideLoadingScreen() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f6592c.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.alipay.android.app.IRemoteServiceCallback
            public final void payEnd(boolean z9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z9 ? 1 : 0);
                    obtain.writeString(str);
                    this.f6592c.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.alipay.android.app.IRemoteServiceCallback
            public final void startActivity(String str, String str2, int i4, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i4);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f6592c.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRemoteServiceCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IRemoteServiceCallback)) {
                return (IRemoteServiceCallback) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                startActivity(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                payEnd(parcel.readInt() != 0, parcel.readString());
                parcel2.writeNoException();
                return true;
            } else if (i4 != 3) {
                if (i4 != 1598968902) {
                    return super.onTransact(i4, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                boolean isHideLoadingScreen = isHideLoadingScreen();
                parcel2.writeNoException();
                parcel2.writeInt(isHideLoadingScreen ? 1 : 0);
                return true;
            }
        }
    }

    boolean isHideLoadingScreen() throws RemoteException;

    void payEnd(boolean z9, String str) throws RemoteException;

    void startActivity(String str, String str2, int i4, Bundle bundle) throws RemoteException;
}
