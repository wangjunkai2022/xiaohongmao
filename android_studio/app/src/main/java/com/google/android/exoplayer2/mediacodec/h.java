package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsynchronousMediaCodecCallback.java */
@RequiresApi(23)
/* loaded from: classes2.dex */
public final class h extends MediaCodec.Callback {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f24047b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f24048c;
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: h  reason: collision with root package name */
    private MediaFormat f24053h;
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: i  reason: collision with root package name */
    private MediaFormat f24054i;
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: j  reason: collision with root package name */
    private MediaCodec.CodecException f24055j;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: k  reason: collision with root package name */
    private long f24056k;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: l  reason: collision with root package name */
    private boolean f24057l;
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: m  reason: collision with root package name */
    private IllegalStateException f24058m;

    /* renamed from: a  reason: collision with root package name */
    private final Object f24046a = new Object();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.r f24049d = new com.google.android.exoplayer2.util.r();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.r f24050e = new com.google.android.exoplayer2.util.r();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<MediaCodec.BufferInfo> f24051f = new ArrayDeque<>();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<MediaFormat> f24052g = new ArrayDeque<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(HandlerThread handlerThread) {
        this.f24047b = handlerThread;
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void b(MediaFormat mediaFormat) {
        this.f24050e.a(-2);
        this.f24052g.add(mediaFormat);
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void f() {
        if (!this.f24052g.isEmpty()) {
            this.f24054i = this.f24052g.getLast();
        }
        this.f24049d.c();
        this.f24050e.c();
        this.f24051f.clear();
        this.f24052g.clear();
        this.f24055j = null;
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private boolean i() {
        return this.f24056k > 0 || this.f24057l;
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void k() {
        l();
        m();
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void l() {
        IllegalStateException illegalStateException = this.f24058m;
        if (illegalStateException == null) {
            return;
        }
        this.f24058m = null;
        throw illegalStateException;
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void m() {
        MediaCodec.CodecException codecException = this.f24055j;
        if (codecException == null) {
            return;
        }
        this.f24055j = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void j(Runnable runnable) {
        synchronized (this.f24046a) {
            o(runnable);
        }
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private void o(Runnable runnable) {
        if (this.f24057l) {
            return;
        }
        long j4 = this.f24056k - 1;
        this.f24056k = j4;
        if (j4 > 0) {
            return;
        }
        if (j4 < 0) {
            p(new IllegalStateException());
            return;
        }
        f();
        try {
            runnable.run();
        } catch (IllegalStateException e4) {
            p(e4);
        } catch (Exception e10) {
            p(new IllegalStateException(e10));
        }
    }

    private void p(IllegalStateException illegalStateException) {
        synchronized (this.f24046a) {
            this.f24058m = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f24046a) {
            int i4 = -1;
            if (i()) {
                return -1;
            }
            k();
            if (!this.f24049d.e()) {
                i4 = this.f24049d.f();
            }
            return i4;
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f24046a) {
            if (i()) {
                return -1;
            }
            k();
            if (this.f24050e.e()) {
                return -1;
            }
            int f10 = this.f24050e.f();
            if (f10 >= 0) {
                com.google.android.exoplayer2.util.a.k(this.f24053h);
                MediaCodec.BufferInfo remove = this.f24051f.remove();
                bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
            } else if (f10 == -2) {
                this.f24053h = this.f24052g.remove();
            }
            return f10;
        }
    }

    public void e(final Runnable runnable) {
        synchronized (this.f24046a) {
            this.f24056k++;
            ((Handler) z0.k(this.f24048c)).post(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec.g
                @Override // java.lang.Runnable
                public final void run() {
                    h.this.j(runnable);
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f24046a) {
            mediaFormat = this.f24053h;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        com.google.android.exoplayer2.util.a.i(this.f24048c == null);
        this.f24047b.start();
        Handler handler = new Handler(this.f24047b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f24048c = handler;
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(@NonNull MediaCodec mediaCodec, @NonNull MediaCodec.CodecException codecException) {
        synchronized (this.f24046a) {
            this.f24055j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(@NonNull MediaCodec mediaCodec, int i4) {
        synchronized (this.f24046a) {
            this.f24049d.a(i4);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(@NonNull MediaCodec mediaCodec, int i4, @NonNull MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f24046a) {
            MediaFormat mediaFormat = this.f24054i;
            if (mediaFormat != null) {
                b(mediaFormat);
                this.f24054i = null;
            }
            this.f24050e.a(i4);
            this.f24051f.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(@NonNull MediaCodec mediaCodec, @NonNull MediaFormat mediaFormat) {
        synchronized (this.f24046a) {
            b(mediaFormat);
            this.f24054i = null;
        }
    }

    public void q() {
        synchronized (this.f24046a) {
            this.f24057l = true;
            this.f24047b.quit();
            f();
        }
    }
}
