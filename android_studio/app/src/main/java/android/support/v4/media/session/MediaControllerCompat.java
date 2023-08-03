package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.media.AudioAttributesCompat;
import androidx.media.R;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class MediaControllerCompat {

    /* renamed from: d  reason: collision with root package name */
    static final String f173d = "MediaControllerCompat";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: e  reason: collision with root package name */
    public static final String f174e = "android.support.v4.media.session.command.GET_EXTRA_BINDER";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: f  reason: collision with root package name */
    public static final String f175f = "android.support.v4.media.session.command.ADD_QUEUE_ITEM";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: g  reason: collision with root package name */
    public static final String f176g = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: h  reason: collision with root package name */
    public static final String f177h = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: i  reason: collision with root package name */
    public static final String f178i = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: j  reason: collision with root package name */
    public static final String f179j = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION";
    @RestrictTo({RestrictTo.Scope.LIBRARY})

    /* renamed from: k  reason: collision with root package name */
    public static final String f180k = "android.support.v4.media.session.command.ARGUMENT_INDEX";

    /* renamed from: a  reason: collision with root package name */
    private final b f181a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaSessionCompat.Token f182b;

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<a, Boolean> f183c = new ConcurrentHashMap<>();

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class MediaControllerImplApi21 implements b {

        /* renamed from: a  reason: collision with root package name */
        protected final MediaController f184a;

        /* renamed from: b  reason: collision with root package name */
        final Object f185b = new Object();
        @GuardedBy("mLock")

        /* renamed from: c  reason: collision with root package name */
        private final List<a> f186c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private HashMap<a, a> f187d = new HashMap<>();

        /* renamed from: e  reason: collision with root package name */
        private Bundle f188e;

        /* renamed from: f  reason: collision with root package name */
        final MediaSessionCompat.Token f189f;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference<MediaControllerImplApi21> mMediaControllerImpl;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.mMediaControllerImpl = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i4, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f185b) {
                    mediaControllerImplApi21.f189f.setExtraBinder(b.AbstractBinderC0009b.s(BundleCompat.getBinder(bundle, MediaSessionCompat.K)));
                    mediaControllerImplApi21.f189f.setSession2Token(ParcelUtils.getVersionedParcelable(bundle, MediaSessionCompat.L));
                    mediaControllerImplApi21.s();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void M0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void R(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void Z0(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void h0() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void j0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void p1(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }
        }

        MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f189f = token;
            this.f184a = new MediaController(context, (MediaSession.Token) token.getToken());
            if (token.getExtraBinder() == null) {
                w();
            }
        }

        private void w() {
            e(MediaControllerCompat.f174e, null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public List<MediaSessionCompat.QueueItem> G() {
            List<MediaSession.QueueItem> queue = this.f184a.getQueue();
            if (queue != null) {
                return MediaSessionCompat.QueueItem.fromQueueItemList(queue);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public d a() {
            MediaController.PlaybackInfo playbackInfo = this.f184a.getPlaybackInfo();
            if (playbackInfo != null) {
                return new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.wrap(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void b(a aVar) {
            this.f184a.unregisterCallback(aVar.f190a);
            synchronized (this.f185b) {
                if (this.f189f.getExtraBinder() != null) {
                    try {
                        a remove = this.f187d.remove(aVar);
                        if (remove != null) {
                            aVar.f192c = null;
                            this.f189f.getExtraBinder().e1(remove);
                        }
                    } catch (RemoteException e4) {
                        Log.e(MediaControllerCompat.f173d, "Dead object in unregisterCallback.", e4);
                    }
                } else {
                    this.f186c.remove(aVar);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public PlaybackStateCompat c() {
            if (this.f189f.getExtraBinder() != null) {
                try {
                    return this.f189f.getExtraBinder().c();
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in getPlaybackState.", e4);
                }
            }
            PlaybackState playbackState = this.f184a.getPlaybackState();
            if (playbackState != null) {
                return PlaybackStateCompat.fromPlaybackState(playbackState);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void d(MediaDescriptionCompat mediaDescriptionCompat, int i4) {
            if ((getFlags() & 4) != 0) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaControllerCompat.f179j, mediaDescriptionCompat);
                bundle.putInt(MediaControllerCompat.f180k, i4);
                e(MediaControllerCompat.f176g, bundle, null);
                return;
            }
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void e(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f184a.sendCommand(str, bundle, resultReceiver);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public PendingIntent f() {
            return this.f184a.getSessionActivity();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public e g() {
            return new f(this.f184a.getTransportControls());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public Bundle getExtras() {
            return this.f184a.getExtras();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public long getFlags() {
            return this.f184a.getFlags();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public MediaMetadataCompat getMetadata() {
            MediaMetadata metadata = this.f184a.getMetadata();
            if (metadata != null) {
                return MediaMetadataCompat.fromMediaMetadata(metadata);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public String getPackageName() {
            return this.f184a.getPackageName();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void h(int i4, int i10) {
            this.f184a.adjustVolume(i4, i10);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean i(KeyEvent keyEvent) {
            return this.f184a.dispatchMediaButtonEvent(keyEvent);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void j(int i4, int i10) {
            this.f184a.setVolumeTo(i4, i10);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public int k() {
            if (this.f189f.getExtraBinder() != null) {
                try {
                    return this.f189f.getExtraBinder().k();
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in getRepeatMode.", e4);
                    return -1;
                }
            }
            return -1;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public int l() {
            if (Build.VERSION.SDK_INT < 22 && this.f189f.getExtraBinder() != null) {
                try {
                    return this.f189f.getExtraBinder().l();
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in getRatingType.", e4);
                }
            }
            return this.f184a.getRatingType();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public Bundle m() {
            if (this.f188e != null) {
                return new Bundle(this.f188e);
            }
            if (Build.VERSION.SDK_INT >= 29) {
                this.f188e = this.f184a.getSessionInfo();
            } else if (this.f189f.getExtraBinder() != null) {
                try {
                    this.f188e = this.f189f.getExtraBinder().m();
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in getSessionInfo.", e4);
                    this.f188e = Bundle.EMPTY;
                }
            }
            Bundle G = MediaSessionCompat.G(this.f188e);
            this.f188e = G;
            return G == null ? Bundle.EMPTY : new Bundle(this.f188e);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean n() {
            return this.f189f.getExtraBinder() != null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public Object o() {
            return this.f184a;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public int p() {
            if (this.f189f.getExtraBinder() != null) {
                try {
                    return this.f189f.getExtraBinder().p();
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in getShuffleMode.", e4);
                    return -1;
                }
            }
            return -1;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean q() {
            if (this.f189f.getExtraBinder() != null) {
                try {
                    return this.f189f.getExtraBinder().q();
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in isCaptioningEnabled.", e4);
                    return false;
                }
            }
            return false;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void r(a aVar, Handler handler) {
            this.f184a.registerCallback(aVar.f190a, handler);
            synchronized (this.f185b) {
                if (this.f189f.getExtraBinder() != null) {
                    a aVar2 = new a(aVar);
                    this.f187d.put(aVar, aVar2);
                    aVar.f192c = aVar2;
                    try {
                        this.f189f.getExtraBinder().Q0(aVar2);
                        aVar.n(13, null, null);
                    } catch (RemoteException e4) {
                        Log.e(MediaControllerCompat.f173d, "Dead object in registerCallback.", e4);
                    }
                } else {
                    aVar.f192c = null;
                    this.f186c.add(aVar);
                }
            }
        }

        @GuardedBy("mLock")
        void s() {
            if (this.f189f.getExtraBinder() == null) {
                return;
            }
            for (a aVar : this.f186c) {
                a aVar2 = new a(aVar);
                this.f187d.put(aVar, aVar2);
                aVar.f192c = aVar2;
                try {
                    this.f189f.getExtraBinder().Q0(aVar2);
                    aVar.n(13, null, null);
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in registerCallback.", e4);
                }
            }
            this.f186c.clear();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void t(MediaDescriptionCompat mediaDescriptionCompat) {
            if ((getFlags() & 4) != 0) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaControllerCompat.f179j, mediaDescriptionCompat);
                e(MediaControllerCompat.f177h, bundle, null);
                return;
            }
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void u(MediaDescriptionCompat mediaDescriptionCompat) {
            if ((getFlags() & 4) != 0) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaControllerCompat.f179j, mediaDescriptionCompat);
                e(MediaControllerCompat.f175f, bundle, null);
                return;
            }
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public CharSequence v() {
            return this.f184a.getQueueTitle();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final MediaController.Callback f190a = new C0005a(this);

        /* renamed from: b  reason: collision with root package name */
        b f191b;

        /* renamed from: c  reason: collision with root package name */
        android.support.v4.media.session.a f192c;

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0005a extends MediaController.Callback {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f193a;

            C0005a(a aVar) {
                this.f193a = new WeakReference<>(aVar);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                a aVar = this.f193a.get();
                if (aVar != null) {
                    aVar.b(new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.wrap(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.c(bundle);
                a aVar = this.f193a.get();
                if (aVar != null) {
                    aVar.d(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                a aVar = this.f193a.get();
                if (aVar != null) {
                    aVar.e(MediaMetadataCompat.fromMediaMetadata(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                a aVar = this.f193a.get();
                if (aVar == null || aVar.f192c != null) {
                    return;
                }
                aVar.f(PlaybackStateCompat.fromPlaybackState(playbackState));
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> list) {
                a aVar = this.f193a.get();
                if (aVar != null) {
                    aVar.g(MediaSessionCompat.QueueItem.fromQueueItemList(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                a aVar = this.f193a.get();
                if (aVar != null) {
                    aVar.h(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                a aVar = this.f193a.get();
                if (aVar != null) {
                    aVar.j();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.c(bundle);
                a aVar = this.f193a.get();
                if (aVar != null) {
                    if (aVar.f192c == null || Build.VERSION.SDK_INT >= 23) {
                        aVar.k(str, bundle);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class b extends Handler {

            /* renamed from: c  reason: collision with root package name */
            private static final int f194c = 1;

            /* renamed from: d  reason: collision with root package name */
            private static final int f195d = 2;

            /* renamed from: e  reason: collision with root package name */
            private static final int f196e = 3;

            /* renamed from: f  reason: collision with root package name */
            private static final int f197f = 4;

            /* renamed from: g  reason: collision with root package name */
            private static final int f198g = 5;

            /* renamed from: h  reason: collision with root package name */
            private static final int f199h = 6;

            /* renamed from: i  reason: collision with root package name */
            private static final int f200i = 7;

            /* renamed from: j  reason: collision with root package name */
            private static final int f201j = 8;

            /* renamed from: k  reason: collision with root package name */
            private static final int f202k = 9;

            /* renamed from: l  reason: collision with root package name */
            private static final int f203l = 11;

            /* renamed from: m  reason: collision with root package name */
            private static final int f204m = 12;

            /* renamed from: n  reason: collision with root package name */
            private static final int f205n = 13;

            /* renamed from: a  reason: collision with root package name */
            boolean f206a;

            b(Looper looper) {
                super(looper);
                this.f206a = false;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (this.f206a) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.c(data);
                            a.this.k((String) message.obj, data);
                            return;
                        case 2:
                            a.this.f((PlaybackStateCompat) message.obj);
                            return;
                        case 3:
                            a.this.e((MediaMetadataCompat) message.obj);
                            return;
                        case 4:
                            a.this.b((d) message.obj);
                            return;
                        case 5:
                            a.this.g((List) message.obj);
                            return;
                        case 6:
                            a.this.h((CharSequence) message.obj);
                            return;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.c(bundle);
                            a.this.d(bundle);
                            return;
                        case 8:
                            a.this.j();
                            return;
                        case 9:
                            a.this.i(((Integer) message.obj).intValue());
                            return;
                        case 10:
                        default:
                            return;
                        case 11:
                            a.this.c(((Boolean) message.obj).booleanValue());
                            return;
                        case 12:
                            a.this.m(((Integer) message.obj).intValue());
                            return;
                        case 13:
                            a.this.l();
                            return;
                    }
                }
            }
        }

        /* loaded from: classes.dex */
        private static class c extends a.b {

            /* renamed from: q  reason: collision with root package name */
            private final WeakReference<a> f208q;

            c(a aVar) {
                this.f208q = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.a
            public void F1(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(2, playbackStateCompat, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void G1(String str, Bundle bundle) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(1, str, bundle);
                }
            }

            public void M0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(4, parcelableVolumeInfo != null ? new d(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume) : null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void P() throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(13, null, null);
                }
            }

            public void R(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(5, list, null);
                }
            }

            public void Z0(Bundle bundle) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(7, bundle, null);
                }
            }

            public void h0() throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void i(int i4) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(9, Integer.valueOf(i4), null);
                }
            }

            public void j0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(3, mediaMetadataCompat, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void j1(boolean z9) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(11, Boolean.valueOf(z9), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void o1(boolean z9) throws RemoteException {
            }

            public void p1(CharSequence charSequence) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void v0(int i4) throws RemoteException {
                a aVar = this.f208q.get();
                if (aVar != null) {
                    aVar.n(12, Integer.valueOf(i4), null);
                }
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public android.support.v4.media.session.a a() {
            return this.f192c;
        }

        public void b(d dVar) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            n(8, null, null);
        }

        public void c(boolean z9) {
        }

        public void d(Bundle bundle) {
        }

        public void e(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void f(PlaybackStateCompat playbackStateCompat) {
        }

        public void g(List<MediaSessionCompat.QueueItem> list) {
        }

        public void h(CharSequence charSequence) {
        }

        public void i(int i4) {
        }

        public void j() {
        }

        public void k(String str, Bundle bundle) {
        }

        public void l() {
        }

        public void m(int i4) {
        }

        void n(int i4, Object obj, Bundle bundle) {
            b bVar = this.f191b;
            if (bVar != null) {
                Message obtainMessage = bVar.obtainMessage(i4, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        void o(Handler handler) {
            if (handler == null) {
                b bVar = this.f191b;
                if (bVar != null) {
                    bVar.f206a = false;
                    bVar.removeCallbacksAndMessages(null);
                    this.f191b = null;
                    return;
                }
                return;
            }
            b bVar2 = new b(handler.getLooper());
            this.f191b = bVar2;
            bVar2.f206a = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        List<MediaSessionCompat.QueueItem> G();

        d a();

        void b(a aVar);

        PlaybackStateCompat c();

        void d(MediaDescriptionCompat mediaDescriptionCompat, int i4);

        void e(String str, Bundle bundle, ResultReceiver resultReceiver);

        PendingIntent f();

        e g();

        Bundle getExtras();

        long getFlags();

        MediaMetadataCompat getMetadata();

        String getPackageName();

        void h(int i4, int i10);

        boolean i(KeyEvent keyEvent);

        void j(int i4, int i10);

        int k();

        int l();

        Bundle m();

        boolean n();

        Object o();

        int p();

        boolean q();

        void r(a aVar, Handler handler);

        void t(MediaDescriptionCompat mediaDescriptionCompat);

        void u(MediaDescriptionCompat mediaDescriptionCompat);

        CharSequence v();
    }

    /* loaded from: classes.dex */
    static class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private android.support.v4.media.session.b f209a;

        /* renamed from: b  reason: collision with root package name */
        private e f210b;

        /* renamed from: c  reason: collision with root package name */
        private Bundle f211c;

        c(MediaSessionCompat.Token token) {
            this.f209a = b.AbstractBinderC0009b.s((IBinder) token.getToken());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public List<MediaSessionCompat.QueueItem> G() {
            try {
                return this.f209a.G();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getQueue.", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public d a() {
            try {
                ParcelableVolumeInfo A1 = this.f209a.A1();
                return new d(A1.volumeType, A1.audioStream, A1.controlType, A1.maxVolume, A1.currentVolume);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getPlaybackInfo.", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void b(a aVar) {
            if (aVar != null) {
                try {
                    this.f209a.e1(aVar.f192c);
                    this.f209a.asBinder().unlinkToDeath(aVar, 0);
                    return;
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in unregisterCallback.", e4);
                    return;
                }
            }
            throw new IllegalArgumentException("callback may not be null.");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public PlaybackStateCompat c() {
            try {
                return this.f209a.c();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getPlaybackState.", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void d(MediaDescriptionCompat mediaDescriptionCompat, int i4) {
            try {
                if ((this.f209a.getFlags() & 4) != 0) {
                    this.f209a.i0(mediaDescriptionCompat, i4);
                    return;
                }
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in addQueueItemAt.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void e(String str, Bundle bundle, ResultReceiver resultReceiver) {
            try {
                this.f209a.y0(str, bundle, resultReceiver == null ? null : new MediaSessionCompat.ResultReceiverWrapper(resultReceiver));
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in sendCommand.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public PendingIntent f() {
            try {
                return this.f209a.K();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getSessionActivity.", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public e g() {
            if (this.f210b == null) {
                this.f210b = new g(this.f209a);
            }
            return this.f210b;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public Bundle getExtras() {
            try {
                return this.f209a.getExtras();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getExtras.", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public long getFlags() {
            try {
                return this.f209a.getFlags();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getFlags.", e4);
                return 0L;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public MediaMetadataCompat getMetadata() {
            try {
                return this.f209a.getMetadata();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getMetadata.", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public String getPackageName() {
            try {
                return this.f209a.getPackageName();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getPackageName.", e4);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void h(int i4, int i10) {
            try {
                this.f209a.q1(i4, i10, null);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in adjustVolume.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean i(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f209a.f0(keyEvent);
                    return false;
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in dispatchMediaButtonEvent.", e4);
                    return false;
                }
            }
            throw new IllegalArgumentException("event may not be null.");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void j(int i4, int i10) {
            try {
                this.f209a.S0(i4, i10, null);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in setVolumeTo.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public int k() {
            try {
                return this.f209a.k();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getRepeatMode.", e4);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public int l() {
            try {
                return this.f209a.l();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getRatingType.", e4);
                return 0;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public Bundle m() {
            try {
                this.f211c = this.f209a.m();
            } catch (RemoteException e4) {
                Log.d(MediaControllerCompat.f173d, "Dead object in getSessionInfo.", e4);
            }
            Bundle G = MediaSessionCompat.G(this.f211c);
            this.f211c = G;
            return G == null ? Bundle.EMPTY : new Bundle(this.f211c);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean n() {
            return true;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public Object o() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public int p() {
            try {
                return this.f209a.p();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getShuffleMode.", e4);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean q() {
            try {
                return this.f209a.q();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in isCaptioningEnabled.", e4);
                return false;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void r(a aVar, Handler handler) {
            if (aVar != null) {
                try {
                    this.f209a.asBinder().linkToDeath(aVar, 0);
                    this.f209a.Q0(aVar.f192c);
                    aVar.n(13, null, null);
                    return;
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in registerCallback.", e4);
                    aVar.n(8, null, null);
                    return;
                }
            }
            throw new IllegalArgumentException("callback may not be null.");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void t(MediaDescriptionCompat mediaDescriptionCompat) {
            try {
                if ((this.f209a.getFlags() & 4) != 0) {
                    this.f209a.t(mediaDescriptionCompat);
                    return;
                }
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in removeQueueItem.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public void u(MediaDescriptionCompat mediaDescriptionCompat) {
            try {
                if ((this.f209a.getFlags() & 4) != 0) {
                    this.f209a.u(mediaDescriptionCompat);
                    return;
                }
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in addQueueItem.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public CharSequence v() {
            try {
                return this.f209a.v();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in getQueueTitle.", e4);
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: f  reason: collision with root package name */
        public static final int f212f = 1;

        /* renamed from: g  reason: collision with root package name */
        public static final int f213g = 2;

        /* renamed from: a  reason: collision with root package name */
        private final int f214a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioAttributesCompat f215b;

        /* renamed from: c  reason: collision with root package name */
        private final int f216c;

        /* renamed from: d  reason: collision with root package name */
        private final int f217d;

        /* renamed from: e  reason: collision with root package name */
        private final int f218e;

        d(int i4, int i10, int i11, int i12, int i13) {
            this(i4, new AudioAttributesCompat.Builder().setLegacyStreamType(i10).build(), i11, i12, i13);
        }

        @NonNull
        public AudioAttributesCompat a() {
            return this.f215b;
        }

        @Deprecated
        public int b() {
            return this.f215b.getLegacyStreamType();
        }

        public int c() {
            return this.f218e;
        }

        public int d() {
            return this.f217d;
        }

        public int e() {
            return this.f214a;
        }

        public int f() {
            return this.f216c;
        }

        d(int i4, @NonNull AudioAttributesCompat audioAttributesCompat, int i10, int i11, int i12) {
            this.f214a = i4;
            this.f215b = audioAttributesCompat;
            this.f216c = i10;
            this.f217d = i11;
            this.f218e = i12;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        public static final String f219a = "android.media.session.extra.LEGACY_STREAM_TYPE";

        e() {
        }

        public abstract void a();

        public abstract void b();

        public abstract void c();

        public abstract void d(String str, Bundle bundle);

        public abstract void e(String str, Bundle bundle);

        public abstract void f(Uri uri, Bundle bundle);

        public abstract void g();

        public abstract void h(String str, Bundle bundle);

        public abstract void i(String str, Bundle bundle);

        public abstract void j(Uri uri, Bundle bundle);

        public abstract void k();

        public abstract void l(long j4);

        public abstract void m(PlaybackStateCompat.CustomAction customAction, Bundle bundle);

        public abstract void n(String str, Bundle bundle);

        public abstract void o(boolean z9);

        public void p(float f10) {
        }

        public abstract void q(RatingCompat ratingCompat);

        public abstract void r(RatingCompat ratingCompat, Bundle bundle);

        public abstract void s(int i4);

        public abstract void t(int i4);

        public abstract void u();

        public abstract void v();

        public abstract void w(long j4);

        public abstract void x();
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class f extends e {

        /* renamed from: b  reason: collision with root package name */
        protected final MediaController.TransportControls f220b;

        f(MediaController.TransportControls transportControls) {
            this.f220b = transportControls;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void a() {
            this.f220b.fastForward();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void b() {
            this.f220b.pause();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void c() {
            this.f220b.play();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void d(String str, Bundle bundle) {
            this.f220b.playFromMediaId(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void e(String str, Bundle bundle) {
            this.f220b.playFromSearch(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void f(Uri uri, Bundle bundle) {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f220b.playFromUri(uri, bundle);
            } else if (uri != null && !Uri.EMPTY.equals(uri)) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable(MediaSessionCompat.C, uri);
                bundle2.putBundle(MediaSessionCompat.F, bundle);
                n(MediaSessionCompat.f235q, bundle2);
            } else {
                throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri.");
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void g() {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f220b.prepare();
            } else {
                n(MediaSessionCompat.f236r, null);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void h(String str, Bundle bundle) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f220b.prepareFromMediaId(str, bundle);
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaSessionCompat.A, str);
            bundle2.putBundle(MediaSessionCompat.F, bundle);
            n(MediaSessionCompat.f237s, bundle2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void i(String str, Bundle bundle) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f220b.prepareFromSearch(str, bundle);
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaSessionCompat.B, str);
            bundle2.putBundle(MediaSessionCompat.F, bundle);
            n(MediaSessionCompat.f238t, bundle2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void j(Uri uri, Bundle bundle) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f220b.prepareFromUri(uri, bundle);
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MediaSessionCompat.C, uri);
            bundle2.putBundle(MediaSessionCompat.F, bundle);
            n(MediaSessionCompat.f239u, bundle2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void k() {
            this.f220b.rewind();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void l(long j4) {
            this.f220b.seekTo(j4);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void m(PlaybackStateCompat.CustomAction customAction, Bundle bundle) {
            MediaControllerCompat.G(customAction.getAction(), bundle);
            this.f220b.sendCustomAction(customAction.getAction(), bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void n(String str, Bundle bundle) {
            MediaControllerCompat.G(str, bundle);
            this.f220b.sendCustomAction(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void o(boolean z9) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(MediaSessionCompat.G, z9);
            n(MediaSessionCompat.f240v, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void p(float f10) {
            if (f10 != 0.0f) {
                if (Build.VERSION.SDK_INT >= 29) {
                    this.f220b.setPlaybackSpeed(f10);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putFloat(MediaSessionCompat.E, f10);
                n(MediaSessionCompat.f244z, bundle);
                return;
            }
            throw new IllegalArgumentException("speed must not be zero");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void q(RatingCompat ratingCompat) {
            this.f220b.setRating(ratingCompat != null ? (Rating) ratingCompat.getRating() : null);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void r(RatingCompat ratingCompat, Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable(MediaSessionCompat.D, ratingCompat);
            bundle2.putBundle(MediaSessionCompat.F, bundle);
            n(MediaSessionCompat.f243y, bundle2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void s(int i4) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaSessionCompat.H, i4);
            n(MediaSessionCompat.f241w, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void t(int i4) {
            Bundle bundle = new Bundle();
            bundle.putInt(MediaSessionCompat.I, i4);
            n(MediaSessionCompat.f242x, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void u() {
            this.f220b.skipToNext();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void v() {
            this.f220b.skipToPrevious();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void w(long j4) {
            this.f220b.skipToQueueItem(j4);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void x() {
            this.f220b.stop();
        }
    }

    /* loaded from: classes.dex */
    static class g extends e {

        /* renamed from: b  reason: collision with root package name */
        private android.support.v4.media.session.b f221b;

        public g(android.support.v4.media.session.b bVar) {
            this.f221b = bVar;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void a() {
            try {
                this.f221b.h1();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in fastForward.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void b() {
            try {
                this.f221b.pause();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in pause.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void c() {
            try {
                this.f221b.d();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in play.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void d(String str, Bundle bundle) {
            try {
                this.f221b.W(str, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in playFromMediaId.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void e(String str, Bundle bundle) {
            try {
                this.f221b.X(str, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in playFromSearch.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void f(Uri uri, Bundle bundle) {
            try {
                this.f221b.Y(uri, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in playFromUri.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void g() {
            try {
                this.f221b.a();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in prepare.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void h(String str, Bundle bundle) {
            try {
                this.f221b.T(str, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in prepareFromMediaId.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void i(String str, Bundle bundle) {
            try {
                this.f221b.W0(str, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in prepareFromSearch.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void j(Uri uri, Bundle bundle) {
            try {
                this.f221b.J(uri, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in prepareFromUri.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void k() {
            try {
                this.f221b.z0();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in rewind.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void l(long j4) {
            try {
                this.f221b.seekTo(j4);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in seekTo.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void m(PlaybackStateCompat.CustomAction customAction, Bundle bundle) {
            n(customAction.getAction(), bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void n(String str, Bundle bundle) {
            MediaControllerCompat.G(str, bundle);
            try {
                this.f221b.H(str, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in sendCustomAction.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void o(boolean z9) {
            try {
                this.f221b.F(z9);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in setCaptioningEnabled.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void p(float f10) {
            if (f10 != 0.0f) {
                try {
                    this.f221b.E(f10);
                    return;
                } catch (RemoteException e4) {
                    Log.e(MediaControllerCompat.f173d, "Dead object in setPlaybackSpeed.", e4);
                    return;
                }
            }
            throw new IllegalArgumentException("speed must not be zero");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void q(RatingCompat ratingCompat) {
            try {
                this.f221b.R0(ratingCompat);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in setRating.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void r(RatingCompat ratingCompat, Bundle bundle) {
            try {
                this.f221b.g0(ratingCompat, bundle);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in setRating.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void s(int i4) {
            try {
                this.f221b.j(i4);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in setRepeatMode.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void t(int i4) {
            try {
                this.f221b.r(i4);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in setShuffleMode.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void u() {
            try {
                this.f221b.next();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in skipToNext.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void v() {
            try {
                this.f221b.previous();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in skipToPrevious.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void w(long j4) {
            try {
                this.f221b.E0(j4);
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in skipToQueueItem.", e4);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public void x() {
            try {
                this.f221b.stop();
            } catch (RemoteException e4) {
                Log.e(MediaControllerCompat.f173d, "Dead object in stop.", e4);
            }
        }
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat mediaSessionCompat) {
        if (mediaSessionCompat != null) {
            MediaSessionCompat.Token j4 = mediaSessionCompat.j();
            this.f182b = j4;
            this.f181a = new MediaControllerImplApi21(context, j4);
            return;
        }
        throw new IllegalArgumentException("session must not be null");
    }

    public static void D(@NonNull Activity activity, MediaControllerCompat mediaControllerCompat) {
        activity.getWindow().getDecorView().setTag(R.id.media_controller_compat_view_tag, mediaControllerCompat);
        activity.setMediaController(mediaControllerCompat != null ? new MediaController(activity, (MediaSession.Token) mediaControllerCompat.t().getToken()) : null);
    }

    static void G(String str, Bundle bundle) {
        if (str == null) {
            return;
        }
        if (str.equals(MediaSessionCompat.f228j) || str.equals(MediaSessionCompat.f229k)) {
            if (bundle == null || !bundle.containsKey(MediaSessionCompat.f230l)) {
                throw new IllegalArgumentException("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action " + str + ".");
            }
        }
    }

    public static MediaControllerCompat g(@NonNull Activity activity) {
        Object tag = activity.getWindow().getDecorView().getTag(R.id.media_controller_compat_view_tag);
        if (tag instanceof MediaControllerCompat) {
            return (MediaControllerCompat) tag;
        }
        MediaController mediaController = activity.getMediaController();
        if (mediaController == null) {
            return null;
        }
        return new MediaControllerCompat(activity, MediaSessionCompat.Token.fromToken(mediaController.getSessionToken()));
    }

    public void A(MediaDescriptionCompat mediaDescriptionCompat) {
        this.f181a.t(mediaDescriptionCompat);
    }

    @Deprecated
    public void B(int i4) {
        MediaSessionCompat.QueueItem queueItem;
        List<MediaSessionCompat.QueueItem> m9 = m();
        if (m9 == null || i4 < 0 || i4 >= m9.size() || (queueItem = m9.get(i4)) == null) {
            return;
        }
        A(queueItem.getDescription());
    }

    public void C(@NonNull String str, @Nullable Bundle bundle, @Nullable ResultReceiver resultReceiver) {
        if (!TextUtils.isEmpty(str)) {
            this.f181a.e(str, bundle, resultReceiver);
            return;
        }
        throw new IllegalArgumentException("command must neither be null nor empty");
    }

    public void E(int i4, int i10) {
        this.f181a.j(i4, i10);
    }

    public void F(@NonNull a aVar) {
        if (aVar != null) {
            if (this.f183c.remove(aVar) == null) {
                Log.w(f173d, "the callback has never been registered");
                return;
            }
            try {
                this.f181a.b(aVar);
                return;
            } finally {
                aVar.o(null);
            }
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    public void a(MediaDescriptionCompat mediaDescriptionCompat) {
        this.f181a.u(mediaDescriptionCompat);
    }

    public void b(MediaDescriptionCompat mediaDescriptionCompat, int i4) {
        this.f181a.d(mediaDescriptionCompat, i4);
    }

    public void c(int i4, int i10) {
        this.f181a.h(i4, i10);
    }

    public boolean d(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f181a.i(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public Bundle e() {
        return this.f181a.getExtras();
    }

    public long f() {
        return this.f181a.getFlags();
    }

    public Object h() {
        return this.f181a.o();
    }

    public MediaMetadataCompat i() {
        return this.f181a.getMetadata();
    }

    public String j() {
        return this.f181a.getPackageName();
    }

    public d k() {
        return this.f181a.a();
    }

    public PlaybackStateCompat l() {
        return this.f181a.c();
    }

    public List<MediaSessionCompat.QueueItem> m() {
        return this.f181a.G();
    }

    public CharSequence n() {
        return this.f181a.v();
    }

    public int o() {
        return this.f181a.l();
    }

    public int p() {
        return this.f181a.k();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public VersionedParcelable q() {
        return this.f182b.getSession2Token();
    }

    public PendingIntent r() {
        return this.f181a.f();
    }

    @NonNull
    public Bundle s() {
        return this.f181a.m();
    }

    public MediaSessionCompat.Token t() {
        return this.f182b;
    }

    public int u() {
        return this.f181a.p();
    }

    public e v() {
        return this.f181a.g();
    }

    public boolean w() {
        return this.f181a.q();
    }

    public boolean x() {
        return this.f181a.n();
    }

    public void y(@NonNull a aVar) {
        z(aVar, null);
    }

    public void z(@NonNull a aVar, Handler handler) {
        if (aVar != null) {
            if (this.f183c.putIfAbsent(aVar, Boolean.TRUE) != null) {
                Log.w(f173d, "the callback has already been registered");
                return;
            }
            if (handler == null) {
                handler = new Handler();
            }
            aVar.o(handler);
            this.f181a.r(aVar, handler);
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat.Token token) {
        if (token != null) {
            this.f182b = token;
            this.f181a = new MediaControllerImplApi21(context, token);
            return;
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }
}
