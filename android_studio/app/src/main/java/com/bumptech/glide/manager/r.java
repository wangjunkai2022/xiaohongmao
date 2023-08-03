package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.manager.c;
import com.bumptech.glide.util.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* compiled from: SingletonConnectivityReceiver.java */
/* loaded from: classes.dex */
final class r {

    /* renamed from: d  reason: collision with root package name */
    private static volatile r f9459d = null;

    /* renamed from: e  reason: collision with root package name */
    private static final String f9460e = "ConnectivityMonitor";

    /* renamed from: a  reason: collision with root package name */
    private final c f9461a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    final Set<c.a> f9462b = new HashSet();
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private boolean f9463c;

    /* compiled from: SingletonConnectivityReceiver.java */
    /* loaded from: classes.dex */
    class a implements h.b<ConnectivityManager> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9464a;

        a(Context context) {
            this.f9464a = context;
        }

        @Override // com.bumptech.glide.util.h.b
        /* renamed from: a */
        public ConnectivityManager get() {
            return (ConnectivityManager) this.f9464a.getSystemService("connectivity");
        }
    }

    /* compiled from: SingletonConnectivityReceiver.java */
    /* loaded from: classes.dex */
    class b implements c.a {
        b() {
        }

        @Override // com.bumptech.glide.manager.c.a
        public void a(boolean z9) {
            ArrayList<c.a> arrayList;
            synchronized (r.this) {
                arrayList = new ArrayList(r.this.f9462b);
            }
            for (c.a aVar : arrayList) {
                aVar.a(z9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SingletonConnectivityReceiver.java */
    /* loaded from: classes.dex */
    public interface c {
        void a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SingletonConnectivityReceiver.java */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static final class d implements c {

        /* renamed from: a  reason: collision with root package name */
        boolean f9467a;

        /* renamed from: b  reason: collision with root package name */
        final c.a f9468b;

        /* renamed from: c  reason: collision with root package name */
        private final h.b<ConnectivityManager> f9469c;

        /* renamed from: d  reason: collision with root package name */
        private final ConnectivityManager.NetworkCallback f9470d = new a();

        /* compiled from: SingletonConnectivityReceiver.java */
        /* loaded from: classes.dex */
        class a extends ConnectivityManager.NetworkCallback {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: SingletonConnectivityReceiver.java */
            /* renamed from: com.bumptech.glide.manager.r$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class RunnableC0063a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ boolean f9472a;

                RunnableC0063a(boolean z9) {
                    this.f9472a = z9;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(this.f9472a);
                }
            }

            a() {
            }

            private void b(boolean z9) {
                com.bumptech.glide.util.o.x(new RunnableC0063a(z9));
            }

            void a(boolean z9) {
                com.bumptech.glide.util.o.b();
                d dVar = d.this;
                boolean z10 = dVar.f9467a;
                dVar.f9467a = z9;
                if (z10 != z9) {
                    dVar.f9468b.a(z9);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(@NonNull Network network) {
                b(true);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NonNull Network network) {
                b(false);
            }
        }

        d(h.b<ConnectivityManager> bVar, c.a aVar) {
            this.f9469c = bVar;
            this.f9468b = aVar;
        }

        @Override // com.bumptech.glide.manager.r.c
        public void a() {
            this.f9469c.get().unregisterNetworkCallback(this.f9470d);
        }

        @Override // com.bumptech.glide.manager.r.c
        @SuppressLint({"MissingPermission"})
        public boolean b() {
            this.f9467a = this.f9469c.get().getActiveNetwork() != null;
            try {
                this.f9469c.get().registerDefaultNetworkCallback(this.f9470d);
                return true;
            } catch (RuntimeException e4) {
                if (Log.isLoggable(r.f9460e, 5)) {
                    Log.w(r.f9460e, "Failed to register callback", e4);
                }
                return false;
            }
        }
    }

    /* compiled from: SingletonConnectivityReceiver.java */
    /* loaded from: classes.dex */
    private static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Context f9474a;

        /* renamed from: b  reason: collision with root package name */
        final c.a f9475b;

        /* renamed from: c  reason: collision with root package name */
        private final h.b<ConnectivityManager> f9476c;

        /* renamed from: d  reason: collision with root package name */
        boolean f9477d;

        /* renamed from: e  reason: collision with root package name */
        private final BroadcastReceiver f9478e = new a();

        /* compiled from: SingletonConnectivityReceiver.java */
        /* loaded from: classes.dex */
        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(@NonNull Context context, Intent intent) {
                e eVar = e.this;
                boolean z9 = eVar.f9477d;
                eVar.f9477d = eVar.c();
                if (z9 != e.this.f9477d) {
                    if (Log.isLoggable(r.f9460e, 3)) {
                        Log.d(r.f9460e, "connectivity changed, isConnected: " + e.this.f9477d);
                    }
                    e eVar2 = e.this;
                    eVar2.f9475b.a(eVar2.f9477d);
                }
            }
        }

        e(Context context, h.b<ConnectivityManager> bVar, c.a aVar) {
            this.f9474a = context.getApplicationContext();
            this.f9476c = bVar;
            this.f9475b = aVar;
        }

        @Override // com.bumptech.glide.manager.r.c
        public void a() {
            this.f9474a.unregisterReceiver(this.f9478e);
        }

        @Override // com.bumptech.glide.manager.r.c
        public boolean b() {
            this.f9477d = c();
            try {
                this.f9474a.registerReceiver(this.f9478e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                return true;
            } catch (SecurityException e4) {
                if (Log.isLoggable(r.f9460e, 5)) {
                    Log.w(r.f9460e, "Failed to register", e4);
                    return false;
                }
                return false;
            }
        }

        @SuppressLint({"MissingPermission"})
        boolean c() {
            try {
                NetworkInfo activeNetworkInfo = this.f9476c.get().getActiveNetworkInfo();
                return activeNetworkInfo != null && activeNetworkInfo.isConnected();
            } catch (RuntimeException e4) {
                if (Log.isLoggable(r.f9460e, 5)) {
                    Log.w(r.f9460e, "Failed to determine connectivity status when connectivity changed", e4);
                }
                return true;
            }
        }
    }

    private r(@NonNull Context context) {
        c eVar;
        h.b a10 = com.bumptech.glide.util.h.a(new a(context));
        b bVar = new b();
        if (Build.VERSION.SDK_INT >= 24) {
            eVar = new d(a10, bVar);
        } else {
            eVar = new e(context, a10, bVar);
        }
        this.f9461a = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r a(@NonNull Context context) {
        if (f9459d == null) {
            synchronized (r.class) {
                if (f9459d == null) {
                    f9459d = new r(context.getApplicationContext());
                }
            }
        }
        return f9459d;
    }

    @GuardedBy("this")
    private void b() {
        if (this.f9463c || this.f9462b.isEmpty()) {
            return;
        }
        this.f9463c = this.f9461a.b();
    }

    @GuardedBy("this")
    private void c() {
        if (this.f9463c && this.f9462b.isEmpty()) {
            this.f9461a.a();
            this.f9463c = false;
        }
    }

    @VisibleForTesting
    static void e() {
        f9459d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d(c.a aVar) {
        this.f9462b.add(aVar);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f(c.a aVar) {
        this.f9462b.remove(aVar);
        c();
    }
}
