package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

/* compiled from: IMediaSession.java */
/* loaded from: classes.dex */
public interface b extends IInterface {

    /* compiled from: IMediaSession.java */
    /* loaded from: classes.dex */
    public static class a implements b {
        @Override // android.support.v4.media.session.b
        public ParcelableVolumeInfo A1() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public void E(float f10) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void E0(long j4) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void F(boolean z9) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void F0(boolean z9) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public List<MediaSessionCompat.QueueItem> G() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public void H(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public boolean I() throws RemoteException {
            return false;
        }

        @Override // android.support.v4.media.session.b
        public void J(Uri uri, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public PendingIntent K() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public void Q0(android.support.v4.media.session.a aVar) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void R0(RatingCompat ratingCompat) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void S0(int i4, int i10, String str) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void T(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public boolean V0() throws RemoteException {
            return false;
        }

        @Override // android.support.v4.media.session.b
        public void W(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void W0(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void X(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void Y(Uri uri, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void a() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public PlaybackStateCompat c() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public void d() throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void e1(android.support.v4.media.session.a aVar) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public String f() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public boolean f0(KeyEvent keyEvent) throws RemoteException {
            return false;
        }

        @Override // android.support.v4.media.session.b
        public void g0(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public Bundle getExtras() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public long getFlags() throws RemoteException {
            return 0L;
        }

        @Override // android.support.v4.media.session.b
        public MediaMetadataCompat getMetadata() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public String getPackageName() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public void h1() throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void i0(MediaDescriptionCompat mediaDescriptionCompat, int i4) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void j(int i4) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public int k() throws RemoteException {
            return 0;
        }

        @Override // android.support.v4.media.session.b
        public int l() throws RemoteException {
            return 0;
        }

        @Override // android.support.v4.media.session.b
        public Bundle m() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public void next() throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public int p() throws RemoteException {
            return 0;
        }

        @Override // android.support.v4.media.session.b
        public void pause() throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void previous() throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public boolean q() throws RemoteException {
            return false;
        }

        @Override // android.support.v4.media.session.b
        public void q1(int i4, int i10, String str) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void r(int i4) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void s0(int i4) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void seekTo(long j4) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void stop() throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void t(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void u(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public CharSequence v() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.b
        public void y0(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException {
        }

        @Override // android.support.v4.media.session.b
        public void z0() throws RemoteException {
        }
    }

    /* compiled from: IMediaSession.java */
    /* renamed from: android.support.v4.media.session.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0009b extends Binder implements b {
        static final int A = 42;
        static final int B = 43;
        static final int C = 44;
        static final int D = 50;
        static final int E = 33;
        static final int F = 34;
        static final int G = 35;
        static final int H = 36;
        static final int I = 13;
        static final int J = 14;
        static final int K = 15;
        static final int L = 16;
        static final int M = 17;
        static final int N = 18;
        static final int O = 19;
        static final int P = 20;
        static final int Q = 21;
        static final int R = 22;
        static final int S = 23;
        static final int T = 24;
        static final int U = 25;
        static final int V = 51;
        static final int W = 49;
        static final int X = 46;
        static final int Y = 39;
        static final int Z = 40;

        /* renamed from: a0  reason: collision with root package name */
        static final int f363a0 = 48;

        /* renamed from: b0  reason: collision with root package name */
        static final int f364b0 = 26;

        /* renamed from: c  reason: collision with root package name */
        private static final String f365c = "android.support.v4.media.session.IMediaSession";

        /* renamed from: d  reason: collision with root package name */
        static final int f366d = 1;

        /* renamed from: e  reason: collision with root package name */
        static final int f367e = 2;

        /* renamed from: f  reason: collision with root package name */
        static final int f368f = 3;

        /* renamed from: g  reason: collision with root package name */
        static final int f369g = 4;

        /* renamed from: h  reason: collision with root package name */
        static final int f370h = 5;

        /* renamed from: i  reason: collision with root package name */
        static final int f371i = 6;

        /* renamed from: j  reason: collision with root package name */
        static final int f372j = 7;

        /* renamed from: k  reason: collision with root package name */
        static final int f373k = 8;

        /* renamed from: l  reason: collision with root package name */
        static final int f374l = 9;

        /* renamed from: m  reason: collision with root package name */
        static final int f375m = 10;

        /* renamed from: n  reason: collision with root package name */
        static final int f376n = 11;

        /* renamed from: o  reason: collision with root package name */
        static final int f377o = 12;

        /* renamed from: p  reason: collision with root package name */
        static final int f378p = 27;

        /* renamed from: q  reason: collision with root package name */
        static final int f379q = 28;

        /* renamed from: r  reason: collision with root package name */
        static final int f380r = 29;

        /* renamed from: s  reason: collision with root package name */
        static final int f381s = 30;

        /* renamed from: t  reason: collision with root package name */
        static final int f382t = 31;

        /* renamed from: u  reason: collision with root package name */
        static final int f383u = 32;

        /* renamed from: v  reason: collision with root package name */
        static final int f384v = 45;

        /* renamed from: w  reason: collision with root package name */
        static final int f385w = 37;

        /* renamed from: x  reason: collision with root package name */
        static final int f386x = 38;

        /* renamed from: y  reason: collision with root package name */
        static final int f387y = 47;

        /* renamed from: z  reason: collision with root package name */
        static final int f388z = 41;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IMediaSession.java */
        /* renamed from: android.support.v4.media.session.b$b$a */
        /* loaded from: classes.dex */
        public static class a implements b {

            /* renamed from: d  reason: collision with root package name */
            public static b f389d;

            /* renamed from: c  reason: collision with root package name */
            private IBinder f390c;

            a(IBinder iBinder) {
                this.f390c = iBinder;
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo A1() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(10, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().A1();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ParcelableVolumeInfo.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void E(float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeFloat(f10);
                    if (!this.f390c.transact(49, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().E(f10);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void E0(long j4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeLong(j4);
                    if (!this.f390c.transact(17, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().E0(j4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void F(boolean z9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeInt(z9 ? 1 : 0);
                    if (!this.f390c.transact(46, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().F(z9);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void F0(boolean z9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeInt(z9 ? 1 : 0);
                    if (!this.f390c.transact(40, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().F0(z9);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public List<MediaSessionCompat.QueueItem> G() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(29, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().G();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void H(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(26, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().H(str, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public boolean I() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(38, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().I();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void J(Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(36, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().J(uri, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent K() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(8, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().K();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void Q0(android.support.v4.media.session.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (!this.f390c.transact(3, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().Q0(aVar);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void R0(RatingCompat ratingCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (ratingCompat != null) {
                        obtain.writeInt(1);
                        ratingCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(25, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().R0(ratingCompat);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void S0(int i4, int i10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeInt(i4);
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    if (!this.f390c.transact(12, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().S0(i4, i10, str);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void T(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(34, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().T(str, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public boolean V0() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(5, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().V0();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void W(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(14, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().W(str, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void W0(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(35, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().W0(str, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void X(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(15, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().X(str, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void Y(Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(16, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().Y(uri, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(33, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().a();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f390c;
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat c() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(28, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().c();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(13, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().d();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void e1(android.support.v4.media.session.a aVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (!this.f390c.transact(4, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().e1(aVar);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public String f() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(7, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().f();
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public boolean f0(KeyEvent keyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(2, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().f0(keyEvent);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void g0(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (ratingCompat != null) {
                        obtain.writeInt(1);
                        ratingCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(51, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().g0(ratingCompat, bundle);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public Bundle getExtras() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(31, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().getExtras();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public long getFlags() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(9, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().getFlags();
                    }
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat getMetadata() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(27, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().getMetadata();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? MediaMetadataCompat.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public String getPackageName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(6, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().getPackageName();
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void h1() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(22, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().h1();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void i0(MediaDescriptionCompat mediaDescriptionCompat, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i4);
                    if (!this.f390c.transact(42, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().i0(mediaDescriptionCompat, i4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void j(int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeInt(i4);
                    if (!this.f390c.transact(39, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().j(i4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public int k() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(37, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().k();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public int l() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(32, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().l();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public Bundle m() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(50, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().m();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void next() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(20, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().next();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public int p() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(47, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().p();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void pause() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(18, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().pause();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void previous() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(21, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().previous();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public boolean q() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(45, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().q();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void q1(int i4, int i10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeInt(i4);
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    if (!this.f390c.transact(11, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().q1(i4, i10, str);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void r(int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeInt(i4);
                    if (!this.f390c.transact(48, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().r(i4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String s() {
                return AbstractBinderC0009b.f365c;
            }

            @Override // android.support.v4.media.session.b
            public void s0(int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeInt(i4);
                    if (!this.f390c.transact(44, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().s0(i4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void seekTo(long j4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeLong(j4);
                    if (!this.f390c.transact(24, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().seekTo(j4);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void stop() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(19, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().stop();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void t(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(43, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().t(mediaDescriptionCompat);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void u(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(41, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().u(mediaDescriptionCompat);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public CharSequence v() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(30, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        return AbstractBinderC0009b.x().v();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void y0(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (resultReceiverWrapper != null) {
                        obtain.writeInt(1);
                        resultReceiverWrapper.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f390c.transact(1, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().y0(str, bundle, resultReceiverWrapper);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public void z0() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(AbstractBinderC0009b.f365c);
                    if (!this.f390c.transact(23, obtain, obtain2, 0) && AbstractBinderC0009b.x() != null) {
                        AbstractBinderC0009b.x().z0();
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0009b() {
            attachInterface(this, f365c);
        }

        public static b s(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f365c);
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new a(iBinder);
        }

        public static b x() {
            return a.f389d;
        }

        public static boolean z(b bVar) {
            if (a.f389d != null || bVar == null) {
                return false;
            }
            a.f389d = bVar;
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
                        parcel.enforceInterface(f365c);
                        y0(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(f365c);
                        boolean f02 = f0(parcel.readInt() != 0 ? (KeyEvent) KeyEvent.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(f02 ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface(f365c);
                        Q0(a.b.s(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(f365c);
                        e1(a.b.s(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(f365c);
                        boolean V0 = V0();
                        parcel2.writeNoException();
                        parcel2.writeInt(V0 ? 1 : 0);
                        return true;
                    case 6:
                        parcel.enforceInterface(f365c);
                        String packageName = getPackageName();
                        parcel2.writeNoException();
                        parcel2.writeString(packageName);
                        return true;
                    case 7:
                        parcel.enforceInterface(f365c);
                        String f10 = f();
                        parcel2.writeNoException();
                        parcel2.writeString(f10);
                        return true;
                    case 8:
                        parcel.enforceInterface(f365c);
                        PendingIntent K2 = K();
                        parcel2.writeNoException();
                        if (K2 != null) {
                            parcel2.writeInt(1);
                            K2.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 9:
                        parcel.enforceInterface(f365c);
                        long flags = getFlags();
                        parcel2.writeNoException();
                        parcel2.writeLong(flags);
                        return true;
                    case 10:
                        parcel.enforceInterface(f365c);
                        ParcelableVolumeInfo A1 = A1();
                        parcel2.writeNoException();
                        if (A1 != null) {
                            parcel2.writeInt(1);
                            A1.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 11:
                        parcel.enforceInterface(f365c);
                        q1(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        parcel.enforceInterface(f365c);
                        S0(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 13:
                        parcel.enforceInterface(f365c);
                        d();
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface(f365c);
                        W(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        parcel.enforceInterface(f365c);
                        X(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 16:
                        parcel.enforceInterface(f365c);
                        Y(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 17:
                        parcel.enforceInterface(f365c);
                        E0(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        parcel.enforceInterface(f365c);
                        pause();
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        parcel.enforceInterface(f365c);
                        stop();
                        parcel2.writeNoException();
                        return true;
                    case 20:
                        parcel.enforceInterface(f365c);
                        next();
                        parcel2.writeNoException();
                        return true;
                    case 21:
                        parcel.enforceInterface(f365c);
                        previous();
                        parcel2.writeNoException();
                        return true;
                    case 22:
                        parcel.enforceInterface(f365c);
                        h1();
                        parcel2.writeNoException();
                        return true;
                    case 23:
                        parcel.enforceInterface(f365c);
                        z0();
                        parcel2.writeNoException();
                        return true;
                    case 24:
                        parcel.enforceInterface(f365c);
                        seekTo(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 25:
                        parcel.enforceInterface(f365c);
                        R0(parcel.readInt() != 0 ? RatingCompat.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 26:
                        parcel.enforceInterface(f365c);
                        H(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 27:
                        parcel.enforceInterface(f365c);
                        MediaMetadataCompat metadata = getMetadata();
                        parcel2.writeNoException();
                        if (metadata != null) {
                            parcel2.writeInt(1);
                            metadata.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 28:
                        parcel.enforceInterface(f365c);
                        PlaybackStateCompat c10 = c();
                        parcel2.writeNoException();
                        if (c10 != null) {
                            parcel2.writeInt(1);
                            c10.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 29:
                        parcel.enforceInterface(f365c);
                        List<MediaSessionCompat.QueueItem> G2 = G();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(G2);
                        return true;
                    case 30:
                        parcel.enforceInterface(f365c);
                        CharSequence v9 = v();
                        parcel2.writeNoException();
                        if (v9 != null) {
                            parcel2.writeInt(1);
                            TextUtils.writeToParcel(v9, parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 31:
                        parcel.enforceInterface(f365c);
                        Bundle extras = getExtras();
                        parcel2.writeNoException();
                        if (extras != null) {
                            parcel2.writeInt(1);
                            extras.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 32:
                        parcel.enforceInterface(f365c);
                        int l10 = l();
                        parcel2.writeNoException();
                        parcel2.writeInt(l10);
                        return true;
                    case 33:
                        parcel.enforceInterface(f365c);
                        a();
                        parcel2.writeNoException();
                        return true;
                    case 34:
                        parcel.enforceInterface(f365c);
                        T(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 35:
                        parcel.enforceInterface(f365c);
                        W0(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 36:
                        parcel.enforceInterface(f365c);
                        J(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 37:
                        parcel.enforceInterface(f365c);
                        int k10 = k();
                        parcel2.writeNoException();
                        parcel2.writeInt(k10);
                        return true;
                    case 38:
                        parcel.enforceInterface(f365c);
                        boolean I2 = I();
                        parcel2.writeNoException();
                        parcel2.writeInt(I2 ? 1 : 0);
                        return true;
                    case 39:
                        parcel.enforceInterface(f365c);
                        j(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 40:
                        parcel.enforceInterface(f365c);
                        F0(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 41:
                        parcel.enforceInterface(f365c);
                        u(parcel.readInt() != 0 ? MediaDescriptionCompat.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 42:
                        parcel.enforceInterface(f365c);
                        i0(parcel.readInt() != 0 ? MediaDescriptionCompat.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 43:
                        parcel.enforceInterface(f365c);
                        t(parcel.readInt() != 0 ? MediaDescriptionCompat.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 44:
                        parcel.enforceInterface(f365c);
                        s0(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 45:
                        parcel.enforceInterface(f365c);
                        boolean q9 = q();
                        parcel2.writeNoException();
                        parcel2.writeInt(q9 ? 1 : 0);
                        return true;
                    case 46:
                        parcel.enforceInterface(f365c);
                        F(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 47:
                        parcel.enforceInterface(f365c);
                        int p9 = p();
                        parcel2.writeNoException();
                        parcel2.writeInt(p9);
                        return true;
                    case 48:
                        parcel.enforceInterface(f365c);
                        r(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 49:
                        parcel.enforceInterface(f365c);
                        E(parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 50:
                        parcel.enforceInterface(f365c);
                        Bundle m9 = m();
                        parcel2.writeNoException();
                        if (m9 != null) {
                            parcel2.writeInt(1);
                            m9.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 51:
                        parcel.enforceInterface(f365c);
                        g0(parcel.readInt() != 0 ? RatingCompat.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i4, parcel, parcel2, i10);
                }
            }
            parcel2.writeString(f365c);
            return true;
        }
    }

    ParcelableVolumeInfo A1() throws RemoteException;

    void E(float f10) throws RemoteException;

    void E0(long j4) throws RemoteException;

    void F(boolean z9) throws RemoteException;

    void F0(boolean z9) throws RemoteException;

    List<MediaSessionCompat.QueueItem> G() throws RemoteException;

    void H(String str, Bundle bundle) throws RemoteException;

    boolean I() throws RemoteException;

    void J(Uri uri, Bundle bundle) throws RemoteException;

    PendingIntent K() throws RemoteException;

    void Q0(android.support.v4.media.session.a aVar) throws RemoteException;

    void R0(RatingCompat ratingCompat) throws RemoteException;

    void S0(int i4, int i10, String str) throws RemoteException;

    void T(String str, Bundle bundle) throws RemoteException;

    boolean V0() throws RemoteException;

    void W(String str, Bundle bundle) throws RemoteException;

    void W0(String str, Bundle bundle) throws RemoteException;

    void X(String str, Bundle bundle) throws RemoteException;

    void Y(Uri uri, Bundle bundle) throws RemoteException;

    void a() throws RemoteException;

    PlaybackStateCompat c() throws RemoteException;

    void d() throws RemoteException;

    void e1(android.support.v4.media.session.a aVar) throws RemoteException;

    String f() throws RemoteException;

    boolean f0(KeyEvent keyEvent) throws RemoteException;

    void g0(RatingCompat ratingCompat, Bundle bundle) throws RemoteException;

    Bundle getExtras() throws RemoteException;

    long getFlags() throws RemoteException;

    MediaMetadataCompat getMetadata() throws RemoteException;

    String getPackageName() throws RemoteException;

    void h1() throws RemoteException;

    void i0(MediaDescriptionCompat mediaDescriptionCompat, int i4) throws RemoteException;

    void j(int i4) throws RemoteException;

    int k() throws RemoteException;

    int l() throws RemoteException;

    Bundle m() throws RemoteException;

    void next() throws RemoteException;

    int p() throws RemoteException;

    void pause() throws RemoteException;

    void previous() throws RemoteException;

    boolean q() throws RemoteException;

    void q1(int i4, int i10, String str) throws RemoteException;

    void r(int i4) throws RemoteException;

    void s0(int i4) throws RemoteException;

    void seekTo(long j4) throws RemoteException;

    void stop() throws RemoteException;

    void t(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    void u(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    CharSequence v() throws RemoteException;

    void y0(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException;

    void z0() throws RemoteException;
}
