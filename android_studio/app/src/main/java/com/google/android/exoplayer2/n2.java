package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StreamVolumeManager.java */
/* loaded from: classes2.dex */
public final class n2 {

    /* renamed from: i  reason: collision with root package name */
    private static final String f24196i = "StreamVolumeManager";

    /* renamed from: j  reason: collision with root package name */
    private static final String f24197j = "android.media.VOLUME_CHANGED_ACTION";

    /* renamed from: k  reason: collision with root package name */
    private static final int f24198k = 1;

    /* renamed from: a  reason: collision with root package name */
    private final Context f24199a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f24200b;

    /* renamed from: c  reason: collision with root package name */
    private final b f24201c;

    /* renamed from: d  reason: collision with root package name */
    private final AudioManager f24202d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private c f24203e;

    /* renamed from: f  reason: collision with root package name */
    private int f24204f;

    /* renamed from: g  reason: collision with root package name */
    private int f24205g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f24206h;

    /* compiled from: StreamVolumeManager.java */
    /* loaded from: classes2.dex */
    public interface b {
        void H(int i4);

        void N(int i4, boolean z9);
    }

    /* compiled from: StreamVolumeManager.java */
    /* loaded from: classes2.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = n2.this.f24200b;
            final n2 n2Var = n2.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.o2
                @Override // java.lang.Runnable
                public final void run() {
                    n2.b(n2.this);
                }
            });
        }
    }

    public n2(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.f24199a = applicationContext;
        this.f24200b = handler;
        this.f24201c = bVar;
        AudioManager audioManager = (AudioManager) com.google.android.exoplayer2.util.a.k((AudioManager) applicationContext.getSystemService("audio"));
        this.f24202d = audioManager;
        this.f24204f = 3;
        this.f24205g = h(audioManager, 3);
        this.f24206h = f(audioManager, this.f24204f);
        c cVar = new c();
        try {
            applicationContext.registerReceiver(cVar, new IntentFilter(f24197j));
            this.f24203e = cVar;
        } catch (RuntimeException e4) {
            com.google.android.exoplayer2.util.w.o(f24196i, "Error registering stream volume receiver", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(n2 n2Var) {
        n2Var.o();
    }

    private static boolean f(AudioManager audioManager, int i4) {
        if (com.google.android.exoplayer2.util.z0.f27743a >= 23) {
            return audioManager.isStreamMute(i4);
        }
        return h(audioManager, i4) == 0;
    }

    private static int h(AudioManager audioManager, int i4) {
        try {
            return audioManager.getStreamVolume(i4);
        } catch (RuntimeException e4) {
            StringBuilder sb = new StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i4);
            com.google.android.exoplayer2.util.w.o(f24196i, sb.toString(), e4);
            return audioManager.getStreamMaxVolume(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        int h4 = h(this.f24202d, this.f24204f);
        boolean f10 = f(this.f24202d, this.f24204f);
        if (this.f24205g == h4 && this.f24206h == f10) {
            return;
        }
        this.f24205g = h4;
        this.f24206h = f10;
        this.f24201c.N(h4, f10);
    }

    public void c() {
        if (this.f24205g <= e()) {
            return;
        }
        this.f24202d.adjustStreamVolume(this.f24204f, -1, 1);
        o();
    }

    public int d() {
        return this.f24202d.getStreamMaxVolume(this.f24204f);
    }

    public int e() {
        if (com.google.android.exoplayer2.util.z0.f27743a >= 28) {
            return this.f24202d.getStreamMinVolume(this.f24204f);
        }
        return 0;
    }

    public int g() {
        return this.f24205g;
    }

    public void i() {
        if (this.f24205g >= d()) {
            return;
        }
        this.f24202d.adjustStreamVolume(this.f24204f, 1, 1);
        o();
    }

    public boolean j() {
        return this.f24206h;
    }

    public void k() {
        c cVar = this.f24203e;
        if (cVar != null) {
            try {
                this.f24199a.unregisterReceiver(cVar);
            } catch (RuntimeException e4) {
                com.google.android.exoplayer2.util.w.o(f24196i, "Error unregistering stream volume receiver", e4);
            }
            this.f24203e = null;
        }
    }

    public void l(boolean z9) {
        if (com.google.android.exoplayer2.util.z0.f27743a >= 23) {
            this.f24202d.adjustStreamVolume(this.f24204f, z9 ? -100 : 100, 1);
        } else {
            this.f24202d.setStreamMute(this.f24204f, z9);
        }
        o();
    }

    public void m(int i4) {
        if (this.f24204f == i4) {
            return;
        }
        this.f24204f = i4;
        o();
        this.f24201c.H(i4);
    }

    public void n(int i4) {
        if (i4 < e() || i4 > d()) {
            return;
        }
        this.f24202d.setStreamVolume(this.f24204f, i4, 1);
        o();
    }
}
