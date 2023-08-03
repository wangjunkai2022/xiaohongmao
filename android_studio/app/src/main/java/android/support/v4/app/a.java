package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: INotificationSideChannel.java */
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* compiled from: INotificationSideChannel.java */
    /* renamed from: android.support.v4.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0001a implements a {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.app.a
        public void cancel(String str, int i4, String str2) throws RemoteException {
        }

        @Override // android.support.v4.app.a
        public void cancelAll(String str) throws RemoteException {
        }

        @Override // android.support.v4.app.a
        public void notify(String str, int i4, String str2, Notification notification) throws RemoteException {
        }
    }

    /* compiled from: INotificationSideChannel.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements a {
        private static final String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: INotificationSideChannel.java */
        /* renamed from: android.support.v4.app.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0002a implements a {

            /* renamed from: d  reason: collision with root package name */
            public static a f63d;

            /* renamed from: c  reason: collision with root package name */
            private IBinder f64c;

            C0002a(IBinder iBinder) {
                this.f64c = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f64c;
            }

            @Override // android.support.v4.app.a
            public void cancel(String str, int i4, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i4);
                    obtain.writeString(str2);
                    if (this.f64c.transact(2, obtain, null, 1) || b.getDefaultImpl() == null) {
                        return;
                    }
                    b.getDefaultImpl().cancel(str, i4, str2);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.a
            public void cancelAll(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    if (this.f64c.transact(3, obtain, null, 1) || b.getDefaultImpl() == null) {
                        return;
                    }
                    b.getDefaultImpl().cancelAll(str);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.a
            public void notify(String str, int i4, String str2, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i4);
                    obtain.writeString(str2);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f64c.transact(1, obtain, null, 1) || b.getDefaultImpl() == null) {
                        return;
                    }
                    b.getDefaultImpl().notify(str, i4, str2, notification);
                } finally {
                    obtain.recycle();
                }
            }

            public String s() {
                return b.DESCRIPTOR;
            }
        }

        public b() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0002a(iBinder);
        }

        public static a getDefaultImpl() {
            return C0002a.f63d;
        }

        public static boolean setDefaultImpl(a aVar) {
            if (C0002a.f63d == null) {
                if (aVar != null) {
                    C0002a.f63d = aVar;
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
                notify(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i4 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                cancel(parcel.readString(), parcel.readInt(), parcel.readString());
                return true;
            } else if (i4 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                cancelAll(parcel.readString());
                return true;
            } else if (i4 != 1598968902) {
                return super.onTransact(i4, parcel, parcel2, i10);
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    void cancel(String str, int i4, String str2) throws RemoteException;

    void cancelAll(String str) throws RemoteException;

    void notify(String str, int i4, String str2, Notification notification) throws RemoteException;
}
