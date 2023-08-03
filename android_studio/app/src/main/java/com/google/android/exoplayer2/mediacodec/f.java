package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
@RequiresApi(23)
/* loaded from: classes2.dex */
class f {

    /* renamed from: h  reason: collision with root package name */
    private static final int f24025h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f24026i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f24027j = 2;
    @GuardedBy("MESSAGE_PARAMS_INSTANCE_POOL")

    /* renamed from: k  reason: collision with root package name */
    private static final ArrayDeque<b> f24028k = new ArrayDeque<>();

    /* renamed from: l  reason: collision with root package name */
    private static final Object f24029l = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f24030a;

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f24031b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f24032c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<RuntimeException> f24033d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f24034e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f24035f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f24036g;

    /* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
    /* loaded from: classes2.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            f.this.f(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsynchronousMediaCodecBufferEnqueuer.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f24038a;

        /* renamed from: b  reason: collision with root package name */
        public int f24039b;

        /* renamed from: c  reason: collision with root package name */
        public int f24040c;

        /* renamed from: d  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f24041d = new MediaCodec.CryptoInfo();

        /* renamed from: e  reason: collision with root package name */
        public long f24042e;

        /* renamed from: f  reason: collision with root package name */
        public int f24043f;

        b() {
        }

        public void a(int i4, int i10, int i11, long j4, int i12) {
            this.f24038a = i4;
            this.f24039b = i10;
            this.f24040c = i11;
            this.f24042e = j4;
            this.f24043f = i12;
        }
    }

    public f(MediaCodec mediaCodec, HandlerThread handlerThread, boolean z9) {
        this(mediaCodec, handlerThread, z9, new com.google.android.exoplayer2.util.g());
    }

    private void b() throws InterruptedException {
        this.f24034e.d();
        ((Handler) z0.k(this.f24032c)).obtainMessage(2).sendToTarget();
        this.f24034e.a();
    }

    private static void c(com.google.android.exoplayer2.decoder.b bVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = bVar.f21584f;
        cryptoInfo.numBytesOfClearData = e(bVar.f21582d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(bVar.f21583e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) com.google.android.exoplayer2.util.a.g(d(bVar.f21580b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) com.google.android.exoplayer2.util.a.g(d(bVar.f21579a, cryptoInfo.iv));
        cryptoInfo.mode = bVar.f21581c;
        if (z0.f27743a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(bVar.f21585g, bVar.f21586h));
        }
    }

    @Nullable
    private static byte[] d(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 != null && bArr2.length >= bArr.length) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    @Nullable
    private static int[] e(@Nullable int[] iArr, @Nullable int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 != null && iArr2.length >= iArr.length) {
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Message message) {
        b bVar;
        int i4 = message.what;
        if (i4 == 0) {
            bVar = (b) message.obj;
            g(bVar.f24038a, bVar.f24039b, bVar.f24040c, bVar.f24042e, bVar.f24043f);
        } else if (i4 != 1) {
            if (i4 != 2) {
                q(new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.f24034e.f();
            }
            bVar = null;
        } else {
            bVar = (b) message.obj;
            h(bVar.f24038a, bVar.f24039b, bVar.f24041d, bVar.f24042e, bVar.f24043f);
        }
        if (bVar != null) {
            p(bVar);
        }
    }

    private void g(int i4, int i10, int i11, long j4, int i12) {
        try {
            this.f24030a.queueInputBuffer(i4, i10, i11, j4, i12);
        } catch (RuntimeException e4) {
            q(e4);
        }
    }

    private void h(int i4, int i10, MediaCodec.CryptoInfo cryptoInfo, long j4, int i11) {
        try {
            if (this.f24035f) {
                synchronized (f24029l) {
                    this.f24030a.queueSecureInputBuffer(i4, i10, cryptoInfo, j4, i11);
                }
            } else {
                this.f24030a.queueSecureInputBuffer(i4, i10, cryptoInfo, j4, i11);
            }
        } catch (RuntimeException e4) {
            q(e4);
        }
    }

    private void j() throws InterruptedException {
        ((Handler) z0.k(this.f24032c)).removeCallbacksAndMessages(null);
        b();
        l();
    }

    private static b k() {
        ArrayDeque<b> arrayDeque = f24028k;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new b();
            }
            return arrayDeque.removeFirst();
        }
    }

    private void l() {
        RuntimeException andSet = this.f24033d.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    private static boolean m() {
        String g4 = com.google.common.base.c.g(z0.f27745c);
        return g4.contains("samsung") || g4.contains("motorola");
    }

    private static void p(b bVar) {
        ArrayDeque<b> arrayDeque = f24028k;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public void i() {
        if (this.f24036g) {
            try {
                j();
            } catch (InterruptedException e4) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e4);
            }
        }
    }

    public void n(int i4, int i10, int i11, long j4, int i12) {
        l();
        b k10 = k();
        k10.a(i4, i10, i11, j4, i12);
        ((Handler) z0.k(this.f24032c)).obtainMessage(0, k10).sendToTarget();
    }

    public void o(int i4, int i10, com.google.android.exoplayer2.decoder.b bVar, long j4, int i11) {
        l();
        b k10 = k();
        k10.a(i4, i10, 0, j4, i11);
        c(bVar, k10.f24041d);
        ((Handler) z0.k(this.f24032c)).obtainMessage(1, k10).sendToTarget();
    }

    @VisibleForTesting
    void q(RuntimeException runtimeException) {
        this.f24033d.set(runtimeException);
    }

    public void r() {
        if (this.f24036g) {
            i();
            this.f24031b.quit();
        }
        this.f24036g = false;
    }

    public void s() {
        if (this.f24036g) {
            return;
        }
        this.f24031b.start();
        this.f24032c = new a(this.f24031b.getLooper());
        this.f24036g = true;
    }

    public void t() throws InterruptedException {
        b();
    }

    @VisibleForTesting
    f(MediaCodec mediaCodec, HandlerThread handlerThread, boolean z9, com.google.android.exoplayer2.util.g gVar) {
        this.f24030a = mediaCodec;
        this.f24031b = handlerThread;
        this.f24034e = gVar;
        this.f24033d = new AtomicReference<>();
        this.f24035f = z9 || m();
    }
}
