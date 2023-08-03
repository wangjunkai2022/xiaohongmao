package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IResultReceiver.java */
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* compiled from: IResultReceiver.java */
    /* renamed from: android.support.v4.os.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0010a implements a {
        @Override // android.support.v4.os.a
        public void K0(int i4, Bundle bundle) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* compiled from: IResultReceiver.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements a {

        /* renamed from: c  reason: collision with root package name */
        private static final String f395c = "android.support.v4.os.IResultReceiver";

        /* renamed from: d  reason: collision with root package name */
        static final int f396d = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IResultReceiver.java */
        /* renamed from: android.support.v4.os.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0011a implements a {

            /* renamed from: d  reason: collision with root package name */
            public static a f397d;

            /* renamed from: c  reason: collision with root package name */
            private IBinder f398c;

            C0011a(IBinder iBinder) {
                this.f398c = iBinder;
            }

            @Override // android.support.v4.os.a
            public void K0(int i4, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f395c);
                    obtain.writeInt(i4);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f398c.transact(1, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().K0(i4, bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f398c;
            }

            public String s() {
                return b.f395c;
            }
        }

        public b() {
            attachInterface(this, f395c);
        }

        public static a s(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f395c);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0011a(iBinder);
        }

        public static a x() {
            return C0011a.f397d;
        }

        public static boolean z(a aVar) {
            if (C0011a.f397d == null) {
                if (aVar != null) {
                    C0011a.f397d = aVar;
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
                parcel.enforceInterface(f395c);
                K0(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i4 != 1598968902) {
                return super.onTransact(i4, parcel, parcel2, i10);
            } else {
                parcel2.writeString(f395c);
                return true;
            }
        }
    }

    void K0(int i4, Bundle bundle) throws RemoteException;
}
