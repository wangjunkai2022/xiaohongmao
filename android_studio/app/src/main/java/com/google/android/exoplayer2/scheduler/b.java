package com.google.android.exoplayer2.scheduler;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.scheduler.b;
import com.google.android.exoplayer2.util.z0;

/* compiled from: RequirementsWatcher.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24598a;

    /* renamed from: b  reason: collision with root package name */
    private final c f24599b;

    /* renamed from: c  reason: collision with root package name */
    private final Requirements f24600c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f24601d = z0.B();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private C0174b f24602e;

    /* renamed from: f  reason: collision with root package name */
    private int f24603f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private d f24604g;

    /* compiled from: RequirementsWatcher.java */
    /* renamed from: com.google.android.exoplayer2.scheduler.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0174b extends BroadcastReceiver {
        private C0174b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            b.this.e();
        }
    }

    /* compiled from: RequirementsWatcher.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(b bVar, int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RequirementsWatcher.java */
    @RequiresApi(24)
    /* loaded from: classes2.dex */
    public final class d extends ConnectivityManager.NetworkCallback {

        /* renamed from: a  reason: collision with root package name */
        private boolean f24606a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f24607b;

        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            if (b.this.f24604g != null) {
                b.this.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            if (b.this.f24604g != null) {
                b.this.g();
            }
        }

        private void e() {
            b.this.f24601d.post(new Runnable() { // from class: com.google.android.exoplayer2.scheduler.c
                @Override // java.lang.Runnable
                public final void run() {
                    b.d.this.c();
                }
            });
        }

        private void f() {
            b.this.f24601d.post(new Runnable() { // from class: com.google.android.exoplayer2.scheduler.d
                @Override // java.lang.Runnable
                public final void run() {
                    b.d.this.d();
                }
            });
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            e();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onBlockedStatusChanged(Network network, boolean z9) {
            if (z9) {
                return;
            }
            f();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean hasCapability = networkCapabilities.hasCapability(16);
            if (this.f24606a && this.f24607b == hasCapability) {
                if (hasCapability) {
                    f();
                    return;
                }
                return;
            }
            this.f24606a = true;
            this.f24607b = hasCapability;
            e();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            e();
        }
    }

    public b(Context context, c cVar, Requirements requirements) {
        this.f24598a = context.getApplicationContext();
        this.f24599b = cVar;
        this.f24600c = requirements;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int notMetRequirements = this.f24600c.getNotMetRequirements(this.f24598a);
        if (this.f24603f != notMetRequirements) {
            this.f24603f = notMetRequirements;
            this.f24599b.a(this, notMetRequirements);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if ((this.f24603f & 3) == 0) {
            return;
        }
        e();
    }

    @RequiresApi(24)
    private void h() {
        d dVar = new d();
        this.f24604g = dVar;
        ((ConnectivityManager) com.google.android.exoplayer2.util.a.g((ConnectivityManager) this.f24598a.getSystemService("connectivity"))).registerDefaultNetworkCallback(dVar);
    }

    @RequiresApi(24)
    private void k() {
        ((ConnectivityManager) com.google.android.exoplayer2.util.a.g((ConnectivityManager) this.f24598a.getSystemService("connectivity"))).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) com.google.android.exoplayer2.util.a.g(this.f24604g));
        this.f24604g = null;
    }

    public Requirements f() {
        return this.f24600c;
    }

    public int i() {
        this.f24603f = this.f24600c.getNotMetRequirements(this.f24598a);
        IntentFilter intentFilter = new IntentFilter();
        if (this.f24600c.isNetworkRequired()) {
            if (z0.f27743a >= 24) {
                h();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.f24600c.isChargingRequired()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.f24600c.isIdleRequired()) {
            if (z0.f27743a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        if (this.f24600c.isStorageNotLowRequired()) {
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        }
        C0174b c0174b = new C0174b();
        this.f24602e = c0174b;
        this.f24598a.registerReceiver(c0174b, intentFilter, null, this.f24601d);
        return this.f24603f;
    }

    public void j() {
        this.f24598a.unregisterReceiver((BroadcastReceiver) com.google.android.exoplayer2.util.a.g(this.f24602e));
        this.f24602e = null;
        if (z0.f27743a < 24 || this.f24604g == null) {
            return;
        }
        k();
    }
}
