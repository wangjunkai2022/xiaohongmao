package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.mediacodec.c;
import com.google.android.exoplayer2.mediacodec.k;
import com.google.android.exoplayer2.util.v0;
import com.google.common.base.i0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsynchronousMediaCodecAdapter.java */
@RequiresApi(23)
/* loaded from: classes2.dex */
public final class c implements k {

    /* renamed from: g  reason: collision with root package name */
    private static final int f24009g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f24010h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f24011i = 2;

    /* renamed from: j  reason: collision with root package name */
    private static final int f24012j = 3;

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f24013a;

    /* renamed from: b  reason: collision with root package name */
    private final h f24014b;

    /* renamed from: c  reason: collision with root package name */
    private final f f24015c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f24016d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f24017e;

    /* renamed from: f  reason: collision with root package name */
    private int f24018f;

    /* compiled from: AsynchronousMediaCodecAdapter.java */
    /* loaded from: classes2.dex */
    public static final class b implements k.b {

        /* renamed from: b  reason: collision with root package name */
        private final i0<HandlerThread> f24019b;

        /* renamed from: c  reason: collision with root package name */
        private final i0<HandlerThread> f24020c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f24021d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f24022e;

        public b(int i4) {
            this(i4, false, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread e(int i4) {
            return new HandlerThread(c.t(i4));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i4) {
            return new HandlerThread(c.u(i4));
        }

        @Override // com.google.android.exoplayer2.mediacodec.k.b
        /* renamed from: d */
        public c a(k.a aVar) throws IOException {
            MediaCodec mediaCodec;
            String str = aVar.f24069a.f24078a;
            c cVar = null;
            try {
                String valueOf = String.valueOf(str);
                v0.a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    c cVar2 = new c(mediaCodec, this.f24019b.get(), this.f24020c.get(), this.f24021d, this.f24022e);
                    try {
                        v0.c();
                        v0.a("configureCodec");
                        cVar2.s(aVar.f24070b, aVar.f24072d, aVar.f24073e, aVar.f24074f);
                        v0.c();
                        v0.a("startCodec");
                        cVar2.A();
                        v0.c();
                        return cVar2;
                    } catch (Exception e4) {
                        e = e4;
                        cVar = cVar2;
                        if (cVar != null) {
                            cVar.release();
                        } else if (mediaCodec != null) {
                            mediaCodec.release();
                        }
                        throw e;
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
                mediaCodec = null;
            }
        }

        public b(final int i4, boolean z9, boolean z10) {
            this(new i0() { // from class: com.google.android.exoplayer2.mediacodec.d
                @Override // com.google.common.base.i0
                public final Object get() {
                    HandlerThread e4;
                    e4 = c.b.e(i4);
                    return e4;
                }
            }, new i0() { // from class: com.google.android.exoplayer2.mediacodec.e
                @Override // com.google.common.base.i0
                public final Object get() {
                    HandlerThread f10;
                    f10 = c.b.f(i4);
                    return f10;
                }
            }, z9, z10);
        }

        @VisibleForTesting
        b(i0<HandlerThread> i0Var, i0<HandlerThread> i0Var2, boolean z9, boolean z10) {
            this.f24019b = i0Var;
            this.f24020c = i0Var2;
            this.f24021d = z9;
            this.f24022e = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        this.f24015c.s();
        this.f24013a.start();
        this.f24018f = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(@Nullable MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i4) {
        this.f24014b.h(this.f24013a);
        this.f24013a.configure(mediaFormat, surface, mediaCrypto, i4);
        this.f24018f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String t(int i4) {
        return v(i4, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String u(int i4) {
        return v(i4, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String v(int i4, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i4 == 1) {
            sb.append("Audio");
        } else if (i4 == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i4);
            sb.append(")");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(k.c cVar, MediaCodec mediaCodec, long j4, long j10) {
        cVar.a(this, j4, j10);
    }

    private void x() {
        if (this.f24016d) {
            try {
                this.f24015c.t();
            } catch (InterruptedException e4) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e4);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void a(int i4, int i10, com.google.android.exoplayer2.decoder.b bVar, long j4, int i11) {
        this.f24015c.o(i4, i10, bVar, j4, i11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public MediaFormat b() {
        return this.f24014b.g();
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void c(final k.c cVar, Handler handler) {
        x();
        this.f24013a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j4, long j10) {
                c.this.w(cVar, mediaCodec, j4, j10);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @Nullable
    public ByteBuffer d(int i4) {
        return this.f24013a.getInputBuffer(i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void e(Surface surface) {
        x();
        this.f24013a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void f(int i4, int i10, int i11, long j4, int i12) {
        this.f24015c.n(i4, i10, i11, j4, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void flush() {
        this.f24015c.i();
        this.f24013a.flush();
        h hVar = this.f24014b;
        final MediaCodec mediaCodec = this.f24013a;
        Objects.requireNonNull(mediaCodec);
        hVar.e(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec.b
            @Override // java.lang.Runnable
            public final void run() {
                mediaCodec.start();
            }
        });
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void g(Bundle bundle) {
        x();
        this.f24013a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void h(int i4, long j4) {
        this.f24013a.releaseOutputBuffer(i4, j4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public int i() {
        return this.f24014b.c();
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public int j(MediaCodec.BufferInfo bufferInfo) {
        return this.f24014b.d(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void k(int i4, boolean z9) {
        this.f24013a.releaseOutputBuffer(i4, z9);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @Nullable
    public ByteBuffer l(int i4) {
        return this.f24013a.getOutputBuffer(i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void p(int i4) {
        x();
        this.f24013a.setVideoScalingMode(i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void release() {
        try {
            if (this.f24018f == 2) {
                this.f24015c.r();
            }
            int i4 = this.f24018f;
            if (i4 == 1 || i4 == 2) {
                this.f24014b.q();
            }
            this.f24018f = 3;
        } finally {
            if (!this.f24017e) {
                this.f24013a.release();
                this.f24017e = true;
            }
        }
    }

    @VisibleForTesting
    void y(MediaCodec.CodecException codecException) {
        this.f24014b.onError(this.f24013a, codecException);
    }

    @VisibleForTesting
    void z(MediaFormat mediaFormat) {
        this.f24014b.onOutputFormatChanged(this.f24013a, mediaFormat);
    }

    private c(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z9, boolean z10) {
        this.f24013a = mediaCodec;
        this.f24014b = new h(handlerThread);
        this.f24015c = new f(mediaCodec, handlerThread2, z9);
        this.f24016d = z10;
        this.f24018f = 0;
    }
}
