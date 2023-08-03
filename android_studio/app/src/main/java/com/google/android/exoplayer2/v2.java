package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;

/* compiled from: WakeLockManager.java */
/* loaded from: classes2.dex */
final class v2 {

    /* renamed from: e  reason: collision with root package name */
    private static final String f27821e = "WakeLockManager";

    /* renamed from: f  reason: collision with root package name */
    private static final String f27822f = "ExoPlayer:WakeLockManager";
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final PowerManager f27823a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private PowerManager.WakeLock f27824b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27825c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27826d;

    public v2(Context context) {
        this.f27823a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @SuppressLint({"WakelockTimeout"})
    private void c() {
        PowerManager.WakeLock wakeLock = this.f27824b;
        if (wakeLock == null) {
            return;
        }
        if (this.f27825c && this.f27826d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z9) {
        if (z9 && this.f27824b == null) {
            PowerManager powerManager = this.f27823a;
            if (powerManager == null) {
                com.google.android.exoplayer2.util.w.n(f27821e, "PowerManager is null, therefore not creating the WakeLock.");
                return;
            }
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, f27822f);
            this.f27824b = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        }
        this.f27825c = z9;
        c();
    }

    public void b(boolean z9) {
        this.f27826d = z9;
        c();
    }
}
