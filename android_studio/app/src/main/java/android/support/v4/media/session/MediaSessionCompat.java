package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.media.session.b;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.media.MediaSessionManager;
import androidx.media.VolumeProviderCompat;
import androidx.media.session.MediaButtonReceiver;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MediaSessionCompat {
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String A = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String B = "android.support.v4.media.session.action.ARGUMENT_QUERY";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String C = "android.support.v4.media.session.action.ARGUMENT_URI";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String D = "android.support.v4.media.session.action.ARGUMENT_RATING";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String E = "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String F = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String G = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String H = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String I = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String J = "android.support.v4.media.session.TOKEN";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String K = "android.support.v4.media.session.EXTRA_BINDER";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String L = "android.support.v4.media.session.SESSION_TOKEN2";
    private static final int M = 320;
    private static final String N = "data_calling_pkg";
    private static final String O = "data_calling_pid";
    private static final String P = "data_calling_uid";
    private static final String Q = "data_extras";
    static int R = 0;

    /* renamed from: d  reason: collision with root package name */
    static final String f222d = "MediaSessionCompat";
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    public static final int f223e = 1;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public static final int f224f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f225g = 4;

    /* renamed from: h  reason: collision with root package name */
    public static final String f226h = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE";

    /* renamed from: i  reason: collision with root package name */
    public static final String f227i = "android.support.v4.media.session.action.SKIP_AD";

    /* renamed from: j  reason: collision with root package name */
    public static final String f228j = "android.support.v4.media.session.action.FOLLOW";

    /* renamed from: k  reason: collision with root package name */
    public static final String f229k = "android.support.v4.media.session.action.UNFOLLOW";

    /* renamed from: l  reason: collision with root package name */
    public static final String f230l = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE";

    /* renamed from: m  reason: collision with root package name */
    public static final String f231m = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE";

    /* renamed from: n  reason: collision with root package name */
    public static final int f232n = 0;

    /* renamed from: o  reason: collision with root package name */
    public static final int f233o = 1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f234p = 2;
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: q  reason: collision with root package name */
    public static final String f235q = "android.support.v4.media.session.action.PLAY_FROM_URI";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: r  reason: collision with root package name */
    public static final String f236r = "android.support.v4.media.session.action.PREPARE";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: s  reason: collision with root package name */
    public static final String f237s = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: t  reason: collision with root package name */
    public static final String f238t = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: u  reason: collision with root package name */
    public static final String f239u = "android.support.v4.media.session.action.PREPARE_FROM_URI";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: v  reason: collision with root package name */
    public static final String f240v = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: w  reason: collision with root package name */
    public static final String f241w = "android.support.v4.media.session.action.SET_REPEAT_MODE";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: x  reason: collision with root package name */
    public static final String f242x = "android.support.v4.media.session.action.SET_SHUFFLE_MODE";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: y  reason: collision with root package name */
    public static final String f243y = "android.support.v4.media.session.action.SET_RATING";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: z  reason: collision with root package name */
    public static final String f244z = "android.support.v4.media.session.action.SET_PLAYBACK_SPEED";

    /* renamed from: a  reason: collision with root package name */
    private final c f245a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaControllerCompat f246b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<j> f247c;

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new a();
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat mDescription;
        private final long mId;
        private MediaSession.QueueItem mItemFwk;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<QueueItem> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public QueueItem[] newArray(int i4) {
                return new QueueItem[i4];
            }
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j4) {
            this(null, mediaDescriptionCompat, j4);
        }

        public static QueueItem fromQueueItem(Object obj) {
            if (obj != null) {
                MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
                return new QueueItem(queueItem, MediaDescriptionCompat.fromMediaDescription(queueItem.getDescription()), queueItem.getQueueId());
            }
            return null;
        }

        public static List<QueueItem> fromQueueItemList(List<?> list) {
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<?> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(fromQueueItem(it.next()));
                }
                return arrayList;
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public long getQueueId() {
            return this.mId;
        }

        public Object getQueueItem() {
            MediaSession.QueueItem queueItem = this.mItemFwk;
            if (queueItem == null) {
                MediaSession.QueueItem queueItem2 = new MediaSession.QueueItem((MediaDescription) this.mDescription.getMediaDescription(), this.mId);
                this.mItemFwk = queueItem2;
                return queueItem2;
            }
            return queueItem;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            this.mDescription.writeToParcel(parcel, i4);
            parcel.writeLong(this.mId);
        }

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j4) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (j4 != -1) {
                this.mDescription = mediaDescriptionCompat;
                this.mId = j4;
                this.mItemFwk = queueItem;
                return;
            }
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        }

        QueueItem(Parcel parcel) {
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new a();
        @GuardedBy("mLock")
        private android.support.v4.media.session.b mExtraBinder;
        private final Object mInner;
        private final Object mLock;
        @GuardedBy("mLock")
        private VersionedParcelable mSession2Token;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<Token> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null));
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public Token[] newArray(int i4) {
                return new Token[i4];
            }
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static Token fromBundle(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            android.support.v4.media.session.b s9 = b.AbstractBinderC0009b.s(BundleCompat.getBinder(bundle, MediaSessionCompat.K));
            VersionedParcelable versionedParcelable = ParcelUtils.getVersionedParcelable(bundle, MediaSessionCompat.L);
            Token token = (Token) bundle.getParcelable(MediaSessionCompat.J);
            if (token == null) {
                return null;
            }
            return new Token(token.mInner, s9, versionedParcelable);
        }

        public static Token fromToken(Object obj) {
            return fromToken(obj, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Token) {
                Token token = (Token) obj;
                Object obj2 = this.mInner;
                if (obj2 == null) {
                    return token.mInner == null;
                }
                Object obj3 = token.mInner;
                if (obj3 == null) {
                    return false;
                }
                return obj2.equals(obj3);
            }
            return false;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public android.support.v4.media.session.b getExtraBinder() {
            android.support.v4.media.session.b bVar;
            synchronized (this.mLock) {
                bVar = this.mExtraBinder;
            }
            return bVar;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public VersionedParcelable getSession2Token() {
            VersionedParcelable versionedParcelable;
            synchronized (this.mLock) {
                versionedParcelable = this.mSession2Token;
            }
            return versionedParcelable;
        }

        public Object getToken() {
            return this.mInner;
        }

        public int hashCode() {
            Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void setExtraBinder(android.support.v4.media.session.b bVar) {
            synchronized (this.mLock) {
                this.mExtraBinder = bVar;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void setSession2Token(VersionedParcelable versionedParcelable) {
            synchronized (this.mLock) {
                this.mSession2Token = versionedParcelable;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaSessionCompat.J, this);
            synchronized (this.mLock) {
                android.support.v4.media.session.b bVar = this.mExtraBinder;
                if (bVar != null) {
                    BundleCompat.putBinder(bundle, MediaSessionCompat.K, bVar.asBinder());
                }
                VersionedParcelable versionedParcelable = this.mSession2Token;
                if (versionedParcelable != null) {
                    ParcelUtils.putVersionedParcelable(bundle, MediaSessionCompat.L, versionedParcelable);
                }
            }
            return bundle;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeParcelable((Parcelable) this.mInner, i4);
        }

        Token(Object obj, android.support.v4.media.session.b bVar) {
            this(obj, bVar, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static Token fromToken(Object obj, android.support.v4.media.session.b bVar) {
            if (obj != null) {
                if (obj instanceof MediaSession.Token) {
                    return new Token(obj, bVar);
                }
                throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
            }
            return null;
        }

        Token(Object obj, android.support.v4.media.session.b bVar, VersionedParcelable versionedParcelable) {
            this.mLock = new Object();
            this.mInner = obj;
            this.mExtraBinder = bVar;
            this.mSession2Token = versionedParcelable;
        }
    }

    /* loaded from: classes.dex */
    class a extends b {
        a() {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {

        /* renamed from: c  reason: collision with root package name */
        private boolean f251c;
        @GuardedBy("mLock")

        /* renamed from: e  reason: collision with root package name */
        a f253e;

        /* renamed from: a  reason: collision with root package name */
        final Object f249a = new Object();

        /* renamed from: b  reason: collision with root package name */
        final MediaSession.Callback f250b = new C0006b();
        @GuardedBy("mLock")

        /* renamed from: d  reason: collision with root package name */
        WeakReference<c> f252d = new WeakReference<>(null);

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class a extends Handler {

            /* renamed from: b  reason: collision with root package name */
            private static final int f254b = 1;

            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                c cVar;
                b bVar;
                a aVar;
                if (message.what == 1) {
                    synchronized (b.this.f249a) {
                        cVar = b.this.f252d.get();
                        bVar = b.this;
                        aVar = bVar.f253e;
                    }
                    if (cVar == null || bVar != cVar.o() || aVar == null) {
                        return;
                    }
                    cVar.t((MediaSessionManager.RemoteUserInfo) message.obj);
                    b.this.d(cVar, aVar);
                    cVar.t(null);
                }
            }
        }

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private class C0006b extends MediaSession.Callback {
            C0006b() {
            }

            private void a(c cVar) {
                cVar.t(null);
            }

            private f b() {
                f fVar;
                synchronized (b.this.f249a) {
                    fVar = (f) b.this.f252d.get();
                }
                if (b.this == fVar.o()) {
                    return fVar;
                }
                return null;
            }

            private void d(c cVar) {
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                String l10 = cVar.l();
                if (TextUtils.isEmpty(l10)) {
                    l10 = MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER;
                }
                cVar.t(new MediaSessionManager.RemoteUserInfo(l10, -1, -1));
            }

            public void c(Rating rating, Bundle bundle) {
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                try {
                    QueueItem queueItem = null;
                    IBinder asBinder = null;
                    queueItem = null;
                    if (str.equals(MediaControllerCompat.f174e)) {
                        Bundle bundle2 = new Bundle();
                        Token b11 = b10.b();
                        android.support.v4.media.session.b extraBinder = b11.getExtraBinder();
                        if (extraBinder != null) {
                            asBinder = extraBinder.asBinder();
                        }
                        BundleCompat.putBinder(bundle2, MediaSessionCompat.K, asBinder);
                        ParcelUtils.putVersionedParcelable(bundle2, MediaSessionCompat.L, b11.getSession2Token());
                        resultReceiver.send(0, bundle2);
                    } else if (str.equals(MediaControllerCompat.f175f)) {
                        b.this.x((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.f179j));
                    } else if (str.equals(MediaControllerCompat.f176g)) {
                        b.this.y((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.f179j), bundle.getInt(MediaControllerCompat.f180k));
                    } else if (str.equals(MediaControllerCompat.f177h)) {
                        b.this.T((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.f179j));
                    } else if (str.equals(MediaControllerCompat.f178i)) {
                        if (b10.f266h != null) {
                            int i4 = bundle.getInt(MediaControllerCompat.f180k, -1);
                            if (i4 >= 0 && i4 < b10.f266h.size()) {
                                queueItem = b10.f266h.get(i4);
                            }
                            if (queueItem != null) {
                                b.this.T(queueItem.getDescription());
                            }
                        }
                    } else {
                        b.this.F(str, bundle, resultReceiver);
                    }
                } catch (BadParcelableException unused) {
                    Log.e(MediaSessionCompat.f222d, "Could not unparcel the extra data.");
                }
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCustomAction(String str, Bundle bundle) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                try {
                    if (str.equals(MediaSessionCompat.f235q)) {
                        Bundle bundle2 = bundle.getBundle(MediaSessionCompat.F);
                        MediaSessionCompat.c(bundle2);
                        b.this.O((Uri) bundle.getParcelable(MediaSessionCompat.C), bundle2);
                    } else if (str.equals(MediaSessionCompat.f236r)) {
                        b.this.P();
                    } else if (str.equals(MediaSessionCompat.f237s)) {
                        String string = bundle.getString(MediaSessionCompat.A);
                        Bundle bundle3 = bundle.getBundle(MediaSessionCompat.F);
                        MediaSessionCompat.c(bundle3);
                        b.this.Q(string, bundle3);
                    } else if (str.equals(MediaSessionCompat.f238t)) {
                        String string2 = bundle.getString(MediaSessionCompat.B);
                        Bundle bundle4 = bundle.getBundle(MediaSessionCompat.F);
                        MediaSessionCompat.c(bundle4);
                        b.this.R(string2, bundle4);
                    } else if (str.equals(MediaSessionCompat.f239u)) {
                        Bundle bundle5 = bundle.getBundle(MediaSessionCompat.F);
                        MediaSessionCompat.c(bundle5);
                        b.this.S((Uri) bundle.getParcelable(MediaSessionCompat.C), bundle5);
                    } else if (str.equals(MediaSessionCompat.f240v)) {
                        b.this.Z(bundle.getBoolean(MediaSessionCompat.G));
                    } else if (str.equals(MediaSessionCompat.f241w)) {
                        b.this.g0(bundle.getInt(MediaSessionCompat.H));
                    } else if (str.equals(MediaSessionCompat.f242x)) {
                        b.this.h0(bundle.getInt(MediaSessionCompat.I));
                    } else if (str.equals(MediaSessionCompat.f243y)) {
                        Bundle bundle6 = bundle.getBundle(MediaSessionCompat.F);
                        MediaSessionCompat.c(bundle6);
                        b.this.f0((RatingCompat) bundle.getParcelable(MediaSessionCompat.D), bundle6);
                    } else if (str.equals(MediaSessionCompat.f244z)) {
                        b.this.b0(bundle.getFloat(MediaSessionCompat.E, 1.0f));
                    } else {
                        b.this.H(str, bundle);
                    }
                } catch (BadParcelableException unused) {
                    Log.e(MediaSessionCompat.f222d, "Could not unparcel the data.");
                }
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onFastForward() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.I();
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                f b10 = b();
                if (b10 == null) {
                    return false;
                }
                d(b10);
                boolean J = b.this.J(intent);
                a(b10);
                return J || super.onMediaButtonEvent(intent);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPause() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.K();
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlay() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.L();
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromMediaId(String str, Bundle bundle) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                b.this.M(str, bundle);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromSearch(String str, Bundle bundle) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                b.this.N(str, bundle);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(23)
            public void onPlayFromUri(Uri uri, Bundle bundle) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                b.this.O(uri, bundle);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepare() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.P();
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromMediaId(String str, Bundle bundle) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                b.this.Q(str, bundle);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromSearch(String str, Bundle bundle) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                b.this.R(str, bundle);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromUri(Uri uri, Bundle bundle) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                MediaSessionCompat.c(bundle);
                d(b10);
                b.this.S(uri, bundle);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onRewind() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.W();
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSeekTo(long j4) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.Y(j4);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(29)
            public void onSetPlaybackSpeed(float f10) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.b0(f10);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSetRating(Rating rating) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.d0(RatingCompat.fromRating(rating));
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.i0();
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.j0();
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToQueueItem(long j4) {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.k0(j4);
                a(b10);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onStop() {
                f b10 = b();
                if (b10 == null) {
                    return;
                }
                d(b10);
                b.this.l0();
                a(b10);
            }
        }

        public void F(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void H(String str, Bundle bundle) {
        }

        public void I() {
        }

        public boolean J(Intent intent) {
            c cVar;
            a aVar;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            synchronized (this.f249a) {
                cVar = this.f252d.get();
                aVar = this.f253e;
            }
            if (cVar == null || aVar == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            MediaSessionManager.RemoteUserInfo w9 = cVar.w();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                d(cVar, aVar);
                return false;
            }
            if (keyEvent.getRepeatCount() == 0) {
                if (this.f251c) {
                    aVar.removeMessages(1);
                    this.f251c = false;
                    PlaybackStateCompat c10 = cVar.c();
                    if (((c10 == null ? 0L : c10.getActions()) & 32) != 0) {
                        i0();
                    }
                } else {
                    this.f251c = true;
                    aVar.sendMessageDelayed(aVar.obtainMessage(1, w9), ViewConfiguration.getDoubleTapTimeout());
                }
            } else {
                d(cVar, aVar);
            }
            return true;
        }

        public void K() {
        }

        public void L() {
        }

        public void M(String str, Bundle bundle) {
        }

        public void N(String str, Bundle bundle) {
        }

        public void O(Uri uri, Bundle bundle) {
        }

        public void P() {
        }

        public void Q(String str, Bundle bundle) {
        }

        public void R(String str, Bundle bundle) {
        }

        public void S(Uri uri, Bundle bundle) {
        }

        public void T(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Deprecated
        public void V(int i4) {
        }

        public void W() {
        }

        public void Y(long j4) {
        }

        public void Z(boolean z9) {
        }

        public void b0(float f10) {
        }

        void d(c cVar, Handler handler) {
            if (this.f251c) {
                this.f251c = false;
                handler.removeMessages(1);
                PlaybackStateCompat c10 = cVar.c();
                long actions = c10 == null ? 0L : c10.getActions();
                boolean z9 = c10 != null && c10.getState() == 3;
                boolean z10 = (516 & actions) != 0;
                boolean z11 = (actions & 514) != 0;
                if (z9 && z11) {
                    K();
                } else if (z9 || !z10) {
                } else {
                    L();
                }
            }
        }

        public void d0(RatingCompat ratingCompat) {
        }

        public void f0(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void g0(int i4) {
        }

        public void h0(int i4) {
        }

        public void i0() {
        }

        public void j0() {
        }

        public void k0(long j4) {
        }

        public void l0() {
        }

        void m0(c cVar, Handler handler) {
            synchronized (this.f249a) {
                this.f252d = new WeakReference<>(cVar);
                a aVar = this.f253e;
                a aVar2 = null;
                if (aVar != null) {
                    aVar.removeCallbacksAndMessages(null);
                }
                if (cVar != null && handler != null) {
                    aVar2 = new a(handler.getLooper());
                }
                this.f253e = aVar2;
            }
        }

        public void x(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void y(MediaDescriptionCompat mediaDescriptionCompat, int i4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface c {
        void F(boolean z9);

        boolean a();

        Token b();

        PlaybackStateCompat c();

        void d(String str, Bundle bundle);

        void e(b bVar, Handler handler);

        void f(CharSequence charSequence);

        void g(MediaMetadataCompat mediaMetadataCompat);

        void h(int i4);

        void i(List<QueueItem> list);

        void j(int i4);

        void k(PlaybackStateCompat playbackStateCompat);

        String l();

        void m(PendingIntent pendingIntent);

        void n(int i4);

        b o();

        void p(PendingIntent pendingIntent);

        Object q();

        void r(int i4);

        void release();

        void s(boolean z9);

        void setExtras(Bundle bundle);

        void setFlags(int i4);

        void t(MediaSessionManager.RemoteUserInfo remoteUserInfo);

        Object u();

        void v(VolumeProviderCompat volumeProviderCompat);

        MediaSessionManager.RemoteUserInfo w();
    }

    @RequiresApi(18)
    /* loaded from: classes.dex */
    static class d extends i {
        private static boolean H = true;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements RemoteControlClient.OnPlaybackPositionUpdateListener {
            a() {
            }

            @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
            public void onPlaybackPositionUpdate(long j4) {
                d.this.C(18, -1, -1, Long.valueOf(j4), null);
            }
        }

        d(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, componentName, pendingIntent, versionedParcelable, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        int B(long j4) {
            int B = super.B(j4);
            return (j4 & 256) != 0 ? B | 256 : B;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        void D(PendingIntent pendingIntent, ComponentName componentName) {
            if (H) {
                try {
                    this.f283i.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException unused) {
                    Log.w(MediaSessionCompat.f222d, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                    H = false;
                }
            }
            if (H) {
                return;
            }
            super.D(pendingIntent, componentName);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        void Q(PlaybackStateCompat playbackStateCompat) {
            long position = playbackStateCompat.getPosition();
            float playbackSpeed = playbackStateCompat.getPlaybackSpeed();
            long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (playbackStateCompat.getState() == 3) {
                long j4 = 0;
                if (position > 0) {
                    if (lastPositionUpdateTime > 0) {
                        j4 = elapsedRealtime - lastPositionUpdateTime;
                        if (playbackSpeed > 0.0f && playbackSpeed != 1.0f) {
                            j4 = ((float) j4) * playbackSpeed;
                        }
                    }
                    position += j4;
                }
            }
            this.f284j.setPlaybackState(A(playbackStateCompat.getState()), position, playbackSpeed);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        void S(PendingIntent pendingIntent, ComponentName componentName) {
            if (H) {
                this.f283i.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.S(pendingIntent, componentName);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i, android.support.v4.media.session.MediaSessionCompat.c
        public void e(b bVar, Handler handler) {
            super.e(bVar, handler);
            if (bVar == null) {
                this.f284j.setPlaybackPositionUpdateListener(null);
                return;
            }
            this.f284j.setPlaybackPositionUpdateListener(new a());
        }
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    static class e extends d {

        /* loaded from: classes.dex */
        class a implements RemoteControlClient.OnMetadataUpdateListener {
            a() {
            }

            @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
            public void onMetadataUpdate(int i4, Object obj) {
                if (i4 == 268435457 && (obj instanceof Rating)) {
                    e.this.C(19, -1, -1, RatingCompat.fromRating(obj), null);
                }
            }
        }

        e(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, componentName, pendingIntent, versionedParcelable, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d, android.support.v4.media.session.MediaSessionCompat.i
        int B(long j4) {
            int B = super.B(j4);
            return (j4 & 128) != 0 ? B | 512 : B;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d, android.support.v4.media.session.MediaSessionCompat.i, android.support.v4.media.session.MediaSessionCompat.c
        public void e(b bVar, Handler handler) {
            super.e(bVar, handler);
            if (bVar == null) {
                this.f284j.setMetadataUpdateListener(null);
                return;
            }
            this.f284j.setMetadataUpdateListener(new a());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        RemoteControlClient.MetadataEditor y(Bundle bundle) {
            RemoteControlClient.MetadataEditor y9 = super.y(bundle);
            PlaybackStateCompat playbackStateCompat = this.f294t;
            if (((playbackStateCompat == null ? 0L : playbackStateCompat.getActions()) & 128) != 0) {
                y9.addEditableKey(268435457);
            }
            if (bundle == null) {
                return y9;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_YEAR)) {
                y9.putLong(8, bundle.getLong(MediaMetadataCompat.METADATA_KEY_YEAR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_RATING)) {
                y9.putObject(101, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_RATING));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_USER_RATING)) {
                y9.putObject(268435457, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_USER_RATING));
            }
            return y9;
        }
    }

    @RequiresApi(28)
    /* loaded from: classes.dex */
    static class g extends f {
        g(MediaSession mediaSession, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(mediaSession, versionedParcelable, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.f, android.support.v4.media.session.MediaSessionCompat.c
        public void t(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.f, android.support.v4.media.session.MediaSessionCompat.c
        @NonNull
        public final MediaSessionManager.RemoteUserInfo w() {
            return new MediaSessionManager.RemoteUserInfo(this.f259a.getCurrentControllerInfo());
        }

        g(Object obj) {
            super(obj);
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    static class h extends g {
        h(MediaSession mediaSession, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(mediaSession, versionedParcelable, bundle);
        }

        h(Object obj) {
            super(obj);
            this.f262d = ((MediaSession) obj).getController().getSessionInfo();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class i implements c {
        static final int G = 0;
        int A;
        Bundle B;
        int C;
        int D;
        VolumeProviderCompat E;

        /* renamed from: a  reason: collision with root package name */
        private final Context f275a;

        /* renamed from: b  reason: collision with root package name */
        private final ComponentName f276b;

        /* renamed from: c  reason: collision with root package name */
        private final PendingIntent f277c;

        /* renamed from: d  reason: collision with root package name */
        private final c f278d;

        /* renamed from: e  reason: collision with root package name */
        private final Token f279e;

        /* renamed from: f  reason: collision with root package name */
        final String f280f;

        /* renamed from: g  reason: collision with root package name */
        final Bundle f281g;

        /* renamed from: h  reason: collision with root package name */
        final String f282h;

        /* renamed from: i  reason: collision with root package name */
        final AudioManager f283i;

        /* renamed from: j  reason: collision with root package name */
        final RemoteControlClient f284j;

        /* renamed from: m  reason: collision with root package name */
        private d f287m;

        /* renamed from: p  reason: collision with root package name */
        volatile b f290p;

        /* renamed from: q  reason: collision with root package name */
        private MediaSessionManager.RemoteUserInfo f291q;

        /* renamed from: s  reason: collision with root package name */
        MediaMetadataCompat f293s;

        /* renamed from: t  reason: collision with root package name */
        PlaybackStateCompat f294t;

        /* renamed from: u  reason: collision with root package name */
        PendingIntent f295u;

        /* renamed from: v  reason: collision with root package name */
        List<QueueItem> f296v;

        /* renamed from: w  reason: collision with root package name */
        CharSequence f297w;

        /* renamed from: x  reason: collision with root package name */
        int f298x;

        /* renamed from: y  reason: collision with root package name */
        boolean f299y;

        /* renamed from: z  reason: collision with root package name */
        int f300z;

        /* renamed from: k  reason: collision with root package name */
        final Object f285k = new Object();

        /* renamed from: l  reason: collision with root package name */
        final RemoteCallbackList<android.support.v4.media.session.a> f286l = new RemoteCallbackList<>();

        /* renamed from: n  reason: collision with root package name */
        boolean f288n = false;

        /* renamed from: o  reason: collision with root package name */
        boolean f289o = false;

        /* renamed from: r  reason: collision with root package name */
        int f292r = 3;
        private VolumeProviderCompat.Callback F = new a();

        /* loaded from: classes.dex */
        class a extends VolumeProviderCompat.Callback {
            a() {
            }

            @Override // androidx.media.VolumeProviderCompat.Callback
            public void onVolumeChanged(VolumeProviderCompat volumeProviderCompat) {
                if (i.this.E != volumeProviderCompat) {
                    return;
                }
                i iVar = i.this;
                i.this.P(new ParcelableVolumeInfo(iVar.C, iVar.D, volumeProviderCompat.getVolumeControl(), volumeProviderCompat.getMaxVolume(), volumeProviderCompat.getCurrentVolume()));
            }
        }

        /* loaded from: classes.dex */
        private static final class b {

            /* renamed from: a  reason: collision with root package name */
            public final String f302a;

            /* renamed from: b  reason: collision with root package name */
            public final Bundle f303b;

            /* renamed from: c  reason: collision with root package name */
            public final ResultReceiver f304c;

            public b(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f302a = str;
                this.f303b = bundle;
                this.f304c = resultReceiver;
            }
        }

        /* loaded from: classes.dex */
        class c extends b.AbstractBinderC0009b {
            c() {
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo A1() {
                int i4;
                int i10;
                int i11;
                int streamMaxVolume;
                int streamVolume;
                synchronized (i.this.f285k) {
                    i iVar = i.this;
                    i4 = iVar.C;
                    i10 = iVar.D;
                    VolumeProviderCompat volumeProviderCompat = iVar.E;
                    i11 = 2;
                    if (i4 == 2) {
                        int volumeControl = volumeProviderCompat.getVolumeControl();
                        int maxVolume = volumeProviderCompat.getMaxVolume();
                        streamVolume = volumeProviderCompat.getCurrentVolume();
                        streamMaxVolume = maxVolume;
                        i11 = volumeControl;
                    } else {
                        streamMaxVolume = iVar.f283i.getStreamMaxVolume(i10);
                        streamVolume = i.this.f283i.getStreamVolume(i10);
                    }
                }
                return new ParcelableVolumeInfo(i4, i10, i11, streamMaxVolume, streamVolume);
            }

            @Override // android.support.v4.media.session.b
            public void E(float f10) throws RemoteException {
                K1(32, Float.valueOf(f10));
            }

            @Override // android.support.v4.media.session.b
            public void E0(long j4) {
                K1(11, Long.valueOf(j4));
            }

            @Override // android.support.v4.media.session.b
            public void F(boolean z9) throws RemoteException {
                K1(29, Boolean.valueOf(z9));
            }

            @Override // android.support.v4.media.session.b
            public void F0(boolean z9) throws RemoteException {
            }

            @Override // android.support.v4.media.session.b
            public List<QueueItem> G() {
                List<QueueItem> list;
                synchronized (i.this.f285k) {
                    list = i.this.f296v;
                }
                return list;
            }

            @Override // android.support.v4.media.session.b
            public void H(String str, Bundle bundle) throws RemoteException {
                M1(20, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public boolean I() {
                return false;
            }

            @Override // android.support.v4.media.session.b
            public void J(Uri uri, Bundle bundle) throws RemoteException {
                M1(6, uri, bundle);
            }

            void J1(int i4, int i10) {
                i.this.C(i4, i10, 0, null, null);
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent K() {
                PendingIntent pendingIntent;
                synchronized (i.this.f285k) {
                    pendingIntent = i.this.f295u;
                }
                return pendingIntent;
            }

            void K1(int i4, Object obj) {
                i.this.C(i4, 0, 0, obj, null);
            }

            void L1(int i4, Object obj, int i10) {
                i.this.C(i4, i10, 0, obj, null);
            }

            void M1(int i4, Object obj, Bundle bundle) {
                i.this.C(i4, 0, 0, obj, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void Q0(android.support.v4.media.session.a aVar) {
                if (i.this.f288n) {
                    try {
                        aVar.h0();
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                i.this.f286l.register(aVar, new MediaSessionManager.RemoteUserInfo(i.this.z(Binder.getCallingUid()), Binder.getCallingPid(), Binder.getCallingUid()));
            }

            @Override // android.support.v4.media.session.b
            public void R0(RatingCompat ratingCompat) throws RemoteException {
                K1(19, ratingCompat);
            }

            @Override // android.support.v4.media.session.b
            public void S0(int i4, int i10, String str) {
                i.this.R(i4, i10);
            }

            @Override // android.support.v4.media.session.b
            public void T(String str, Bundle bundle) throws RemoteException {
                M1(4, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public boolean V0() {
                return true;
            }

            @Override // android.support.v4.media.session.b
            public void W(String str, Bundle bundle) throws RemoteException {
                M1(8, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void W0(String str, Bundle bundle) throws RemoteException {
                M1(5, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void X(String str, Bundle bundle) throws RemoteException {
                M1(9, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void Y(Uri uri, Bundle bundle) throws RemoteException {
                M1(10, uri, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void a() throws RemoteException {
                n1(3);
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat c() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (i.this.f285k) {
                    i iVar = i.this;
                    playbackStateCompat = iVar.f294t;
                    mediaMetadataCompat = iVar.f293s;
                }
                return MediaSessionCompat.k(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.b
            public void d() throws RemoteException {
                n1(7);
            }

            @Override // android.support.v4.media.session.b
            public void e1(android.support.v4.media.session.a aVar) {
                i.this.f286l.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public String f() {
                return i.this.f282h;
            }

            @Override // android.support.v4.media.session.b
            public boolean f0(KeyEvent keyEvent) {
                K1(21, keyEvent);
                return true;
            }

            @Override // android.support.v4.media.session.b
            public void g0(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                M1(31, ratingCompat, bundle);
            }

            @Override // android.support.v4.media.session.b
            public Bundle getExtras() {
                Bundle bundle;
                synchronized (i.this.f285k) {
                    bundle = i.this.B;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.b
            public long getFlags() {
                long j4;
                synchronized (i.this.f285k) {
                    j4 = i.this.f292r;
                }
                return j4;
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat getMetadata() {
                return i.this.f293s;
            }

            @Override // android.support.v4.media.session.b
            public String getPackageName() {
                return i.this.f280f;
            }

            @Override // android.support.v4.media.session.b
            public void h1() throws RemoteException {
                n1(16);
            }

            @Override // android.support.v4.media.session.b
            public void i0(MediaDescriptionCompat mediaDescriptionCompat, int i4) {
                L1(26, mediaDescriptionCompat, i4);
            }

            @Override // android.support.v4.media.session.b
            public void j(int i4) throws RemoteException {
                J1(23, i4);
            }

            @Override // android.support.v4.media.session.b
            public int k() {
                return i.this.f300z;
            }

            @Override // android.support.v4.media.session.b
            public int l() {
                return i.this.f298x;
            }

            @Override // android.support.v4.media.session.b
            public Bundle m() {
                if (i.this.f281g == null) {
                    return null;
                }
                return new Bundle(i.this.f281g);
            }

            void n1(int i4) {
                i.this.C(i4, 0, 0, null, null);
            }

            @Override // android.support.v4.media.session.b
            public void next() throws RemoteException {
                n1(14);
            }

            @Override // android.support.v4.media.session.b
            public int p() {
                return i.this.A;
            }

            @Override // android.support.v4.media.session.b
            public void pause() throws RemoteException {
                n1(12);
            }

            @Override // android.support.v4.media.session.b
            public void previous() throws RemoteException {
                n1(15);
            }

            @Override // android.support.v4.media.session.b
            public boolean q() {
                return i.this.f299y;
            }

            @Override // android.support.v4.media.session.b
            public void q1(int i4, int i10, String str) {
                i.this.x(i4, i10);
            }

            @Override // android.support.v4.media.session.b
            public void r(int i4) throws RemoteException {
                J1(30, i4);
            }

            @Override // android.support.v4.media.session.b
            public void s0(int i4) {
                J1(28, i4);
            }

            @Override // android.support.v4.media.session.b
            public void seekTo(long j4) throws RemoteException {
                K1(18, Long.valueOf(j4));
            }

            @Override // android.support.v4.media.session.b
            public void stop() throws RemoteException {
                n1(13);
            }

            @Override // android.support.v4.media.session.b
            public void t(MediaDescriptionCompat mediaDescriptionCompat) {
                K1(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public void u(MediaDescriptionCompat mediaDescriptionCompat) {
                K1(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public CharSequence v() {
                return i.this.f297w;
            }

            @Override // android.support.v4.media.session.b
            public void y0(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                K1(1, new b(str, bundle, resultReceiverWrapper == null ? null : resultReceiverWrapper.mResultReceiver));
            }

            @Override // android.support.v4.media.session.b
            public void z0() throws RemoteException {
                n1(17);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class d extends Handler {
            private static final int A = 25;
            private static final int B = 26;
            private static final int C = 27;
            private static final int D = 28;
            private static final int E = 29;
            private static final int F = 30;
            private static final int G = 127;
            private static final int H = 126;

            /* renamed from: b  reason: collision with root package name */
            private static final int f306b = 1;

            /* renamed from: c  reason: collision with root package name */
            private static final int f307c = 2;

            /* renamed from: d  reason: collision with root package name */
            private static final int f308d = 3;

            /* renamed from: e  reason: collision with root package name */
            private static final int f309e = 4;

            /* renamed from: f  reason: collision with root package name */
            private static final int f310f = 5;

            /* renamed from: g  reason: collision with root package name */
            private static final int f311g = 6;

            /* renamed from: h  reason: collision with root package name */
            private static final int f312h = 7;

            /* renamed from: i  reason: collision with root package name */
            private static final int f313i = 8;

            /* renamed from: j  reason: collision with root package name */
            private static final int f314j = 9;

            /* renamed from: k  reason: collision with root package name */
            private static final int f315k = 10;

            /* renamed from: l  reason: collision with root package name */
            private static final int f316l = 11;

            /* renamed from: m  reason: collision with root package name */
            private static final int f317m = 12;

            /* renamed from: n  reason: collision with root package name */
            private static final int f318n = 13;

            /* renamed from: o  reason: collision with root package name */
            private static final int f319o = 14;

            /* renamed from: p  reason: collision with root package name */
            private static final int f320p = 15;

            /* renamed from: q  reason: collision with root package name */
            private static final int f321q = 16;

            /* renamed from: r  reason: collision with root package name */
            private static final int f322r = 17;

            /* renamed from: s  reason: collision with root package name */
            private static final int f323s = 18;

            /* renamed from: t  reason: collision with root package name */
            private static final int f324t = 19;

            /* renamed from: u  reason: collision with root package name */
            private static final int f325u = 31;

            /* renamed from: v  reason: collision with root package name */
            private static final int f326v = 32;

            /* renamed from: w  reason: collision with root package name */
            private static final int f327w = 20;

            /* renamed from: x  reason: collision with root package name */
            private static final int f328x = 21;

            /* renamed from: y  reason: collision with root package name */
            private static final int f329y = 22;

            /* renamed from: z  reason: collision with root package name */
            private static final int f330z = 23;

            public d(Looper looper) {
                super(looper);
            }

            private void a(KeyEvent keyEvent, b bVar) {
                if (keyEvent == null || keyEvent.getAction() != 0) {
                    return;
                }
                PlaybackStateCompat playbackStateCompat = i.this.f294t;
                long actions = playbackStateCompat == null ? 0L : playbackStateCompat.getActions();
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 79) {
                    if (keyCode == 126) {
                        if ((actions & 4) != 0) {
                            bVar.L();
                            return;
                        }
                        return;
                    } else if (keyCode == 127) {
                        if ((actions & 2) != 0) {
                            bVar.K();
                            return;
                        }
                        return;
                    } else {
                        switch (keyCode) {
                            case 85:
                                break;
                            case 86:
                                if ((actions & 1) != 0) {
                                    bVar.l0();
                                    return;
                                }
                                return;
                            case 87:
                                if ((actions & 32) != 0) {
                                    bVar.i0();
                                    return;
                                }
                                return;
                            case 88:
                                if ((actions & 16) != 0) {
                                    bVar.j0();
                                    return;
                                }
                                return;
                            case 89:
                                if ((actions & 8) != 0) {
                                    bVar.W();
                                    return;
                                }
                                return;
                            case 90:
                                if ((actions & 64) != 0) {
                                    bVar.I();
                                    return;
                                }
                                return;
                            default:
                                return;
                        }
                    }
                }
                Log.w(MediaSessionCompat.f222d, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                b bVar = i.this.f290p;
                if (bVar == null) {
                    return;
                }
                Bundle data = message.getData();
                MediaSessionCompat.c(data);
                i.this.t(new MediaSessionManager.RemoteUserInfo(data.getString(MediaSessionCompat.N), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
                Bundle bundle = data.getBundle(MediaSessionCompat.Q);
                MediaSessionCompat.c(bundle);
                try {
                    switch (message.what) {
                        case 1:
                            b bVar2 = (b) message.obj;
                            bVar.F(bVar2.f302a, bVar2.f303b, bVar2.f304c);
                            break;
                        case 2:
                            i.this.x(message.arg1, 0);
                            break;
                        case 3:
                            bVar.P();
                            break;
                        case 4:
                            bVar.Q((String) message.obj, bundle);
                            break;
                        case 5:
                            bVar.R((String) message.obj, bundle);
                            break;
                        case 6:
                            bVar.S((Uri) message.obj, bundle);
                            break;
                        case 7:
                            bVar.L();
                            break;
                        case 8:
                            bVar.M((String) message.obj, bundle);
                            break;
                        case 9:
                            bVar.N((String) message.obj, bundle);
                            break;
                        case 10:
                            bVar.O((Uri) message.obj, bundle);
                            break;
                        case 11:
                            bVar.k0(((Long) message.obj).longValue());
                            break;
                        case 12:
                            bVar.K();
                            break;
                        case 13:
                            bVar.l0();
                            break;
                        case 14:
                            bVar.i0();
                            break;
                        case 15:
                            bVar.j0();
                            break;
                        case 16:
                            bVar.I();
                            break;
                        case 17:
                            bVar.W();
                            break;
                        case 18:
                            bVar.Y(((Long) message.obj).longValue());
                            break;
                        case 19:
                            bVar.d0((RatingCompat) message.obj);
                            break;
                        case 20:
                            bVar.H((String) message.obj, bundle);
                            break;
                        case 21:
                            KeyEvent keyEvent = (KeyEvent) message.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!bVar.J(intent)) {
                                a(keyEvent, bVar);
                                break;
                            }
                            break;
                        case 22:
                            i.this.R(message.arg1, 0);
                            break;
                        case 23:
                            bVar.g0(message.arg1);
                            break;
                        case 25:
                            bVar.x((MediaDescriptionCompat) message.obj);
                            break;
                        case 26:
                            bVar.y((MediaDescriptionCompat) message.obj, message.arg1);
                            break;
                        case 27:
                            bVar.T((MediaDescriptionCompat) message.obj);
                            break;
                        case 28:
                            List<QueueItem> list = i.this.f296v;
                            if (list != null) {
                                int i4 = message.arg1;
                                QueueItem queueItem = (i4 < 0 || i4 >= list.size()) ? null : i.this.f296v.get(message.arg1);
                                if (queueItem != null) {
                                    bVar.T(queueItem.getDescription());
                                    break;
                                }
                            }
                            break;
                        case 29:
                            bVar.Z(((Boolean) message.obj).booleanValue());
                            break;
                        case 30:
                            bVar.h0(message.arg1);
                            break;
                        case 31:
                            bVar.f0((RatingCompat) message.obj, bundle);
                            break;
                        case 32:
                            bVar.b0(((Float) message.obj).floatValue());
                            break;
                    }
                } finally {
                    i.this.t(null);
                }
            }
        }

        public i(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, VersionedParcelable versionedParcelable, Bundle bundle) {
            if (componentName != null) {
                this.f275a = context;
                this.f280f = context.getPackageName();
                this.f281g = bundle;
                this.f283i = (AudioManager) context.getSystemService("audio");
                this.f282h = str;
                this.f276b = componentName;
                this.f277c = pendingIntent;
                c cVar = new c();
                this.f278d = cVar;
                this.f279e = new Token(cVar, null, versionedParcelable);
                this.f298x = 0;
                this.C = 1;
                this.D = 3;
                this.f284j = new RemoteControlClient(pendingIntent);
                return;
            }
            throw new IllegalArgumentException("MediaButtonReceiver component may not be null");
        }

        private void E(boolean z9) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).j1(z9);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void G(String str, Bundle bundle) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).G1(str, bundle);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void H(Bundle bundle) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).Z0(bundle);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void I(MediaMetadataCompat mediaMetadataCompat) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).j0(mediaMetadataCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void J(List<QueueItem> list) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).R(list);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void K(CharSequence charSequence) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).p1(charSequence);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void L(int i4) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).i(i4);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void M() {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).h0();
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
            this.f286l.kill();
        }

        private void N(int i4) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).v0(i4);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        private void O(PlaybackStateCompat playbackStateCompat) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).F1(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        int A(int i4) {
            switch (i4) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        int B(long j4) {
            int i4 = (1 & j4) != 0 ? 32 : 0;
            if ((2 & j4) != 0) {
                i4 |= 16;
            }
            if ((4 & j4) != 0) {
                i4 |= 4;
            }
            if ((8 & j4) != 0) {
                i4 |= 2;
            }
            if ((16 & j4) != 0) {
                i4 |= 1;
            }
            if ((32 & j4) != 0) {
                i4 |= 128;
            }
            if ((64 & j4) != 0) {
                i4 |= 64;
            }
            return (j4 & 512) != 0 ? i4 | 8 : i4;
        }

        void C(int i4, int i10, int i11, Object obj, Bundle bundle) {
            synchronized (this.f285k) {
                d dVar = this.f287m;
                if (dVar != null) {
                    Message obtainMessage = dVar.obtainMessage(i4, i10, i11, obj);
                    Bundle bundle2 = new Bundle();
                    int callingUid = Binder.getCallingUid();
                    bundle2.putInt("data_calling_uid", callingUid);
                    bundle2.putString(MediaSessionCompat.N, z(callingUid));
                    int callingPid = Binder.getCallingPid();
                    if (callingPid > 0) {
                        bundle2.putInt("data_calling_pid", callingPid);
                    } else {
                        bundle2.putInt("data_calling_pid", -1);
                    }
                    if (bundle != null) {
                        bundle2.putBundle(MediaSessionCompat.Q, bundle);
                    }
                    obtainMessage.setData(bundle2);
                    obtainMessage.sendToTarget();
                }
            }
        }

        void D(PendingIntent pendingIntent, ComponentName componentName) {
            this.f283i.registerMediaButtonEventReceiver(componentName);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void F(boolean z9) {
            if (this.f299y != z9) {
                this.f299y = z9;
                E(z9);
            }
        }

        void P(ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int beginBroadcast = this.f286l.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f286l.getBroadcastItem(beginBroadcast).M0(parcelableVolumeInfo);
                } catch (RemoteException unused) {
                }
            }
            this.f286l.finishBroadcast();
        }

        void Q(PlaybackStateCompat playbackStateCompat) {
            this.f284j.setPlaybackState(A(playbackStateCompat.getState()));
        }

        void R(int i4, int i10) {
            if (this.C == 2) {
                VolumeProviderCompat volumeProviderCompat = this.E;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.onSetVolumeTo(i4);
                    return;
                }
                return;
            }
            this.f283i.setStreamVolume(this.D, i4, i10);
        }

        void S(PendingIntent pendingIntent, ComponentName componentName) {
            this.f283i.unregisterMediaButtonEventReceiver(componentName);
        }

        void T() {
            if (this.f289o) {
                D(this.f277c, this.f276b);
                this.f283i.registerRemoteControlClient(this.f284j);
                g(this.f293s);
                k(this.f294t);
                return;
            }
            S(this.f277c, this.f276b);
            this.f284j.setPlaybackState(0);
            this.f283i.unregisterRemoteControlClient(this.f284j);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public boolean a() {
            return this.f289o;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public Token b() {
            return this.f279e;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public PlaybackStateCompat c() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.f285k) {
                playbackStateCompat = this.f294t;
            }
            return playbackStateCompat;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void d(String str, Bundle bundle) {
            G(str, bundle);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0030 A[Catch: all -> 0x0037, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:10:0x0010, B:12:0x001b, B:14:0x0021, B:16:0x0025, B:17:0x002a, B:19:0x0030, B:20:0x0035), top: B:25:0x0003 }] */
        @Override // android.support.v4.media.session.MediaSessionCompat.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void e(android.support.v4.media.session.MediaSessionCompat.b r5, android.os.Handler r6) {
            /*
                r4 = this;
                java.lang.Object r0 = r4.f285k
                monitor-enter(r0)
                android.support.v4.media.session.MediaSessionCompat$i$d r1 = r4.f287m     // Catch: java.lang.Throwable -> L37
                r2 = 0
                if (r1 == 0) goto Lb
                r1.removeCallbacksAndMessages(r2)     // Catch: java.lang.Throwable -> L37
            Lb:
                if (r5 == 0) goto L1a
                if (r6 != 0) goto L10
                goto L1a
            L10:
                android.support.v4.media.session.MediaSessionCompat$i$d r1 = new android.support.v4.media.session.MediaSessionCompat$i$d     // Catch: java.lang.Throwable -> L37
                android.os.Looper r3 = r6.getLooper()     // Catch: java.lang.Throwable -> L37
                r1.<init>(r3)     // Catch: java.lang.Throwable -> L37
                goto L1b
            L1a:
                r1 = r2
            L1b:
                r4.f287m = r1     // Catch: java.lang.Throwable -> L37
                android.support.v4.media.session.MediaSessionCompat$b r1 = r4.f290p     // Catch: java.lang.Throwable -> L37
                if (r1 == r5) goto L2a
                android.support.v4.media.session.MediaSessionCompat$b r1 = r4.f290p     // Catch: java.lang.Throwable -> L37
                if (r1 == 0) goto L2a
                android.support.v4.media.session.MediaSessionCompat$b r1 = r4.f290p     // Catch: java.lang.Throwable -> L37
                r1.m0(r2, r2)     // Catch: java.lang.Throwable -> L37
            L2a:
                r4.f290p = r5     // Catch: java.lang.Throwable -> L37
                android.support.v4.media.session.MediaSessionCompat$b r5 = r4.f290p     // Catch: java.lang.Throwable -> L37
                if (r5 == 0) goto L35
                android.support.v4.media.session.MediaSessionCompat$b r5 = r4.f290p     // Catch: java.lang.Throwable -> L37
                r5.m0(r4, r6)     // Catch: java.lang.Throwable -> L37
            L35:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
                return
            L37:
                r5 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.i.e(android.support.v4.media.session.MediaSessionCompat$b, android.os.Handler):void");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void f(CharSequence charSequence) {
            this.f297w = charSequence;
            K(charSequence);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void g(MediaMetadataCompat mediaMetadataCompat) {
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new MediaMetadataCompat.b(mediaMetadataCompat, MediaSessionCompat.R).a();
            }
            synchronized (this.f285k) {
                this.f293s = mediaMetadataCompat;
            }
            I(mediaMetadataCompat);
            if (this.f289o) {
                y(mediaMetadataCompat == null ? null : mediaMetadataCompat.getBundle()).apply();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void h(int i4) {
            this.f298x = i4;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void i(List<QueueItem> list) {
            this.f296v = list;
            J(list);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void j(int i4) {
            if (this.f300z != i4) {
                this.f300z = i4;
                L(i4);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void k(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.f285k) {
                this.f294t = playbackStateCompat;
            }
            O(playbackStateCompat);
            if (this.f289o) {
                if (playbackStateCompat == null) {
                    this.f284j.setPlaybackState(0);
                    this.f284j.setTransportControlFlags(0);
                    return;
                }
                Q(playbackStateCompat);
                this.f284j.setTransportControlFlags(B(playbackStateCompat.getActions()));
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public String l() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void m(PendingIntent pendingIntent) {
            synchronized (this.f285k) {
                this.f295u = pendingIntent;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void n(int i4) {
            VolumeProviderCompat volumeProviderCompat = this.E;
            if (volumeProviderCompat != null) {
                volumeProviderCompat.setCallback(null);
            }
            this.D = i4;
            this.C = 1;
            int i10 = this.C;
            int i11 = this.D;
            P(new ParcelableVolumeInfo(i10, i11, 2, this.f283i.getStreamMaxVolume(i11), this.f283i.getStreamVolume(this.D)));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public b o() {
            b bVar;
            synchronized (this.f285k) {
                bVar = this.f290p;
            }
            return bVar;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void p(PendingIntent pendingIntent) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public Object q() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void r(int i4) {
            if (this.A != i4) {
                this.A = i4;
                N(i4);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void release() {
            this.f289o = false;
            this.f288n = true;
            T();
            M();
            e(null, null);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void s(boolean z9) {
            if (z9 == this.f289o) {
                return;
            }
            this.f289o = z9;
            T();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void setExtras(Bundle bundle) {
            this.B = bundle;
            H(bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void setFlags(int i4) {
            synchronized (this.f285k) {
                this.f292r = i4 | 1 | 2;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void t(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.f285k) {
                this.f291q = remoteUserInfo;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public Object u() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void v(VolumeProviderCompat volumeProviderCompat) {
            if (volumeProviderCompat != null) {
                VolumeProviderCompat volumeProviderCompat2 = this.E;
                if (volumeProviderCompat2 != null) {
                    volumeProviderCompat2.setCallback(null);
                }
                this.C = 2;
                this.E = volumeProviderCompat;
                P(new ParcelableVolumeInfo(this.C, this.D, this.E.getVolumeControl(), this.E.getMaxVolume(), this.E.getCurrentVolume()));
                volumeProviderCompat.setCallback(this.F);
                return;
            }
            throw new IllegalArgumentException("volumeProvider may not be null");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public MediaSessionManager.RemoteUserInfo w() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.f285k) {
                remoteUserInfo = this.f291q;
            }
            return remoteUserInfo;
        }

        void x(int i4, int i10) {
            if (this.C == 2) {
                VolumeProviderCompat volumeProviderCompat = this.E;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.onAdjustVolume(i4);
                    return;
                }
                return;
            }
            this.f283i.adjustStreamVolume(this.D, i4, i10);
        }

        RemoteControlClient.MetadataEditor y(Bundle bundle) {
            RemoteControlClient.MetadataEditor editMetadata = this.f284j.editMetadata(true);
            if (bundle == null) {
                return editMetadata;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ART)) {
                Bitmap bitmap = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ART);
                if (bitmap != null) {
                    bitmap = bitmap.copy(bitmap.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap);
            } else if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ART)) {
                Bitmap bitmap2 = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ALBUM_ART);
                if (bitmap2 != null) {
                    bitmap2 = bitmap2.copy(bitmap2.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap2);
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
                editMetadata.putString(1, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST)) {
                editMetadata.putString(13, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
                editMetadata.putString(2, bundle.getString(MediaMetadataCompat.METADATA_KEY_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_AUTHOR)) {
                editMetadata.putString(3, bundle.getString(MediaMetadataCompat.METADATA_KEY_AUTHOR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPILATION)) {
                editMetadata.putString(15, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPILATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPOSER)) {
                editMetadata.putString(4, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPOSER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DATE)) {
                editMetadata.putString(5, bundle.getString(MediaMetadataCompat.METADATA_KEY_DATE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER)) {
                editMetadata.putLong(14, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                editMetadata.putLong(9, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DURATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_GENRE)) {
                editMetadata.putString(6, bundle.getString(MediaMetadataCompat.METADATA_KEY_GENRE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
                editMetadata.putString(7, bundle.getString(MediaMetadataCompat.METADATA_KEY_TITLE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER)) {
                editMetadata.putLong(0, bundle.getLong(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_WRITER)) {
                editMetadata.putString(11, bundle.getString(MediaMetadataCompat.METADATA_KEY_WRITER));
            }
            return editMetadata;
        }

        String z(int i4) {
            String nameForUid = this.f275a.getPackageManager().getNameForUid(i4);
            return TextUtils.isEmpty(nameForUid) ? MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER : nameForUid;
        }
    }

    /* loaded from: classes.dex */
    public interface j {
        void a();
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str) {
        this(context, str, null, null);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Bundle G(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        c(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e(f222d, "Could not unparcel the data.");
            return null;
        }
    }

    @RequiresApi(21)
    private MediaSession b(Context context, String str, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 29) {
            return new MediaSession(context, str, bundle);
        }
        return new MediaSession(context, str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static void c(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public static MediaSessionCompat d(Context context, Object obj) {
        c fVar;
        int i4 = Build.VERSION.SDK_INT;
        if (context == null || obj == null) {
            return null;
        }
        if (i4 >= 29) {
            fVar = new h(obj);
        } else if (i4 >= 28) {
            fVar = new g(obj);
        } else {
            fVar = new f(obj);
        }
        return new MediaSessionCompat(context, fVar);
    }

    static PlaybackStateCompat k(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat != null) {
            long j4 = -1;
            if (playbackStateCompat.getPosition() == -1) {
                return playbackStateCompat;
            }
            if (playbackStateCompat.getState() == 3 || playbackStateCompat.getState() == 4 || playbackStateCompat.getState() == 5) {
                long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
                if (lastPositionUpdateTime > 0) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long playbackSpeed = (playbackStateCompat.getPlaybackSpeed() * ((float) (elapsedRealtime - lastPositionUpdateTime))) + playbackStateCompat.getPosition();
                    if (mediaMetadataCompat != null && mediaMetadataCompat.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                        j4 = mediaMetadataCompat.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
                    }
                    return new PlaybackStateCompat.c(playbackStateCompat).k(playbackStateCompat.getState(), (j4 < 0 || playbackSpeed <= j4) ? playbackSpeed < 0 ? 0L : playbackSpeed : j4, playbackStateCompat.getPlaybackSpeed(), elapsedRealtime).c();
                }
                return playbackStateCompat;
            }
            return playbackStateCompat;
        }
        return playbackStateCompat;
    }

    public void A(List<QueueItem> list) {
        if (list != null) {
            HashSet hashSet = new HashSet();
            for (QueueItem queueItem : list) {
                if (queueItem != null) {
                    if (hashSet.contains(Long.valueOf(queueItem.getQueueId()))) {
                        Log.e(f222d, "Found duplicate queue id: " + queueItem.getQueueId(), new IllegalArgumentException("id of each queue item should be unique"));
                    }
                    hashSet.add(Long.valueOf(queueItem.getQueueId()));
                } else {
                    throw new IllegalArgumentException("queue shouldn't have null items");
                }
            }
        }
        this.f245a.i(list);
    }

    public void B(CharSequence charSequence) {
        this.f245a.f(charSequence);
    }

    public void C(int i4) {
        this.f245a.h(i4);
    }

    public void D(int i4) {
        this.f245a.j(i4);
    }

    public void E(PendingIntent pendingIntent) {
        this.f245a.m(pendingIntent);
    }

    public void F(int i4) {
        this.f245a.r(i4);
    }

    public void a(j jVar) {
        if (jVar != null) {
            this.f247c.add(jVar);
            return;
        }
        throw new IllegalArgumentException("Listener may not be null");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String e() {
        return this.f245a.l();
    }

    public MediaControllerCompat f() {
        return this.f246b;
    }

    @NonNull
    public final MediaSessionManager.RemoteUserInfo g() {
        return this.f245a.w();
    }

    public Object h() {
        return this.f245a.u();
    }

    public Object i() {
        return this.f245a.q();
    }

    public Token j() {
        return this.f245a.b();
    }

    public boolean l() {
        return this.f245a.a();
    }

    public void m() {
        this.f245a.release();
    }

    public void n(j jVar) {
        if (jVar != null) {
            this.f247c.remove(jVar);
            return;
        }
        throw new IllegalArgumentException("Listener may not be null");
    }

    public void o(String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.f245a.d(str, bundle);
            return;
        }
        throw new IllegalArgumentException("event cannot be null or empty");
    }

    public void p(boolean z9) {
        this.f245a.s(z9);
        Iterator<j> it = this.f247c.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public void q(b bVar) {
        r(bVar, null);
    }

    public void r(b bVar, Handler handler) {
        if (bVar == null) {
            this.f245a.e(null, null);
            return;
        }
        c cVar = this.f245a;
        if (handler == null) {
            handler = new Handler();
        }
        cVar.e(bVar, handler);
    }

    public void s(boolean z9) {
        this.f245a.F(z9);
    }

    public void t(Bundle bundle) {
        this.f245a.setExtras(bundle);
    }

    public void u(int i4) {
        this.f245a.setFlags(i4);
    }

    public void v(PendingIntent pendingIntent) {
        this.f245a.p(pendingIntent);
    }

    public void w(MediaMetadataCompat mediaMetadataCompat) {
        this.f245a.g(mediaMetadataCompat);
    }

    public void x(PlaybackStateCompat playbackStateCompat) {
        this.f245a.k(playbackStateCompat);
    }

    public void y(int i4) {
        this.f245a.n(i4);
    }

    public void z(VolumeProviderCompat volumeProviderCompat) {
        if (volumeProviderCompat != null) {
            this.f245a.v(volumeProviderCompat);
            return;
        }
        throw new IllegalArgumentException("volumeProvider may not be null!");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();
        ResultReceiver mResultReceiver;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<ResultReceiverWrapper> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public ResultReceiverWrapper[] newArray(int i4) {
                return new ResultReceiverWrapper[i4];
            }
        }

        public ResultReceiverWrapper(@NonNull ResultReceiver resultReceiver) {
            this.mResultReceiver = resultReceiver;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            this.mResultReceiver.writeToParcel(parcel, i4);
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.mResultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle) {
        this(context, str, componentName, pendingIntent, bundle, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable VersionedParcelable versionedParcelable) {
        this.f247c = new ArrayList<>();
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                if (componentName == null && (componentName = MediaButtonReceiver.getMediaButtonReceiverComponent(context)) == null) {
                    Log.w(f222d, "Couldn't find a unique registered media button receiver in the given context.");
                }
                if (componentName != null && pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName);
                    pendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
                }
                int i4 = Build.VERSION.SDK_INT;
                MediaSession b10 = b(context, str, bundle);
                if (i4 >= 29) {
                    this.f245a = new h(b10, versionedParcelable, bundle);
                } else if (i4 >= 28) {
                    this.f245a = new g(b10, versionedParcelable, bundle);
                } else {
                    this.f245a = new f(b10, versionedParcelable, bundle);
                }
                r(new a(), new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
                this.f245a.p(pendingIntent);
                this.f246b = new MediaControllerCompat(context, this);
                if (R == 0) {
                    R = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        throw new IllegalArgumentException("context must not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class f implements c {

        /* renamed from: a  reason: collision with root package name */
        final MediaSession f259a;

        /* renamed from: b  reason: collision with root package name */
        final Token f260b;

        /* renamed from: d  reason: collision with root package name */
        Bundle f262d;

        /* renamed from: g  reason: collision with root package name */
        PlaybackStateCompat f265g;

        /* renamed from: h  reason: collision with root package name */
        List<QueueItem> f266h;

        /* renamed from: i  reason: collision with root package name */
        MediaMetadataCompat f267i;

        /* renamed from: j  reason: collision with root package name */
        int f268j;

        /* renamed from: k  reason: collision with root package name */
        boolean f269k;

        /* renamed from: l  reason: collision with root package name */
        int f270l;

        /* renamed from: m  reason: collision with root package name */
        int f271m;
        @GuardedBy("mLock")

        /* renamed from: n  reason: collision with root package name */
        b f272n;
        @GuardedBy("mLock")

        /* renamed from: o  reason: collision with root package name */
        MediaSessionManager.RemoteUserInfo f273o;

        /* renamed from: c  reason: collision with root package name */
        final Object f261c = new Object();

        /* renamed from: e  reason: collision with root package name */
        boolean f263e = false;

        /* renamed from: f  reason: collision with root package name */
        final RemoteCallbackList<android.support.v4.media.session.a> f264f = new RemoteCallbackList<>();

        /* loaded from: classes.dex */
        class a extends b.AbstractBinderC0009b {
            a() {
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo A1() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void E(float f10) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void E0(long j4) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void F(boolean z9) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void F0(boolean z9) throws RemoteException {
            }

            @Override // android.support.v4.media.session.b
            public List<QueueItem> G() {
                return null;
            }

            @Override // android.support.v4.media.session.b
            public void H(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean I() {
                return false;
            }

            @Override // android.support.v4.media.session.b
            public void J(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent K() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void Q0(android.support.v4.media.session.a aVar) {
                if (f.this.f263e) {
                    return;
                }
                f.this.f264f.register(aVar, new MediaSessionManager.RemoteUserInfo(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, Binder.getCallingPid(), Binder.getCallingUid()));
            }

            @Override // android.support.v4.media.session.b
            public void R0(RatingCompat ratingCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void S0(int i4, int i10, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void T(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean V0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void W(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void W0(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void X(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void Y(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void a() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat c() {
                f fVar = f.this;
                return MediaSessionCompat.k(fVar.f265g, fVar.f267i);
            }

            @Override // android.support.v4.media.session.b
            public void d() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void e1(android.support.v4.media.session.a aVar) {
                f.this.f264f.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public String f() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean f0(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void g0(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public long getFlags() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public String getPackageName() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void h1() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void i0(MediaDescriptionCompat mediaDescriptionCompat, int i4) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void j(int i4) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public int k() {
                return f.this.f270l;
            }

            @Override // android.support.v4.media.session.b
            public int l() {
                return f.this.f268j;
            }

            @Override // android.support.v4.media.session.b
            public Bundle m() {
                if (f.this.f262d == null) {
                    return null;
                }
                return new Bundle(f.this.f262d);
            }

            @Override // android.support.v4.media.session.b
            public void next() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public int p() {
                return f.this.f271m;
            }

            @Override // android.support.v4.media.session.b
            public void pause() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void previous() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean q() {
                return f.this.f269k;
            }

            @Override // android.support.v4.media.session.b
            public void q1(int i4, int i10, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void r(int i4) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void s0(int i4) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void seekTo(long j4) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void stop() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void t(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void u(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public CharSequence v() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void y0(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void z0() throws RemoteException {
                throw new AssertionError();
            }
        }

        f(MediaSession mediaSession, VersionedParcelable versionedParcelable, Bundle bundle) {
            this.f259a = mediaSession;
            this.f260b = new Token(mediaSession.getSessionToken(), new a(), versionedParcelable);
            this.f262d = bundle;
            setFlags(3);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void F(boolean z9) {
            if (this.f269k != z9) {
                this.f269k = z9;
                for (int beginBroadcast = this.f264f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f264f.getBroadcastItem(beginBroadcast).j1(z9);
                    } catch (RemoteException unused) {
                    }
                }
                this.f264f.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public boolean a() {
            return this.f259a.isActive();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public Token b() {
            return this.f260b;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public PlaybackStateCompat c() {
            return this.f265g;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void d(String str, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 23) {
                for (int beginBroadcast = this.f264f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f264f.getBroadcastItem(beginBroadcast).G1(str, bundle);
                    } catch (RemoteException unused) {
                    }
                }
                this.f264f.finishBroadcast();
            }
            this.f259a.sendSessionEvent(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void e(b bVar, Handler handler) {
            synchronized (this.f261c) {
                this.f272n = bVar;
                this.f259a.setCallback(bVar == null ? null : bVar.f250b, handler);
                if (bVar != null) {
                    bVar.m0(this, handler);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void f(CharSequence charSequence) {
            this.f259a.setQueueTitle(charSequence);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void g(MediaMetadataCompat mediaMetadataCompat) {
            this.f267i = mediaMetadataCompat;
            this.f259a.setMetadata(mediaMetadataCompat == null ? null : (MediaMetadata) mediaMetadataCompat.getMediaMetadata());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void h(int i4) {
            if (Build.VERSION.SDK_INT < 22) {
                this.f268j = i4;
            } else {
                this.f259a.setRatingType(i4);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void i(List<QueueItem> list) {
            this.f266h = list;
            if (list == null) {
                this.f259a.setQueue(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (QueueItem queueItem : list) {
                arrayList.add((MediaSession.QueueItem) queueItem.getQueueItem());
            }
            this.f259a.setQueue(arrayList);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void j(int i4) {
            if (this.f270l != i4) {
                this.f270l = i4;
                for (int beginBroadcast = this.f264f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f264f.getBroadcastItem(beginBroadcast).i(i4);
                    } catch (RemoteException unused) {
                    }
                }
                this.f264f.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void k(PlaybackStateCompat playbackStateCompat) {
            this.f265g = playbackStateCompat;
            for (int beginBroadcast = this.f264f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.f264f.getBroadcastItem(beginBroadcast).F1(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f264f.finishBroadcast();
            this.f259a.setPlaybackState(playbackStateCompat == null ? null : (PlaybackState) playbackStateCompat.getPlaybackState());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public String l() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            try {
                return (String) this.f259a.getClass().getMethod("getCallingPackage", new Class[0]).invoke(this.f259a, new Object[0]);
            } catch (Exception e4) {
                Log.e(MediaSessionCompat.f222d, "Cannot execute MediaSession.getCallingPackage()", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void m(PendingIntent pendingIntent) {
            this.f259a.setSessionActivity(pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void n(int i4) {
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setLegacyStreamType(i4);
            this.f259a.setPlaybackToLocal(builder.build());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public b o() {
            b bVar;
            synchronized (this.f261c) {
                bVar = this.f272n;
            }
            return bVar;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void p(PendingIntent pendingIntent) {
            this.f259a.setMediaButtonReceiver(pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public Object q() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void r(int i4) {
            if (this.f271m != i4) {
                this.f271m = i4;
                for (int beginBroadcast = this.f264f.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f264f.getBroadcastItem(beginBroadcast).v0(i4);
                    } catch (RemoteException unused) {
                    }
                }
                this.f264f.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void release() {
            this.f263e = true;
            this.f264f.kill();
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    Field declaredField = this.f259a.getClass().getDeclaredField("mCallback");
                    declaredField.setAccessible(true);
                    Handler handler = (Handler) declaredField.get(this.f259a);
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                } catch (Exception e4) {
                    Log.w(MediaSessionCompat.f222d, "Exception happened while accessing MediaSession.mCallback.", e4);
                }
            }
            this.f259a.setCallback(null);
            this.f259a.release();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void s(boolean z9) {
            this.f259a.setActive(z9);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void setExtras(Bundle bundle) {
            this.f259a.setExtras(bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        @SuppressLint({"WrongConstant"})
        public void setFlags(int i4) {
            this.f259a.setFlags(i4 | 1 | 2);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void t(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.f261c) {
                this.f273o = remoteUserInfo;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public Object u() {
            return this.f259a;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void v(VolumeProviderCompat volumeProviderCompat) {
            this.f259a.setPlaybackToRemote((VolumeProvider) volumeProviderCompat.getVolumeProvider());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public MediaSessionManager.RemoteUserInfo w() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.f261c) {
                remoteUserInfo = this.f273o;
            }
            return remoteUserInfo;
        }

        f(Object obj) {
            if (obj instanceof MediaSession) {
                MediaSession mediaSession = (MediaSession) obj;
                this.f259a = mediaSession;
                this.f260b = new Token(mediaSession.getSessionToken(), new a());
                this.f262d = null;
                setFlags(3);
                return;
            }
            throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
        }
    }

    private MediaSessionCompat(Context context, c cVar) {
        this.f247c = new ArrayList<>();
        this.f245a = cVar;
        this.f246b = new MediaControllerCompat(context, this);
    }
}
