package com.alipay.android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.alipay.android.app.IRemoteServiceCallback;

/* loaded from: classes.dex */
public interface IAlixPay extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAlixPay {
        private static final String DESCRIPTOR = "com.alipay.android.app.IAlixPay";
        static final int TRANSACTION_Pay = 1;
        static final int TRANSACTION_prePay = 5;
        static final int TRANSACTION_registerCallback = 3;
        static final int TRANSACTION_test = 2;
        static final int TRANSACTION_unregisterCallback = 4;

        /* loaded from: classes.dex */
        private static class a implements IAlixPay {

            /* renamed from: c  reason: collision with root package name */
            private IBinder f6591c;

            a(IBinder iBinder) {
                this.f6591c = iBinder;
            }

            private static String s() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.alipay.android.app.IAlixPay
            public final String Pay(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.f6591c.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f6591c;
            }

            @Override // com.alipay.android.app.IAlixPay
            public final String prePay(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.f6591c.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.alipay.android.app.IAlixPay
            public final void registerCallback(IRemoteServiceCallback iRemoteServiceCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iRemoteServiceCallback != null ? iRemoteServiceCallback.asBinder() : null);
                    this.f6591c.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.alipay.android.app.IAlixPay
            public final String test() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.f6591c.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.alipay.android.app.IAlixPay
            public final void unregisterCallback(IRemoteServiceCallback iRemoteServiceCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iRemoteServiceCallback != null ? iRemoteServiceCallback.asBinder() : null);
                    this.f6591c.transact(4, obtain, obtain2, 0);
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

        public static IAlixPay asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAlixPay)) {
                return (IAlixPay) queryLocalInterface;
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
                String Pay = Pay(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(Pay);
                return true;
            } else if (i4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String test = test();
                parcel2.writeNoException();
                parcel2.writeString(test);
                return true;
            } else if (i4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                registerCallback(IRemoteServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            } else if (i4 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterCallback(IRemoteServiceCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            } else if (i4 != 5) {
                if (i4 != 1598968902) {
                    return super.onTransact(i4, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                String prePay = prePay(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(prePay);
                return true;
            }
        }
    }

    String Pay(String str) throws RemoteException;

    String prePay(String str) throws RemoteException;

    void registerCallback(IRemoteServiceCallback iRemoteServiceCallback) throws RemoteException;

    String test() throws RemoteException;

    void unregisterCallback(IRemoteServiceCallback iRemoteServiceCallback) throws RemoteException;
}
