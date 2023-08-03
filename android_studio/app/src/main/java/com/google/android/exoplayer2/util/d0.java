package com.google.android.exoplayer2.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: NetworkTypeObserver.java */
/* loaded from: classes2.dex */
public final class d0 {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static d0 f27524e;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f27525a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<WeakReference<b>> f27526b = new CopyOnWriteArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final Object f27527c = new Object();
    @GuardedBy("networkTypeLock")

    /* renamed from: d  reason: collision with root package name */
    private int f27528d = 0;

    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(int i4);
    }

    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes2.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i4;
            int g4 = d0.g(context);
            if (g4 == 5 && (i4 = z0.f27743a) >= 29) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) com.google.android.exoplayer2.util.a.g((TelephonyManager) context.getSystemService("phone"));
                    d dVar = new d();
                    if (i4 < 31) {
                        telephonyManager.listen(dVar, 1);
                    } else {
                        telephonyManager.listen(dVar, 1048576);
                    }
                    telephonyManager.listen(dVar, 0);
                    return;
                } catch (RuntimeException unused) {
                }
            }
            d0.this.l(g4);
        }
    }

    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes2.dex */
    private class d extends PhoneStateListener {
        private d() {
        }

        @Override // android.telephony.PhoneStateListener
        @RequiresApi(31)
        public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
            int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
            d0.this.l(overrideNetworkType == 3 || overrideNetworkType == 4 ? 10 : 5);
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(@Nullable ServiceState serviceState) {
            String serviceState2 = serviceState == null ? "" : serviceState.toString();
            d0.this.l(serviceState2.contains("nrState=CONNECTED") || serviceState2.contains("nrState=NOT_RESTRICTED") ? 10 : 5);
        }
    }

    private d0(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new c(), intentFilter);
    }

    public static synchronized d0 d(Context context) {
        d0 d0Var;
        synchronized (d0.class) {
            if (f27524e == null) {
                f27524e = new d0(context);
            }
            d0Var = f27524e;
        }
        return d0Var;
    }

    private static int e(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return z0.f27743a >= 29 ? 9 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i4 = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i4 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return e(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(b bVar) {
        bVar.a(f());
    }

    private void j() {
        Iterator<WeakReference<b>> it = this.f27526b.iterator();
        while (it.hasNext()) {
            WeakReference<b> next = it.next();
            if (next.get() == null) {
                this.f27526b.remove(next);
            }
        }
    }

    @VisibleForTesting
    public static synchronized void k() {
        synchronized (d0.class) {
            f27524e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i4) {
        synchronized (this.f27527c) {
            if (this.f27528d == i4) {
                return;
            }
            this.f27528d = i4;
            Iterator<WeakReference<b>> it = this.f27526b.iterator();
            while (it.hasNext()) {
                WeakReference<b> next = it.next();
                b bVar = next.get();
                if (bVar != null) {
                    bVar.a(i4);
                } else {
                    this.f27526b.remove(next);
                }
            }
        }
    }

    public int f() {
        int i4;
        synchronized (this.f27527c) {
            i4 = this.f27528d;
        }
        return i4;
    }

    public void i(final b bVar) {
        j();
        this.f27526b.add(new WeakReference<>(bVar));
        this.f27525a.post(new Runnable() { // from class: com.google.android.exoplayer2.util.c0
            @Override // java.lang.Runnable
            public final void run() {
                d0.this.h(bVar);
            }
        });
    }
}
