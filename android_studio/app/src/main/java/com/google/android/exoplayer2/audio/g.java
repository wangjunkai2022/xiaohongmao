package com.google.android.exoplayer2.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;

/* compiled from: AudioCapabilitiesReceiver.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final Context f21214a;

    /* renamed from: b  reason: collision with root package name */
    private final d f21215b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f21216c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final BroadcastReceiver f21217d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final b f21218e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    f f21219f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f21220g;

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes2.dex */
    private final class b extends ContentObserver {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f21221a;

        /* renamed from: b  reason: collision with root package name */
        private final Uri f21222b;

        public b(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.f21221a = contentResolver;
            this.f21222b = uri;
        }

        public void a() {
            this.f21221a.registerContentObserver(this.f21222b, false, this);
        }

        public void b() {
            this.f21221a.unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z9) {
            g gVar = g.this;
            gVar.c(f.c(gVar.f21214a));
        }
    }

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes2.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            g.this.c(f.d(context, intent));
        }
    }

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(f fVar);
    }

    public g(Context context, d dVar) {
        Context applicationContext = context.getApplicationContext();
        this.f21214a = applicationContext;
        this.f21215b = (d) com.google.android.exoplayer2.util.a.g(dVar);
        Handler B = z0.B();
        this.f21216c = B;
        this.f21217d = z0.f27743a >= 21 ? new c() : null;
        Uri e4 = f.e();
        this.f21218e = e4 != null ? new b(B, applicationContext.getContentResolver(), e4) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(f fVar) {
        if (!this.f21220g || fVar.equals(this.f21219f)) {
            return;
        }
        this.f21219f = fVar;
        this.f21215b.a(fVar);
    }

    public f d() {
        if (this.f21220g) {
            return (f) com.google.android.exoplayer2.util.a.g(this.f21219f);
        }
        this.f21220g = true;
        b bVar = this.f21218e;
        if (bVar != null) {
            bVar.a();
        }
        Intent intent = null;
        if (this.f21217d != null) {
            intent = this.f21214a.registerReceiver(this.f21217d, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.f21216c);
        }
        f d4 = f.d(this.f21214a, intent);
        this.f21219f = d4;
        return d4;
    }

    public void e() {
        if (this.f21220g) {
            this.f21219f = null;
            BroadcastReceiver broadcastReceiver = this.f21217d;
            if (broadcastReceiver != null) {
                this.f21214a.unregisterReceiver(broadcastReceiver);
            }
            b bVar = this.f21218e;
            if (bVar != null) {
                bVar.b();
            }
            this.f21220g = false;
        }
    }
}
