package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IMultiInstanceInvalidationCallback extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IMultiInstanceInvalidationCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.room.IMultiInstanceInvalidationCallback
        public void onInvalidation(String[] strArr) throws RemoteException {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMultiInstanceInvalidationCallback {
        private static final String DESCRIPTOR = "androidx.room.IMultiInstanceInvalidationCallback";
        static final int TRANSACTION_onInvalidation = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IMultiInstanceInvalidationCallback {
            public static IMultiInstanceInvalidationCallback sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // androidx.room.IMultiInstanceInvalidationCallback
            public void onInvalidation(String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringArray(strArr);
                    if (this.mRemote.transact(1, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onInvalidation(strArr);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMultiInstanceInvalidationCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMultiInstanceInvalidationCallback)) {
                return (IMultiInstanceInvalidationCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        public static IMultiInstanceInvalidationCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback) {
            if (Proxy.sDefaultImpl == null) {
                if (iMultiInstanceInvalidationCallback != null) {
                    Proxy.sDefaultImpl = iMultiInstanceInvalidationCallback;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i4 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onInvalidation(parcel.createStringArray());
                return true;
            } else if (i4 != 1598968902) {
                return super.onTransact(i4, parcel, parcel2, i10);
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    void onInvalidation(String[] strArr) throws RemoteException;
}
