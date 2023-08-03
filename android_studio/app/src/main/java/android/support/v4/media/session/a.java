package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.List;

/* compiled from: IMediaControllerCallback.java */
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* compiled from: IMediaControllerCallback.java */
    /* renamed from: android.support.v4.media.session.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0007a implements a {
        @Override // android.support.v4.media.session.a
        public void F1(PlaybackStateCompat playbackStateCompat) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void G1(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void M0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void P() throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void R(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void Z0(Bundle bundle) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.media.session.a
        public void h0() throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void i(int i4) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void j0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void j1(boolean z9) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void o1(boolean z9) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void p1(CharSequence charSequence) throws RemoteException {
        }

        @Override // android.support.v4.media.session.a
        public void v0(int i4) throws RemoteException {
        }
    }

    /* compiled from: IMediaControllerCallback.java */
    /* loaded from: classes.dex */
    public static abstract class b extends Binder implements a {

        /* renamed from: c  reason: collision with root package name */
        private static final String f347c = "android.support.v4.media.session.IMediaControllerCallback";

        /* renamed from: d  reason: collision with root package name */
        static final int f348d = 1;

        /* renamed from: e  reason: collision with root package name */
        static final int f349e = 2;

        /* renamed from: f  reason: collision with root package name */
        static final int f350f = 3;

        /* renamed from: g  reason: collision with root package name */
        static final int f351g = 4;

        /* renamed from: h  reason: collision with root package name */
        static final int f352h = 5;

        /* renamed from: i  reason: collision with root package name */
        static final int f353i = 6;

        /* renamed from: j  reason: collision with root package name */
        static final int f354j = 7;

        /* renamed from: k  reason: collision with root package name */
        static final int f355k = 8;

        /* renamed from: l  reason: collision with root package name */
        static final int f356l = 9;

        /* renamed from: m  reason: collision with root package name */
        static final int f357m = 10;

        /* renamed from: n  reason: collision with root package name */
        static final int f358n = 11;

        /* renamed from: o  reason: collision with root package name */
        static final int f359o = 12;

        /* renamed from: p  reason: collision with root package name */
        static final int f360p = 13;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMediaControllerCallback.java */
        /* renamed from: android.support.v4.media.session.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0008a implements a {

            /* renamed from: d  reason: collision with root package name */
            public static a f361d;

            /* renamed from: c  reason: collision with root package name */
            private IBinder f362c;

            C0008a(IBinder iBinder) {
                this.f362c = iBinder;
            }

            @Override // android.support.v4.media.session.a
            public void F1(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    if (playbackStateCompat != null) {
                        obtain.writeInt(1);
                        playbackStateCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f362c.transact(3, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().F1(playbackStateCompat);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void G1(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f362c.transact(1, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().G1(str, bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void M0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    if (parcelableVolumeInfo != null) {
                        obtain.writeInt(1);
                        parcelableVolumeInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f362c.transact(8, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().M0(parcelableVolumeInfo);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void P() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    if (this.f362c.transact(13, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().P();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void R(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    obtain.writeTypedList(list);
                    if (this.f362c.transact(5, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().R(list);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void Z0(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f362c.transact(7, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().Z0(bundle);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f362c;
            }

            @Override // android.support.v4.media.session.a
            public void h0() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    if (this.f362c.transact(2, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().h0();
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void i(int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    obtain.writeInt(i4);
                    if (this.f362c.transact(9, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().i(i4);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void j0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    if (mediaMetadataCompat != null) {
                        obtain.writeInt(1);
                        mediaMetadataCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f362c.transact(4, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().j0(mediaMetadataCompat);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void j1(boolean z9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    obtain.writeInt(z9 ? 1 : 0);
                    if (this.f362c.transact(11, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().j1(z9);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void o1(boolean z9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    obtain.writeInt(z9 ? 1 : 0);
                    if (this.f362c.transact(10, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().o1(z9);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.a
            public void p1(CharSequence charSequence) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    if (charSequence != null) {
                        obtain.writeInt(1);
                        TextUtils.writeToParcel(charSequence, obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f362c.transact(6, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().p1(charSequence);
                } finally {
                    obtain.recycle();
                }
            }

            public String s() {
                return b.f347c;
            }

            @Override // android.support.v4.media.session.a
            public void v0(int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f347c);
                    obtain.writeInt(i4);
                    if (this.f362c.transact(12, obtain, null, 1) || b.x() == null) {
                        return;
                    }
                    b.x().v0(i4);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public b() {
            attachInterface(this, f347c);
        }

        public static a s(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f347c);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0008a(iBinder);
        }

        public static a x() {
            return C0008a.f361d;
        }

        public static boolean z(a aVar) {
            if (C0008a.f361d != null || aVar == null) {
                return false;
            }
            C0008a.f361d = aVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i4, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i4 != 1598968902) {
                switch (i4) {
                    case 1:
                        parcel.enforceInterface(f347c);
                        G1(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 2:
                        parcel.enforceInterface(f347c);
                        h0();
                        return true;
                    case 3:
                        parcel.enforceInterface(f347c);
                        F1(parcel.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 4:
                        parcel.enforceInterface(f347c);
                        j0(parcel.readInt() != 0 ? MediaMetadataCompat.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 5:
                        parcel.enforceInterface(f347c);
                        R(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                        return true;
                    case 6:
                        parcel.enforceInterface(f347c);
                        p1(parcel.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 7:
                        parcel.enforceInterface(f347c);
                        Z0(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 8:
                        parcel.enforceInterface(f347c);
                        M0(parcel.readInt() != 0 ? ParcelableVolumeInfo.CREATOR.createFromParcel(parcel) : null);
                        return true;
                    case 9:
                        parcel.enforceInterface(f347c);
                        i(parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface(f347c);
                        o1(parcel.readInt() != 0);
                        return true;
                    case 11:
                        parcel.enforceInterface(f347c);
                        j1(parcel.readInt() != 0);
                        return true;
                    case 12:
                        parcel.enforceInterface(f347c);
                        v0(parcel.readInt());
                        return true;
                    case 13:
                        parcel.enforceInterface(f347c);
                        P();
                        return true;
                    default:
                        return super.onTransact(i4, parcel, parcel2, i10);
                }
            }
            parcel2.writeString(f347c);
            return true;
        }
    }

    void F1(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    void G1(String str, Bundle bundle) throws RemoteException;

    void M0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    void P() throws RemoteException;

    void R(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    void Z0(Bundle bundle) throws RemoteException;

    void h0() throws RemoteException;

    void i(int i4) throws RemoteException;

    void j0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    void j1(boolean z9) throws RemoteException;

    void o1(boolean z9) throws RemoteException;

    void p1(CharSequence charSequence) throws RemoteException;

    void v0(int i4) throws RemoteException;
}
