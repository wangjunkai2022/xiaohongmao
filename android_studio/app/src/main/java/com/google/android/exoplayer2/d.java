package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.d;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AudioFocusManager.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: j  reason: collision with root package name */
    public static final int f21529j = -1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f21530k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f21531l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int f21532m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f21533n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f21534o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f21535p = 3;

    /* renamed from: q  reason: collision with root package name */
    private static final String f21536q = "AudioFocusManager";

    /* renamed from: r  reason: collision with root package name */
    private static final float f21537r = 0.2f;

    /* renamed from: s  reason: collision with root package name */
    private static final float f21538s = 1.0f;

    /* renamed from: a  reason: collision with root package name */
    private final AudioManager f21539a;

    /* renamed from: b  reason: collision with root package name */
    private final a f21540b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private c f21541c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f21542d;

    /* renamed from: f  reason: collision with root package name */
    private int f21544f;

    /* renamed from: h  reason: collision with root package name */
    private AudioFocusRequest f21546h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f21547i;

    /* renamed from: g  reason: collision with root package name */
    private float f21545g = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private int f21543e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioFocusManager.java */
    /* loaded from: classes2.dex */
    public class a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f21548a;

        public a(Handler handler) {
            this.f21548a = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i4) {
            d.this.i(i4);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i4) {
            this.f21548a.post(new Runnable() { // from class: com.google.android.exoplayer2.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.a.this.b(i4);
                }
            });
        }
    }

    /* compiled from: AudioFocusManager.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: AudioFocusManager.java */
    /* loaded from: classes2.dex */
    public interface c {
        void W(float f10);

        void Y(int i4);
    }

    public d(Context context, Handler handler, c cVar) {
        this.f21539a = (AudioManager) com.google.android.exoplayer2.util.a.g((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f21541c = cVar;
        this.f21540b = new a(handler);
    }

    private void a() {
        this.f21539a.abandonAudioFocus(this.f21540b);
    }

    private void b() {
        if (this.f21543e == 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.z0.f27743a >= 26) {
            c();
        } else {
            a();
        }
        o(0);
    }

    @RequiresApi(26)
    private void c() {
        AudioFocusRequest audioFocusRequest = this.f21546h;
        if (audioFocusRequest != null) {
            this.f21539a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int e(@Nullable com.google.android.exoplayer2.audio.e eVar) {
        if (eVar == null) {
            return 0;
        }
        int i4 = eVar.f21193c;
        switch (i4) {
            case 0:
                com.google.android.exoplayer2.util.w.n(f21536q, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                break;
            case 11:
                if (eVar.f21191a == 1) {
                    return 2;
                }
                break;
            case 15:
            default:
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unidentified audio usage: ");
                sb.append(i4);
                com.google.android.exoplayer2.util.w.n(f21536q, sb.toString());
                return 0;
            case 16:
                return com.google.android.exoplayer2.util.z0.f27743a >= 19 ? 4 : 2;
        }
        return 3;
    }

    private void f(int i4) {
        c cVar = this.f21541c;
        if (cVar != null) {
            cVar.Y(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i4) {
        if (i4 == -3 || i4 == -2) {
            if (i4 != -2 && !r()) {
                o(3);
                return;
            }
            f(0);
            o(2);
        } else if (i4 == -1) {
            f(-1);
            b();
        } else if (i4 != 1) {
            StringBuilder sb = new StringBuilder(38);
            sb.append("Unknown focus change type: ");
            sb.append(i4);
            com.google.android.exoplayer2.util.w.n(f21536q, sb.toString());
        } else {
            o(1);
            f(1);
        }
    }

    private int k() {
        if (this.f21543e == 1) {
            return 1;
        }
        if ((com.google.android.exoplayer2.util.z0.f27743a >= 26 ? m() : l()) == 1) {
            o(1);
            return 1;
        }
        o(0);
        return -1;
    }

    private int l() {
        return this.f21539a.requestAudioFocus(this.f21540b, com.google.android.exoplayer2.util.z0.m0(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.g(this.f21542d)).f21193c), this.f21544f);
    }

    @RequiresApi(26)
    private int m() {
        AudioFocusRequest.Builder builder;
        AudioFocusRequest audioFocusRequest = this.f21546h;
        if (audioFocusRequest == null || this.f21547i) {
            if (audioFocusRequest == null) {
                builder = new AudioFocusRequest.Builder(this.f21544f);
            } else {
                builder = new AudioFocusRequest.Builder(this.f21546h);
            }
            this.f21546h = builder.setAudioAttributes(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.g(this.f21542d)).b()).setWillPauseWhenDucked(r()).setOnAudioFocusChangeListener(this.f21540b).build();
            this.f21547i = false;
        }
        return this.f21539a.requestAudioFocus(this.f21546h);
    }

    private void o(int i4) {
        if (this.f21543e == i4) {
            return;
        }
        this.f21543e = i4;
        float f10 = i4 == 3 ? 0.2f : 1.0f;
        if (this.f21545g == f10) {
            return;
        }
        this.f21545g = f10;
        c cVar = this.f21541c;
        if (cVar != null) {
            cVar.W(f10);
        }
    }

    private boolean p(int i4) {
        return i4 == 1 || this.f21544f != 1;
    }

    private boolean r() {
        com.google.android.exoplayer2.audio.e eVar = this.f21542d;
        return eVar != null && eVar.f21191a == 1;
    }

    @VisibleForTesting
    AudioManager.OnAudioFocusChangeListener g() {
        return this.f21540b;
    }

    public float h() {
        return this.f21545g;
    }

    public void j() {
        this.f21541c = null;
        b();
    }

    public void n(@Nullable com.google.android.exoplayer2.audio.e eVar) {
        if (com.google.android.exoplayer2.util.z0.c(this.f21542d, eVar)) {
            return;
        }
        this.f21542d = eVar;
        int e4 = e(eVar);
        this.f21544f = e4;
        boolean z9 = true;
        if (e4 != 1 && e4 != 0) {
            z9 = false;
        }
        com.google.android.exoplayer2.util.a.b(z9, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int q(boolean z9, int i4) {
        if (p(i4)) {
            b();
            return z9 ? 1 : -1;
        } else if (z9) {
            return k();
        } else {
            return -1;
        }
    }
}
