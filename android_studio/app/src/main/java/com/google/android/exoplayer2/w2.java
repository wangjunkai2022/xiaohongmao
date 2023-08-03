package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;

/* compiled from: WifiLockManager.java */
/* loaded from: classes2.dex */
final class w2 {

    /* renamed from: e  reason: collision with root package name */
    private static final String f28128e = "WifiLockManager";

    /* renamed from: f  reason: collision with root package name */
    private static final String f28129f = "ExoPlayer:WifiLockManager";
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final WifiManager f28130a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private WifiManager.WifiLock f28131b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28132c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f28133d;

    public w2(Context context) {
        this.f28130a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void c() {
        WifiManager.WifiLock wifiLock = this.f28131b;
        if (wifiLock == null) {
            return;
        }
        if (this.f28132c && this.f28133d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z9) {
        if (z9 && this.f28131b == null) {
            WifiManager wifiManager = this.f28130a;
            if (wifiManager == null) {
                com.google.android.exoplayer2.util.w.n(f28128e, "WifiManager is null, therefore not creating the WifiLock.");
                return;
            }
            WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, f28129f);
            this.f28131b = createWifiLock;
            createWifiLock.setReferenceCounted(false);
        }
        this.f28132c = z9;
        c();
    }

    public void b(boolean z9) {
        this.f28133d = z9;
        c();
    }
}
