package com.ksyun.media.streamer.decoder;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.ksyun.media.streamer.framework.AVFrameBase;
import com.ksyun.media.streamer.framework.AVPacketBase;
import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public abstract class Decoder<I extends AVPacketBase, O extends AVFrameBase> {
    public static final int DECODER_STATE_DECODING = 2;
    public static final int DECODER_STATE_FLUSHED = 5;
    public static final int DECODER_STATE_FLUSHING = 4;
    public static final int DECODER_STATE_IDLE = 0;
    public static final int DECODER_STATE_INITIALIZING = 1;
    public static final int DECODER_STATE_STOPPING = 3;
    public static final int ERROR_UNKNOWN = -1;
    public static final int ERROR_UNSUPPORTED = -2;
    public static final int INFO_STARTED = 1;
    public static final int INFO_STOPPED = 2;

    /* renamed from: a  reason: collision with root package name */
    protected static final boolean f45872a = false;

    /* renamed from: g  reason: collision with root package name */
    private static final String f45873g = "Decoder";

    /* renamed from: h  reason: collision with root package name */
    private static final int f45874h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45875i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f45876j = 2;

    /* renamed from: b  reason: collision with root package name */
    protected int f45877b;

    /* renamed from: c  reason: collision with root package name */
    protected Object f45878c;

    /* renamed from: f  reason: collision with root package name */
    protected long f45881f;

    /* renamed from: l  reason: collision with root package name */
    private DecoderInfoListener f45883l;

    /* renamed from: m  reason: collision with root package name */
    private DecoderErrorListener f45884m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f45885n = false;

    /* renamed from: e  reason: collision with root package name */
    protected float f45880e = 1.0f;
    public SinkPin<I> mSinkPin = new a();
    public SrcPin<O> mSrcPin = new SrcPin<>();

    /* renamed from: d  reason: collision with root package name */
    protected AtomicInteger f45879d = new AtomicInteger(0);

    /* renamed from: k  reason: collision with root package name */
    private final Handler f45882k = new Handler(Looper.getMainLooper());

    /* loaded from: classes3.dex */
    public interface DecoderErrorListener {
        void onError(Decoder decoder, int i4);
    }

    /* loaded from: classes3.dex */
    public interface DecoderInfoListener {
        void onInfo(Decoder decoder, int i4, int i10);
    }

    /* loaded from: classes3.dex */
    private class a extends SinkPin<I> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(I i4) {
            Decoder.this.a((Decoder) i4);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            if (z9) {
                Decoder.this.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            Decoder decoder = Decoder.this;
            if (decoder.f45877b == 0) {
                decoder.f45878c = obj;
                if (obj instanceof ImgBufFormat) {
                    decoder.f45877b = 2;
                } else {
                    decoder.f45877b = 1;
                }
            }
            decoder.a(obj);
            if (Decoder.this.getAutoWork()) {
                Decoder.this.start();
            }
        }
    }

    public Decoder() {
        this.f45877b = 0;
        this.f45877b = 0;
    }

    protected abstract int a();

    protected abstract int a(I i4);

    protected void a(Object obj) {
    }

    protected boolean a(Object obj, Object obj2) {
        return false;
    }

    protected abstract void b();

    protected void c() {
    }

    public void flush() {
        if (this.f45879d.get() != 2) {
            Log.e(f45873g, "Call flush on invalid state");
            return;
        }
        this.f45879d.set(4);
        c();
        this.f45879d.set(5);
    }

    public boolean getAutoWork() {
        return this.f45885n;
    }

    public boolean isDecoding() {
        return this.f45879d.get() == 2;
    }

    public void release() {
        stop();
        this.mSrcPin.disconnect(true);
    }

    public void setAutoWork(boolean z9) {
        this.f45885n = z9;
    }

    public void setDecoderErrorListener(DecoderErrorListener decoderErrorListener) {
        this.f45884m = decoderErrorListener;
    }

    public void setDecoderInfoListener(DecoderInfoListener decoderInfoListener) {
        this.f45883l = decoderInfoListener;
    }

    public void setSpeed(float f10) {
        this.f45880e = f10;
    }

    public void start() {
        if (this.f45879d.get() != 0 && this.f45879d.get() != 3) {
            Log.i(f45873g, "Call start on invalid state");
        } else if (this.f45879d.get() == 0) {
            this.f45879d.set(1);
            int a10 = a();
            if (a10 == 0) {
                this.f45879d.set(2);
                a(1, 0);
                return;
            }
            this.f45879d.set(0);
            a(a10);
        }
    }

    public void stop() {
        if (this.f45879d.get() == 0 || this.f45879d.get() == 3) {
            return;
        }
        if (this.f45879d.get() == 2 || this.f45879d.get() == 5) {
            this.f45879d.set(3);
            b();
            this.f45879d.set(0);
            a(2, 0);
        }
    }

    protected void a(final int i4, final int i10) {
        this.f45882k.post(new Runnable() { // from class: com.ksyun.media.streamer.decoder.Decoder.1
            @Override // java.lang.Runnable
            public void run() {
                if (Decoder.this.f45883l != null) {
                    Decoder.this.f45883l.onInfo(Decoder.this, i4, i10);
                }
            }
        });
    }

    protected void a(final int i4) {
        this.f45882k.post(new Runnable() { // from class: com.ksyun.media.streamer.decoder.Decoder.2
            @Override // java.lang.Runnable
            public void run() {
                if (Decoder.this.f45884m != null) {
                    Decoder.this.f45884m.onError(Decoder.this, i4);
                }
            }
        });
    }
}
