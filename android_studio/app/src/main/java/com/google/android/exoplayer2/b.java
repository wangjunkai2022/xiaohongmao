package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

/* compiled from: AudioBecomingNoisyManager.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f21425a;

    /* renamed from: b  reason: collision with root package name */
    private final a f21426b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f21427c;

    /* compiled from: AudioBecomingNoisyManager.java */
    /* loaded from: classes2.dex */
    private final class a extends BroadcastReceiver implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0156b f21428a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f21429b;

        public a(Handler handler, InterfaceC0156b interfaceC0156b) {
            this.f21429b = handler;
            this.f21428a = interfaceC0156b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f21429b.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f21427c) {
                this.f21428a.I();
            }
        }
    }

    /* compiled from: AudioBecomingNoisyManager.java */
    /* renamed from: com.google.android.exoplayer2.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0156b {
        void I();
    }

    public b(Context context, Handler handler, InterfaceC0156b interfaceC0156b) {
        this.f21425a = context.getApplicationContext();
        this.f21426b = new a(handler, interfaceC0156b);
    }

    public void b(boolean z9) {
        if (z9 && !this.f21427c) {
            this.f21425a.registerReceiver(this.f21426b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f21427c = true;
        } else if (z9 || !this.f21427c) {
        } else {
            this.f21425a.unregisterReceiver(this.f21426b);
            this.f21427c = false;
        }
    }
}
