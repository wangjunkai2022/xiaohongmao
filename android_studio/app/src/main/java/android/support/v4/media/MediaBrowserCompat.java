package android.support.v4.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* renamed from: b  reason: collision with root package name */
    static final String f65b = "MediaBrowserCompat";

    /* renamed from: c  reason: collision with root package name */
    static final boolean f66c = Log.isLoggable(f65b, 3);

    /* renamed from: d  reason: collision with root package name */
    public static final String f67d = "android.media.browse.extra.PAGE";

    /* renamed from: e  reason: collision with root package name */
    public static final String f68e = "android.media.browse.extra.PAGE_SIZE";

    /* renamed from: f  reason: collision with root package name */
    public static final String f69f = "android.media.browse.extra.MEDIA_ID";

    /* renamed from: g  reason: collision with root package name */
    public static final String f70g = "android.media.browse.extra.DOWNLOAD_PROGRESS";

    /* renamed from: h  reason: collision with root package name */
    public static final String f71h = "android.support.v4.media.action.DOWNLOAD";

    /* renamed from: i  reason: collision with root package name */
    public static final String f72i = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";

    /* renamed from: a  reason: collision with root package name */
    private final e f73a;

    /* loaded from: classes.dex */
    private static class CustomActionResultReceiver extends ResultReceiver {
        private final String mAction;
        private final c mCallback;
        private final Bundle mExtras;

        CustomActionResultReceiver(String str, Bundle bundle, c cVar, Handler handler) {
            super(handler);
            this.mAction = str;
            this.mExtras = bundle;
            this.mCallback = cVar;
        }

        @Override // android.support.v4.os.ResultReceiver
        protected void onReceiveResult(int i4, Bundle bundle) {
            if (this.mCallback == null) {
                return;
            }
            MediaSessionCompat.c(bundle);
            if (i4 == -1) {
                this.mCallback.a(this.mAction, this.mExtras, bundle);
            } else if (i4 == 0) {
                this.mCallback.c(this.mAction, this.mExtras, bundle);
            } else if (i4 != 1) {
                Log.w(MediaBrowserCompat.f65b, "Unknown result code: " + i4 + " (extras=" + this.mExtras + ", resultData=" + bundle + ")");
            } else {
                this.mCallback.b(this.mAction, this.mExtras, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ItemReceiver extends ResultReceiver {
        private final d mCallback;
        private final String mMediaId;

        ItemReceiver(String str, d dVar, Handler handler) {
            super(handler);
            this.mMediaId = str;
            this.mCallback = dVar;
        }

        @Override // android.support.v4.os.ResultReceiver
        protected void onReceiveResult(int i4, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.G(bundle);
            }
            if (i4 == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
                if (parcelable != null && !(parcelable instanceof MediaItem)) {
                    this.mCallback.a(this.mMediaId);
                    return;
                } else {
                    this.mCallback.b((MediaItem) parcelable);
                    return;
                }
            }
            this.mCallback.a(this.mMediaId);
        }
    }

    /* loaded from: classes.dex */
    private static class SearchResultReceiver extends ResultReceiver {
        private final k mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        SearchResultReceiver(String str, Bundle bundle, k kVar, Handler handler) {
            super(handler);
            this.mQuery = str;
            this.mExtras = bundle;
            this.mCallback = kVar;
        }

        @Override // android.support.v4.os.ResultReceiver
        protected void onReceiveResult(int i4, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.G(bundle);
            }
            if (i4 == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                Parcelable[] parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
                if (parcelableArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Parcelable parcelable : parcelableArray) {
                        arrayList.add((MediaItem) parcelable);
                    }
                    this.mCallback.b(this.mQuery, this.mExtras, arrayList);
                    return;
                }
                this.mCallback.a(this.mQuery, this.mExtras);
                return;
            }
            this.mCallback.a(this.mQuery, this.mExtras);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<j> f74a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<Messenger> f75b;

        a(j jVar) {
            this.f74a = new WeakReference<>(jVar);
        }

        void a(Messenger messenger) {
            this.f75b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            WeakReference<Messenger> weakReference = this.f75b;
            if (weakReference == null || weakReference.get() == null || this.f74a.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.c(data);
            j jVar = this.f74a.get();
            Messenger messenger = this.f75b.get();
            try {
                int i4 = message.what;
                if (i4 == 1) {
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.c(bundle);
                    jVar.j(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), bundle);
                } else if (i4 == 2) {
                    jVar.o(messenger);
                } else if (i4 != 3) {
                    Log.w(MediaBrowserCompat.f65b, "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.c(bundle2);
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS);
                    MediaSessionCompat.c(bundle3);
                    jVar.e(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), bundle2, bundle3);
                }
            } catch (BadParcelableException unused) {
                Log.e(MediaBrowserCompat.f65b, "Could not unparcel the data.");
                if (message.what == 1) {
                    jVar.o(messenger);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        final MediaBrowser.ConnectionCallback mConnectionCallbackFwk = new a();
        InterfaceC0003b mConnectionCallbackInternal;

        @RequiresApi(21)
        /* loaded from: classes.dex */
        private class a extends MediaBrowser.ConnectionCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                InterfaceC0003b interfaceC0003b = b.this.mConnectionCallbackInternal;
                if (interfaceC0003b != null) {
                    interfaceC0003b.g();
                }
                b.this.onConnected();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                InterfaceC0003b interfaceC0003b = b.this.mConnectionCallbackInternal;
                if (interfaceC0003b != null) {
                    interfaceC0003b.h();
                }
                b.this.onConnectionFailed();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                InterfaceC0003b interfaceC0003b = b.this.mConnectionCallbackInternal;
                if (interfaceC0003b != null) {
                    interfaceC0003b.m();
                }
                b.this.onConnectionSuspended();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0003b {
            void g();

            void h();

            void m();
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }

        void setInternalConnectionCallback(InterfaceC0003b interfaceC0003b) {
            this.mConnectionCallbackInternal = interfaceC0003b;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {
        public void a(String str, Bundle bundle, Bundle bundle2) {
        }

        public void b(String str, Bundle bundle, Bundle bundle2) {
        }

        public void c(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        final MediaBrowser.ItemCallback f77a;

        @RequiresApi(23)
        /* loaded from: classes.dex */
        private class a extends MediaBrowser.ItemCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onError(@NonNull String str) {
                d.this.a(str);
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
                d.this.b(MediaItem.fromMediaItem(mediaItem));
            }
        }

        public d() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f77a = new a();
            } else {
                this.f77a = null;
            }
        }

        public void a(@NonNull String str) {
        }

        public void b(MediaItem mediaItem) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface e {
        boolean a();

        @NonNull
        MediaSessionCompat.Token b();

        void c();

        void d(@NonNull String str, Bundle bundle, @Nullable c cVar);

        void f();

        @Nullable
        Bundle getExtras();

        @NonNull
        String getRoot();

        void i(@NonNull String str, Bundle bundle, @NonNull k kVar);

        ComponentName k();

        void l(@NonNull String str, @NonNull d dVar);

        void n(@NonNull String str, @Nullable Bundle bundle, @NonNull n nVar);

        void p(@NonNull String str, n nVar);

        @Nullable
        Bundle q();
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class f implements e, j, b.InterfaceC0003b {

        /* renamed from: a  reason: collision with root package name */
        final Context f79a;

        /* renamed from: b  reason: collision with root package name */
        protected final MediaBrowser f80b;

        /* renamed from: c  reason: collision with root package name */
        protected final Bundle f81c;

        /* renamed from: d  reason: collision with root package name */
        protected final a f82d = new a(this);

        /* renamed from: e  reason: collision with root package name */
        private final ArrayMap<String, m> f83e = new ArrayMap<>();

        /* renamed from: f  reason: collision with root package name */
        protected int f84f;

        /* renamed from: g  reason: collision with root package name */
        protected l f85g;

        /* renamed from: h  reason: collision with root package name */
        protected Messenger f86h;

        /* renamed from: i  reason: collision with root package name */
        private MediaSessionCompat.Token f87i;

        /* renamed from: j  reason: collision with root package name */
        private Bundle f88j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f89a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f90b;

            a(d dVar, String str) {
                this.f89a = dVar;
                this.f90b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f89a.a(this.f90b);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f92a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f93b;

            b(d dVar, String str) {
                this.f92a = dVar;
                this.f93b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f92a.a(this.f93b);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f95a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f96b;

            c(d dVar, String str) {
                this.f95a = dVar;
                this.f96b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f95a.a(this.f96b);
            }
        }

        /* loaded from: classes.dex */
        class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ k f98a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f99b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Bundle f100c;

            d(k kVar, String str, Bundle bundle) {
                this.f98a = kVar;
                this.f99b = str;
                this.f100c = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f98a.a(this.f99b, this.f100c);
            }
        }

        /* loaded from: classes.dex */
        class e implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ k f102a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f103b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Bundle f104c;

            e(k kVar, String str, Bundle bundle) {
                this.f102a = kVar;
                this.f103b = str;
                this.f104c = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f102a.a(this.f103b, this.f104c);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$f$f  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0004f implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f106a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f107b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Bundle f108c;

            RunnableC0004f(c cVar, String str, Bundle bundle) {
                this.f106a = cVar;
                this.f107b = str;
                this.f108c = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f106a.a(this.f107b, this.f108c, null);
            }
        }

        /* loaded from: classes.dex */
        class g implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f110a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f111b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Bundle f112c;

            g(c cVar, String str, Bundle bundle) {
                this.f110a = cVar;
                this.f111b = str;
                this.f112c = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f110a.a(this.f111b, this.f112c, null);
            }
        }

        f(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            this.f79a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f81c = bundle2;
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CALLING_PID, Process.myPid());
            bVar.setInternalConnectionCallback(this);
            this.f80b = new MediaBrowser(context, componentName, bVar.mConnectionCallbackFwk, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public boolean a() {
            return this.f80b.isConnected();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @NonNull
        public MediaSessionCompat.Token b() {
            if (this.f87i == null) {
                this.f87i = MediaSessionCompat.Token.fromToken(this.f80b.getSessionToken());
            }
            return this.f87i;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void c() {
            Messenger messenger;
            l lVar = this.f85g;
            if (lVar != null && (messenger = this.f86h) != null) {
                try {
                    lVar.j(messenger);
                } catch (RemoteException unused) {
                    Log.i(MediaBrowserCompat.f65b, "Remote error unregistering client messenger.");
                }
            }
            this.f80b.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void d(@NonNull String str, Bundle bundle, @Nullable c cVar) {
            if (a()) {
                if (this.f85g == null) {
                    Log.i(MediaBrowserCompat.f65b, "The connected service doesn't support sendCustomAction.");
                    if (cVar != null) {
                        this.f82d.post(new RunnableC0004f(cVar, str, bundle));
                    }
                }
                try {
                    this.f85g.h(str, bundle, new CustomActionResultReceiver(str, bundle, cVar, this.f82d), this.f86h);
                    return;
                } catch (RemoteException e4) {
                    Log.i(MediaBrowserCompat.f65b, "Remote error sending a custom action: action=" + str + ", extras=" + bundle, e4);
                    if (cVar != null) {
                        this.f82d.post(new g(cVar, str, bundle));
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException("Cannot send a custom action (" + str + ") with extras " + bundle + " because the browser is not connected to the service.");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void e(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (this.f86h != messenger) {
                return;
            }
            m mVar = this.f83e.get(str);
            if (mVar == null) {
                if (MediaBrowserCompat.f66c) {
                    Log.d(MediaBrowserCompat.f65b, "onLoadChildren for id that isn't subscribed id=" + str);
                    return;
                }
                return;
            }
            n a10 = mVar.a(bundle);
            if (a10 != null) {
                if (bundle == null) {
                    if (list == null) {
                        a10.c(str);
                        return;
                    }
                    this.f88j = bundle2;
                    a10.a(str, list);
                    this.f88j = null;
                } else if (list == null) {
                    a10.d(str, bundle);
                } else {
                    this.f88j = bundle2;
                    a10.b(str, list, bundle);
                    this.f88j = null;
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void f() {
            this.f80b.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.InterfaceC0003b
        public void g() {
            try {
                Bundle extras = this.f80b.getExtras();
                if (extras == null) {
                    return;
                }
                this.f84f = extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                if (binder != null) {
                    this.f85g = new l(binder, this.f81c);
                    Messenger messenger = new Messenger(this.f82d);
                    this.f86h = messenger;
                    this.f82d.a(messenger);
                    try {
                        this.f85g.e(this.f79a, this.f86h);
                    } catch (RemoteException unused) {
                        Log.i(MediaBrowserCompat.f65b, "Remote error registering client messenger.");
                    }
                }
                android.support.v4.media.session.b s9 = b.AbstractBinderC0009b.s(BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
                if (s9 != null) {
                    this.f87i = MediaSessionCompat.Token.fromToken(this.f80b.getSessionToken(), s9);
                }
            } catch (IllegalStateException e4) {
                Log.e(MediaBrowserCompat.f65b, "Unexpected IllegalStateException", e4);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @Nullable
        public Bundle getExtras() {
            return this.f80b.getExtras();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @NonNull
        public String getRoot() {
            return this.f80b.getRoot();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.InterfaceC0003b
        public void h() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void i(@NonNull String str, Bundle bundle, @NonNull k kVar) {
            if (a()) {
                if (this.f85g == null) {
                    Log.i(MediaBrowserCompat.f65b, "The connected service doesn't support search.");
                    this.f82d.post(new d(kVar, str, bundle));
                    return;
                }
                try {
                    this.f85g.g(str, bundle, new SearchResultReceiver(str, bundle, kVar, this.f82d), this.f86h);
                    return;
                } catch (RemoteException e4) {
                    Log.i(MediaBrowserCompat.f65b, "Remote error searching items with query: " + str, e4);
                    this.f82d.post(new e(kVar, str, bundle));
                    return;
                }
            }
            throw new IllegalStateException("search() called while not connected");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void j(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public ComponentName k() {
            return this.f80b.getServiceComponent();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void l(@NonNull String str, @NonNull d dVar) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("mediaId is empty");
            }
            if (dVar != null) {
                if (!this.f80b.isConnected()) {
                    Log.i(MediaBrowserCompat.f65b, "Not connected, unable to retrieve the MediaItem.");
                    this.f82d.post(new a(dVar, str));
                    return;
                } else if (this.f85g == null) {
                    this.f82d.post(new b(dVar, str));
                    return;
                } else {
                    try {
                        this.f85g.d(str, new ItemReceiver(str, dVar, this.f82d), this.f86h);
                        return;
                    } catch (RemoteException unused) {
                        Log.i(MediaBrowserCompat.f65b, "Remote error getting media item: " + str);
                        this.f82d.post(new c(dVar, str));
                        return;
                    }
                }
            }
            throw new IllegalArgumentException("cb is null");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.InterfaceC0003b
        public void m() {
            this.f85g = null;
            this.f86h = null;
            this.f87i = null;
            this.f82d.a(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void n(@NonNull String str, Bundle bundle, @NonNull n nVar) {
            m mVar = this.f83e.get(str);
            if (mVar == null) {
                mVar = new m();
                this.f83e.put(str, mVar);
            }
            nVar.e(mVar);
            Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
            mVar.e(bundle2, nVar);
            l lVar = this.f85g;
            if (lVar == null) {
                this.f80b.subscribe(str, nVar.f159a);
                return;
            }
            try {
                lVar.a(str, nVar.f160b, bundle2, this.f86h);
            } catch (RemoteException unused) {
                Log.i(MediaBrowserCompat.f65b, "Remote error subscribing media item: " + str);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void o(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void p(@NonNull String str, n nVar) {
            m mVar = this.f83e.get(str);
            if (mVar == null) {
                return;
            }
            l lVar = this.f85g;
            if (lVar != null) {
                try {
                    if (nVar == null) {
                        lVar.f(str, null, this.f86h);
                    } else {
                        List<n> b10 = mVar.b();
                        List<Bundle> c10 = mVar.c();
                        for (int size = b10.size() - 1; size >= 0; size--) {
                            if (b10.get(size) == nVar) {
                                this.f85g.f(str, nVar.f160b, this.f86h);
                                b10.remove(size);
                                c10.remove(size);
                            }
                        }
                    }
                } catch (RemoteException unused) {
                    Log.d(MediaBrowserCompat.f65b, "removeSubscription failed with RemoteException parentId=" + str);
                }
            } else if (nVar == null) {
                this.f80b.unsubscribe(str);
            } else {
                List<n> b11 = mVar.b();
                List<Bundle> c11 = mVar.c();
                for (int size2 = b11.size() - 1; size2 >= 0; size2--) {
                    if (b11.get(size2) == nVar) {
                        b11.remove(size2);
                        c11.remove(size2);
                    }
                }
                if (b11.size() == 0) {
                    this.f80b.unsubscribe(str);
                }
            }
            if (mVar.d() || nVar == null) {
                this.f83e.remove(str);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public Bundle q() {
            return this.f88j;
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    static class g extends f {
        g(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f, android.support.v4.media.MediaBrowserCompat.e
        public void l(@NonNull String str, @NonNull d dVar) {
            if (this.f85g == null) {
                this.f80b.getItem(str, dVar.f77a);
            } else {
                super.l(str, dVar);
            }
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static class h extends g {
        h(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f, android.support.v4.media.MediaBrowserCompat.e
        public void n(@NonNull String str, @Nullable Bundle bundle, @NonNull n nVar) {
            if (this.f85g != null && this.f84f >= 2) {
                super.n(str, bundle, nVar);
            } else if (bundle == null) {
                this.f80b.subscribe(str, nVar.f159a);
            } else {
                this.f80b.subscribe(str, bundle, nVar.f159a);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f, android.support.v4.media.MediaBrowserCompat.e
        public void p(@NonNull String str, n nVar) {
            if (this.f85g != null && this.f84f >= 2) {
                super.p(str, nVar);
            } else if (nVar == null) {
                this.f80b.unsubscribe(str);
            } else {
                this.f80b.unsubscribe(str, nVar.f159a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class i implements e, j {

        /* renamed from: o  reason: collision with root package name */
        static final int f114o = 0;

        /* renamed from: p  reason: collision with root package name */
        static final int f115p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final int f116q = 2;

        /* renamed from: r  reason: collision with root package name */
        static final int f117r = 3;

        /* renamed from: s  reason: collision with root package name */
        static final int f118s = 4;

        /* renamed from: a  reason: collision with root package name */
        final Context f119a;

        /* renamed from: b  reason: collision with root package name */
        final ComponentName f120b;

        /* renamed from: c  reason: collision with root package name */
        final b f121c;

        /* renamed from: d  reason: collision with root package name */
        final Bundle f122d;

        /* renamed from: e  reason: collision with root package name */
        final a f123e = new a(this);

        /* renamed from: f  reason: collision with root package name */
        private final ArrayMap<String, m> f124f = new ArrayMap<>();

        /* renamed from: g  reason: collision with root package name */
        int f125g = 1;

        /* renamed from: h  reason: collision with root package name */
        g f126h;

        /* renamed from: i  reason: collision with root package name */
        l f127i;

        /* renamed from: j  reason: collision with root package name */
        Messenger f128j;

        /* renamed from: k  reason: collision with root package name */
        private String f129k;

        /* renamed from: l  reason: collision with root package name */
        private MediaSessionCompat.Token f130l;

        /* renamed from: m  reason: collision with root package name */
        private Bundle f131m;

        /* renamed from: n  reason: collision with root package name */
        private Bundle f132n;

        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                i iVar = i.this;
                if (iVar.f125g == 0) {
                    return;
                }
                iVar.f125g = 2;
                if (MediaBrowserCompat.f66c && iVar.f126h != null) {
                    throw new RuntimeException("mServiceConnection should be null. Instead it is " + i.this.f126h);
                } else if (iVar.f127i == null) {
                    if (iVar.f128j == null) {
                        Intent intent = new Intent(MediaBrowserServiceCompat.SERVICE_INTERFACE);
                        intent.setComponent(i.this.f120b);
                        i iVar2 = i.this;
                        iVar2.f126h = new g();
                        boolean z9 = false;
                        try {
                            i iVar3 = i.this;
                            z9 = iVar3.f119a.bindService(intent, iVar3.f126h, 1);
                        } catch (Exception unused) {
                            Log.e(MediaBrowserCompat.f65b, "Failed binding to service " + i.this.f120b);
                        }
                        if (!z9) {
                            i.this.h();
                            i.this.f121c.onConnectionFailed();
                        }
                        if (MediaBrowserCompat.f66c) {
                            Log.d(MediaBrowserCompat.f65b, "connect...");
                            i.this.g();
                            return;
                        }
                        return;
                    }
                    throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + i.this.f128j);
                } else {
                    throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + i.this.f127i);
                }
            }
        }

        /* loaded from: classes.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                i iVar = i.this;
                Messenger messenger = iVar.f128j;
                if (messenger != null) {
                    try {
                        iVar.f127i.c(messenger);
                    } catch (RemoteException unused) {
                        Log.w(MediaBrowserCompat.f65b, "RemoteException during connect for " + i.this.f120b);
                    }
                }
                i iVar2 = i.this;
                int i4 = iVar2.f125g;
                iVar2.h();
                if (i4 != 0) {
                    i.this.f125g = i4;
                }
                if (MediaBrowserCompat.f66c) {
                    Log.d(MediaBrowserCompat.f65b, "disconnect...");
                    i.this.g();
                }
            }
        }

        /* loaded from: classes.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f135a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f136b;

            c(d dVar, String str) {
                this.f135a = dVar;
                this.f136b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f135a.a(this.f136b);
            }
        }

        /* loaded from: classes.dex */
        class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f138a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f139b;

            d(d dVar, String str) {
                this.f138a = dVar;
                this.f139b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f138a.a(this.f139b);
            }
        }

        /* loaded from: classes.dex */
        class e implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ k f141a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f142b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Bundle f143c;

            e(k kVar, String str, Bundle bundle) {
                this.f141a = kVar;
                this.f142b = str;
                this.f143c = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f141a.a(this.f142b, this.f143c);
            }
        }

        /* loaded from: classes.dex */
        class f implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f145a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f146b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Bundle f147c;

            f(c cVar, String str, Bundle bundle) {
                this.f145a = cVar;
                this.f146b = str;
                this.f147c = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f145a.a(this.f146b, this.f147c, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class g implements ServiceConnection {

            /* loaded from: classes.dex */
            class a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ ComponentName f150a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ IBinder f151b;

                a(ComponentName componentName, IBinder iBinder) {
                    this.f150a = componentName;
                    this.f151b = iBinder;
                }

                @Override // java.lang.Runnable
                public void run() {
                    boolean z9 = MediaBrowserCompat.f66c;
                    if (z9) {
                        Log.d(MediaBrowserCompat.f65b, "MediaServiceConnection.onServiceConnected name=" + this.f150a + " binder=" + this.f151b);
                        i.this.g();
                    }
                    if (g.this.a("onServiceConnected")) {
                        i iVar = i.this;
                        iVar.f127i = new l(this.f151b, iVar.f122d);
                        i.this.f128j = new Messenger(i.this.f123e);
                        i iVar2 = i.this;
                        iVar2.f123e.a(iVar2.f128j);
                        i.this.f125g = 2;
                        if (z9) {
                            try {
                                Log.d(MediaBrowserCompat.f65b, "ServiceCallbacks.onConnect...");
                                i.this.g();
                            } catch (RemoteException unused) {
                                Log.w(MediaBrowserCompat.f65b, "RemoteException during connect for " + i.this.f120b);
                                if (MediaBrowserCompat.f66c) {
                                    Log.d(MediaBrowserCompat.f65b, "ServiceCallbacks.onConnect...");
                                    i.this.g();
                                    return;
                                }
                                return;
                            }
                        }
                        i iVar3 = i.this;
                        iVar3.f127i.b(iVar3.f119a, iVar3.f128j);
                    }
                }
            }

            /* loaded from: classes.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ ComponentName f153a;

                b(ComponentName componentName) {
                    this.f153a = componentName;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserCompat.f66c) {
                        Log.d(MediaBrowserCompat.f65b, "MediaServiceConnection.onServiceDisconnected name=" + this.f153a + " this=" + this + " mServiceConnection=" + i.this.f126h);
                        i.this.g();
                    }
                    if (g.this.a("onServiceDisconnected")) {
                        i iVar = i.this;
                        iVar.f127i = null;
                        iVar.f128j = null;
                        iVar.f123e.a(null);
                        i iVar2 = i.this;
                        iVar2.f125g = 4;
                        iVar2.f121c.onConnectionSuspended();
                    }
                }
            }

            g() {
            }

            private void b(Runnable runnable) {
                if (Thread.currentThread() == i.this.f123e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    i.this.f123e.post(runnable);
                }
            }

            boolean a(String str) {
                int i4;
                i iVar = i.this;
                if (iVar.f126h != this || (i4 = iVar.f125g) == 0 || i4 == 1) {
                    int i10 = iVar.f125g;
                    if (i10 == 0 || i10 == 1) {
                        return false;
                    }
                    Log.i(MediaBrowserCompat.f65b, str + " for " + i.this.f120b + " with mServiceConnection=" + i.this.f126h + " this=" + this);
                    return false;
                }
                return true;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                b(new a(componentName, iBinder));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                b(new b(componentName));
            }
        }

        public i(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            }
            if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            }
            if (bVar != null) {
                this.f119a = context;
                this.f120b = componentName;
                this.f121c = bVar;
                this.f122d = bundle == null ? null : new Bundle(bundle);
                return;
            }
            throw new IllegalArgumentException("connection callback must not be null");
        }

        private static String m(int i4) {
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 != 4) {
                                return "UNKNOWN/" + i4;
                            }
                            return "CONNECT_STATE_SUSPENDED";
                        }
                        return "CONNECT_STATE_CONNECTED";
                    }
                    return "CONNECT_STATE_CONNECTING";
                }
                return "CONNECT_STATE_DISCONNECTED";
            }
            return "CONNECT_STATE_DISCONNECTING";
        }

        private boolean r(Messenger messenger, String str) {
            int i4;
            if (this.f128j != messenger || (i4 = this.f125g) == 0 || i4 == 1) {
                int i10 = this.f125g;
                if (i10 == 0 || i10 == 1) {
                    return false;
                }
                Log.i(MediaBrowserCompat.f65b, str + " for " + this.f120b + " with mCallbacksMessenger=" + this.f128j + " this=" + this);
                return false;
            }
            return true;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public boolean a() {
            return this.f125g == 3;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @NonNull
        public MediaSessionCompat.Token b() {
            if (a()) {
                return this.f130l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f125g + ")");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void c() {
            this.f125g = 0;
            this.f123e.post(new b());
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void d(@NonNull String str, Bundle bundle, @Nullable c cVar) {
            if (a()) {
                try {
                    this.f127i.h(str, bundle, new CustomActionResultReceiver(str, bundle, cVar, this.f123e), this.f128j);
                    return;
                } catch (RemoteException e4) {
                    Log.i(MediaBrowserCompat.f65b, "Remote error sending a custom action: action=" + str + ", extras=" + bundle, e4);
                    if (cVar != null) {
                        this.f123e.post(new f(cVar, str, bundle));
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException("Cannot send a custom action (" + str + ") with extras " + bundle + " because the browser is not connected to the service.");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void e(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (r(messenger, "onLoadChildren")) {
                boolean z9 = MediaBrowserCompat.f66c;
                if (z9) {
                    Log.d(MediaBrowserCompat.f65b, "onLoadChildren for " + this.f120b + " id=" + str);
                }
                m mVar = this.f124f.get(str);
                if (mVar == null) {
                    if (z9) {
                        Log.d(MediaBrowserCompat.f65b, "onLoadChildren for id that isn't subscribed id=" + str);
                        return;
                    }
                    return;
                }
                n a10 = mVar.a(bundle);
                if (a10 != null) {
                    if (bundle == null) {
                        if (list == null) {
                            a10.c(str);
                            return;
                        }
                        this.f132n = bundle2;
                        a10.a(str, list);
                        this.f132n = null;
                    } else if (list == null) {
                        a10.d(str, bundle);
                    } else {
                        this.f132n = bundle2;
                        a10.b(str, list, bundle);
                        this.f132n = null;
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void f() {
            int i4 = this.f125g;
            if (i4 != 0 && i4 != 1) {
                throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + m(this.f125g) + ")");
            }
            this.f125g = 2;
            this.f123e.post(new a());
        }

        void g() {
            Log.d(MediaBrowserCompat.f65b, "MediaBrowserCompat...");
            Log.d(MediaBrowserCompat.f65b, "  mServiceComponent=" + this.f120b);
            Log.d(MediaBrowserCompat.f65b, "  mCallback=" + this.f121c);
            Log.d(MediaBrowserCompat.f65b, "  mRootHints=" + this.f122d);
            Log.d(MediaBrowserCompat.f65b, "  mState=" + m(this.f125g));
            Log.d(MediaBrowserCompat.f65b, "  mServiceConnection=" + this.f126h);
            Log.d(MediaBrowserCompat.f65b, "  mServiceBinderWrapper=" + this.f127i);
            Log.d(MediaBrowserCompat.f65b, "  mCallbacksMessenger=" + this.f128j);
            Log.d(MediaBrowserCompat.f65b, "  mRootId=" + this.f129k);
            Log.d(MediaBrowserCompat.f65b, "  mMediaSessionToken=" + this.f130l);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @Nullable
        public Bundle getExtras() {
            if (a()) {
                return this.f131m;
            }
            throw new IllegalStateException("getExtras() called while not connected (state=" + m(this.f125g) + ")");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @NonNull
        public String getRoot() {
            if (a()) {
                return this.f129k;
            }
            throw new IllegalStateException("getRoot() called while not connected(state=" + m(this.f125g) + ")");
        }

        void h() {
            g gVar = this.f126h;
            if (gVar != null) {
                this.f119a.unbindService(gVar);
            }
            this.f125g = 1;
            this.f126h = null;
            this.f127i = null;
            this.f128j = null;
            this.f123e.a(null);
            this.f129k = null;
            this.f130l = null;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void i(@NonNull String str, Bundle bundle, @NonNull k kVar) {
            if (a()) {
                try {
                    this.f127i.g(str, bundle, new SearchResultReceiver(str, bundle, kVar, this.f123e), this.f128j);
                    return;
                } catch (RemoteException e4) {
                    Log.i(MediaBrowserCompat.f65b, "Remote error searching items with query: " + str, e4);
                    this.f123e.post(new e(kVar, str, bundle));
                    return;
                }
            }
            throw new IllegalStateException("search() called while not connected (state=" + m(this.f125g) + ")");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void j(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (r(messenger, "onConnect")) {
                if (this.f125g != 2) {
                    Log.w(MediaBrowserCompat.f65b, "onConnect from service while mState=" + m(this.f125g) + "... ignoring");
                    return;
                }
                this.f129k = str;
                this.f130l = token;
                this.f131m = bundle;
                this.f125g = 3;
                if (MediaBrowserCompat.f66c) {
                    Log.d(MediaBrowserCompat.f65b, "ServiceCallbacks.onConnect...");
                    g();
                }
                this.f121c.onConnected();
                try {
                    for (Map.Entry<String, m> entry : this.f124f.entrySet()) {
                        String key = entry.getKey();
                        m value = entry.getValue();
                        List<n> b10 = value.b();
                        List<Bundle> c10 = value.c();
                        for (int i4 = 0; i4 < b10.size(); i4++) {
                            this.f127i.a(key, b10.get(i4).f160b, c10.get(i4), this.f128j);
                        }
                    }
                } catch (RemoteException unused) {
                    Log.d(MediaBrowserCompat.f65b, "addSubscription failed with RemoteException.");
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @NonNull
        public ComponentName k() {
            if (a()) {
                return this.f120b;
            }
            throw new IllegalStateException("getServiceComponent() called while not connected (state=" + this.f125g + ")");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void l(@NonNull String str, @NonNull d dVar) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("mediaId is empty");
            }
            if (dVar != null) {
                if (!a()) {
                    Log.i(MediaBrowserCompat.f65b, "Not connected, unable to retrieve the MediaItem.");
                    this.f123e.post(new c(dVar, str));
                    return;
                }
                try {
                    this.f127i.d(str, new ItemReceiver(str, dVar, this.f123e), this.f128j);
                    return;
                } catch (RemoteException unused) {
                    Log.i(MediaBrowserCompat.f65b, "Remote error getting media item: " + str);
                    this.f123e.post(new d(dVar, str));
                    return;
                }
            }
            throw new IllegalArgumentException("cb is null");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void n(@NonNull String str, Bundle bundle, @NonNull n nVar) {
            m mVar = this.f124f.get(str);
            if (mVar == null) {
                mVar = new m();
                this.f124f.put(str, mVar);
            }
            Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
            mVar.e(bundle2, nVar);
            if (a()) {
                try {
                    this.f127i.a(str, nVar.f160b, bundle2, this.f128j);
                } catch (RemoteException unused) {
                    Log.d(MediaBrowserCompat.f65b, "addSubscription failed with RemoteException parentId=" + str);
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void o(Messenger messenger) {
            Log.e(MediaBrowserCompat.f65b, "onConnectFailed for " + this.f120b);
            if (r(messenger, "onConnectFailed")) {
                if (this.f125g != 2) {
                    Log.w(MediaBrowserCompat.f65b, "onConnect from service while mState=" + m(this.f125g) + "... ignoring");
                    return;
                }
                h();
                this.f121c.onConnectionFailed();
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void p(@NonNull String str, n nVar) {
            m mVar = this.f124f.get(str);
            if (mVar == null) {
                return;
            }
            try {
                if (nVar == null) {
                    if (a()) {
                        this.f127i.f(str, null, this.f128j);
                    }
                } else {
                    List<n> b10 = mVar.b();
                    List<Bundle> c10 = mVar.c();
                    for (int size = b10.size() - 1; size >= 0; size--) {
                        if (b10.get(size) == nVar) {
                            if (a()) {
                                this.f127i.f(str, nVar.f160b, this.f128j);
                            }
                            b10.remove(size);
                            c10.remove(size);
                        }
                    }
                }
            } catch (RemoteException unused) {
                Log.d(MediaBrowserCompat.f65b, "removeSubscription failed with RemoteException parentId=" + str);
            }
            if (mVar.d() || nVar == null) {
                this.f124f.remove(str);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public Bundle q() {
            return this.f132n;
        }
    }

    /* loaded from: classes.dex */
    interface j {
        void e(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2);

        void j(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void o(Messenger messenger);
    }

    /* loaded from: classes.dex */
    public static abstract class k {
        public void a(@NonNull String str, Bundle bundle) {
        }

        public void b(@NonNull String str, Bundle bundle, @NonNull List<MediaItem> list) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        private Messenger f155a;

        /* renamed from: b  reason: collision with root package name */
        private Bundle f156b;

        public l(IBinder iBinder, Bundle bundle) {
            this.f155a = new Messenger(iBinder);
            this.f156b = bundle;
        }

        private void i(int i4, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i4;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f155a.send(obtain);
        }

        void a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle2, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            bundle2.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            i(3, bundle2, messenger);
        }

        void b(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.f156b);
            i(1, bundle, messenger);
        }

        void c(Messenger messenger) throws RemoteException {
            i(2, null, messenger);
        }

        void d(String str, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            i(5, bundle, messenger);
        }

        void e(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.f156b);
            i(6, bundle, messenger);
        }

        void f(String str, IBinder iBinder, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            i(4, bundle, messenger);
        }

        void g(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_SEARCH_QUERY, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS, bundle);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            i(8, bundle2, messenger);
        }

        void h(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_CUSTOM_ACTION, str);
            bundle2.putBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS, bundle);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER, resultReceiver);
            i(9, bundle2, messenger);
        }

        void j(Messenger messenger) throws RemoteException {
            i(7, null, messenger);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class m {

        /* renamed from: a  reason: collision with root package name */
        private final List<n> f157a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<Bundle> f158b = new ArrayList();

        public n a(Bundle bundle) {
            for (int i4 = 0; i4 < this.f158b.size(); i4++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f158b.get(i4), bundle)) {
                    return this.f157a.get(i4);
                }
            }
            return null;
        }

        public List<n> b() {
            return this.f157a;
        }

        public List<Bundle> c() {
            return this.f158b;
        }

        public boolean d() {
            return this.f157a.isEmpty();
        }

        public void e(Bundle bundle, n nVar) {
            for (int i4 = 0; i4 < this.f158b.size(); i4++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f158b.get(i4), bundle)) {
                    this.f157a.set(i4, nVar);
                    return;
                }
            }
            this.f157a.add(nVar);
            this.f158b.add(bundle);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class n {

        /* renamed from: a  reason: collision with root package name */
        final MediaBrowser.SubscriptionCallback f159a;

        /* renamed from: b  reason: collision with root package name */
        final IBinder f160b = new Binder();

        /* renamed from: c  reason: collision with root package name */
        WeakReference<m> f161c;

        @RequiresApi(21)
        /* loaded from: classes.dex */
        private class a extends MediaBrowser.SubscriptionCallback {
            a() {
            }

            List<MediaItem> a(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i4 = bundle.getInt(MediaBrowserCompat.f67d, -1);
                int i10 = bundle.getInt(MediaBrowserCompat.f68e, -1);
                if (i4 == -1 && i10 == -1) {
                    return list;
                }
                int i11 = i10 * i4;
                int i12 = i11 + i10;
                if (i4 >= 0 && i10 >= 1 && i11 < list.size()) {
                    if (i12 > list.size()) {
                        i12 = list.size();
                    }
                    return list.subList(i11, i12);
                }
                return Collections.emptyList();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list) {
                WeakReference<m> weakReference = n.this.f161c;
                m mVar = weakReference == null ? null : weakReference.get();
                if (mVar == null) {
                    n.this.a(str, MediaItem.fromMediaItemList(list));
                    return;
                }
                List<MediaItem> fromMediaItemList = MediaItem.fromMediaItemList(list);
                List<n> b10 = mVar.b();
                List<Bundle> c10 = mVar.c();
                for (int i4 = 0; i4 < b10.size(); i4++) {
                    Bundle bundle = c10.get(i4);
                    if (bundle == null) {
                        n.this.a(str, fromMediaItemList);
                    } else {
                        n.this.b(str, a(fromMediaItemList, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str) {
                n.this.c(str);
            }
        }

        @RequiresApi(26)
        /* loaded from: classes.dex */
        private class b extends a {
            b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
                MediaSessionCompat.c(bundle);
                n.this.b(str, MediaItem.fromMediaItemList(list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str, @NonNull Bundle bundle) {
                MediaSessionCompat.c(bundle);
                n.this.d(str, bundle);
            }
        }

        public n() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f159a = new b();
            } else {
                this.f159a = new a();
            }
        }

        public void a(@NonNull String str, @NonNull List<MediaItem> list) {
        }

        public void b(@NonNull String str, @NonNull List<MediaItem> list, @NonNull Bundle bundle) {
        }

        public void c(@NonNull String str) {
        }

        public void d(@NonNull String str, @NonNull Bundle bundle) {
        }

        void e(m mVar) {
            this.f161c = new WeakReference<>(mVar);
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar, Bundle bundle) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            this.f73a = new h(context, componentName, bVar, bundle);
        } else if (i4 >= 23) {
            this.f73a = new g(context, componentName, bVar, bundle);
        } else {
            this.f73a = new f(context, componentName, bVar, bundle);
        }
    }

    public void a() {
        Log.d(f65b, "Connecting to a MediaBrowserService.");
        this.f73a.f();
    }

    public void b() {
        this.f73a.c();
    }

    @Nullable
    public Bundle c() {
        return this.f73a.getExtras();
    }

    public void d(@NonNull String str, @NonNull d dVar) {
        this.f73a.l(str, dVar);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Bundle e() {
        return this.f73a.q();
    }

    @NonNull
    public String f() {
        return this.f73a.getRoot();
    }

    @NonNull
    public ComponentName g() {
        return this.f73a.k();
    }

    @NonNull
    public MediaSessionCompat.Token h() {
        return this.f73a.b();
    }

    public boolean i() {
        return this.f73a.a();
    }

    public void j(@NonNull String str, Bundle bundle, @NonNull k kVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("query cannot be empty");
        }
        if (kVar != null) {
            this.f73a.i(str, bundle, kVar);
            return;
        }
        throw new IllegalArgumentException("callback cannot be null");
    }

    public void k(@NonNull String str, Bundle bundle, @Nullable c cVar) {
        if (!TextUtils.isEmpty(str)) {
            this.f73a.d(str, bundle, cVar);
            return;
        }
        throw new IllegalArgumentException("action cannot be empty");
    }

    public void l(@NonNull String str, @NonNull Bundle bundle, @NonNull n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("callback is null");
        }
        if (bundle != null) {
            this.f73a.n(str, bundle, nVar);
            return;
        }
        throw new IllegalArgumentException("options are null");
    }

    public void m(@NonNull String str, @NonNull n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (nVar != null) {
            this.f73a.n(str, null, nVar);
            return;
        }
        throw new IllegalArgumentException("callback is null");
    }

    public void n(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f73a.p(str, null);
            return;
        }
        throw new IllegalArgumentException("parentId is empty");
    }

    public void o(@NonNull String str, @NonNull n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (nVar != null) {
            this.f73a.p(str, nVar);
            return;
        }
        throw new IllegalArgumentException("callback is null");
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        private final MediaDescriptionCompat mDescription;
        private final int mFlags;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<MediaItem> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public MediaItem[] newArray(int i4) {
                return new MediaItem[i4];
            }
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i4) {
            if (mediaDescriptionCompat != null) {
                if (!TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                    this.mFlags = i4;
                    this.mDescription = mediaDescriptionCompat;
                    return;
                }
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            throw new IllegalArgumentException("description cannot be null");
        }

        public static MediaItem fromMediaItem(Object obj) {
            if (obj != null) {
                MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
                return new MediaItem(MediaDescriptionCompat.fromMediaDescription(mediaItem.getDescription()), mediaItem.getFlags());
            }
            return null;
        }

        public static List<MediaItem> fromMediaItemList(List<?> list) {
            if (list != null) {
                ArrayList arrayList = new ArrayList(list.size());
                Iterator<?> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(fromMediaItem(it.next()));
                }
                return arrayList;
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public int getFlags() {
            return this.mFlags;
        }

        @Nullable
        public String getMediaId() {
            return this.mDescription.getMediaId();
        }

        public boolean isBrowsable() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.mFlags & 2) != 0;
        }

        @NonNull
        public String toString() {
            return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i4);
        }

        MediaItem(Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }
}
