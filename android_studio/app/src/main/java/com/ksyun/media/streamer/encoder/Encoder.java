package com.ksyun.media.streamer.encoder;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.ksyun.media.streamer.framework.AVFrameBase;
import com.ksyun.media.streamer.framework.AVPacketBase;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.c;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public abstract class Encoder<I extends AVFrameBase, O extends AVPacketBase> {
    public static final int ENCODER_ERROR_UNKNOWN = -1001;
    public static final int ENCODER_ERROR_UNSUPPORTED = -1002;
    public static final int ENCODER_STATE_ENCODING = 2;
    public static final int ENCODER_STATE_FLUSHED = 5;
    public static final int ENCODER_STATE_FLUSHING = 4;
    public static final int ENCODER_STATE_IDLE = 0;
    public static final int ENCODER_STATE_INITIALIZING = 1;
    public static final int ENCODER_STATE_STOPPING = 3;
    public static final int INFO_STARTED = 1;
    public static final int INFO_STOPPED = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final String f46063k = "Encoder";

    /* renamed from: l  reason: collision with root package name */
    private static final boolean f46064l = false;

    /* renamed from: m  reason: collision with root package name */
    private static final boolean f46065m = false;

    /* renamed from: n  reason: collision with root package name */
    private static final int f46066n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f46067o = 2;

    /* renamed from: p  reason: collision with root package name */
    private static final int f46068p = 3;

    /* renamed from: q  reason: collision with root package name */
    private static final int f46069q = 4;

    /* renamed from: r  reason: collision with root package name */
    private static final int f46070r = 5;

    /* renamed from: s  reason: collision with root package name */
    private static final int f46071s = 10;

    /* renamed from: t  reason: collision with root package name */
    private static final int f46072t = 11;

    /* renamed from: u  reason: collision with root package name */
    private static final int f46073u = 12;

    /* renamed from: v  reason: collision with root package name */
    private static final int f46074v = 0;

    /* renamed from: w  reason: collision with root package name */
    private static final int f46075w = 1;

    /* renamed from: x  reason: collision with root package name */
    private static final int f46076x = 2;
    private EncoderListener A;
    private ByteBuffer E;
    private AVPacketBase F;
    private Timer G;
    private I H;

    /* renamed from: b  reason: collision with root package name */
    protected Object f46078b;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f46081e;

    /* renamed from: g  reason: collision with root package name */
    protected HandlerThread f46083g;

    /* renamed from: h  reason: collision with root package name */
    protected Handler f46084h;

    /* renamed from: z  reason: collision with root package name */
    private EncoderInfoListener f46088z;

    /* renamed from: a  reason: collision with root package name */
    protected int f46077a = 0;

    /* renamed from: i  reason: collision with root package name */
    protected ConditionVariable f46085i = new ConditionVariable();
    private boolean C = false;
    private boolean D = false;
    public SinkPin<I> mSinkPin = new a();
    public SrcPin<O> mSrcPin = new SrcPin<>();

    /* renamed from: f  reason: collision with root package name */
    protected AtomicInteger f46082f = new AtomicInteger(0);

    /* renamed from: d  reason: collision with root package name */
    protected AtomicInteger f46080d = new AtomicInteger(0);

    /* renamed from: c  reason: collision with root package name */
    protected AtomicInteger f46079c = new AtomicInteger(0);

    /* renamed from: y  reason: collision with root package name */
    private final Handler f46087y = new Handler(Looper.getMainLooper());
    private c B = new c();

    /* renamed from: j  reason: collision with root package name */
    protected volatile boolean f46086j = false;

    /* loaded from: classes3.dex */
    public interface EncoderInfoListener {
        void onInfo(Encoder encoder, int i4, int i10);
    }

    /* loaded from: classes3.dex */
    public interface EncoderListener {
        void onError(Encoder encoder, int i4);
    }

    /* loaded from: classes3.dex */
    private class a extends SinkPin<I> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            if (z9) {
                Encoder.this.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            if (Encoder.this.getState() == 0 && Encoder.this.getAutoWork()) {
                Encoder encoder = Encoder.this;
                if (encoder.a(obj, encoder.f46078b)) {
                    if (Encoder.this.getUseSyncMode()) {
                        Encoder.this.f46085i.close();
                    }
                    Encoder.this.start();
                    if (Encoder.this.getUseSyncMode()) {
                        Encoder.this.f46085i.block();
                        return;
                    }
                    return;
                }
                return;
            }
            Encoder encoder2 = Encoder.this;
            if (encoder2.f46083g != null) {
                Encoder.this.f46084h.sendMessage(encoder2.f46084h.obtainMessage(10, obj));
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFrameAvailable(I i4) {
            if (Encoder.this.isEncoding()) {
                Encoder encoder = Encoder.this;
                if (encoder.f46077a == 2 && i4.flags == 0) {
                    float f10 = ((VideoCodecFormat) encoder.f46078b).frameRate;
                    if (f10 > 0.0f) {
                        long j4 = i4.pts;
                        if (encoder.f46079c.get() == 0) {
                            Encoder.this.B.a(f10, j4);
                        }
                        if (Encoder.this.B.a(j4)) {
                            return;
                        }
                    }
                }
                Encoder encoder2 = Encoder.this;
                boolean z9 = false;
                boolean z10 = true;
                if ((encoder2.f46077a == 2 && encoder2.f46084h.hasMessages(11)) || Encoder.this.c((Encoder) i4)) {
                    z9 = true;
                } else {
                    z10 = (Encoder.this.getUseSyncMode() && (i4.flags & 4) == 0) ? false : false;
                    if (z10) {
                        Encoder.this.f46085i.close();
                    }
                    Encoder.this.f46084h.sendMessage(Encoder.this.f46084h.obtainMessage(11, i4));
                    if (z10) {
                        Encoder.this.f46085i.block();
                    }
                }
                if (z9) {
                    Encoder.this.f46080d.incrementAndGet();
                }
            }
        }
    }

    public Encoder() {
        c();
    }

    protected abstract int a(Object obj);

    protected abstract void a();

    protected abstract void a(int i4);

    protected void a(I i4) {
    }

    protected boolean a(Object obj, Object obj2) {
        return false;
    }

    public void adjustBitrate(int i4) {
        if (this.f46082f.get() != 2) {
            Log.e(f46063k, "Call adjustBitrate on invalid state");
        } else if (this.f46083g != null) {
            this.f46084h.sendMessage(this.f46084h.obtainMessage(4, i4, 0));
        }
    }

    protected abstract int b(I i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
    }

    protected void b(Object obj) {
    }

    protected boolean c(I i4) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void configure(java.lang.Object r3) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "config encoder width "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "Encoder"
            android.util.Log.d(r1, r0)
            boolean r0 = r3 instanceof com.ksyun.media.streamer.encoder.AudioEncodeFormat
            if (r0 == 0) goto L23
            com.ksyun.media.streamer.framework.AudioCodecFormat r0 = new com.ksyun.media.streamer.framework.AudioCodecFormat
            com.ksyun.media.streamer.encoder.AudioEncodeFormat r3 = (com.ksyun.media.streamer.encoder.AudioEncodeFormat) r3
            r0.<init>(r3)
        L21:
            r3 = r0
            goto L2f
        L23:
            boolean r0 = r3 instanceof com.ksyun.media.streamer.encoder.VideoEncodeFormat
            if (r0 == 0) goto L2f
            com.ksyun.media.streamer.framework.VideoCodecFormat r0 = new com.ksyun.media.streamer.framework.VideoCodecFormat
            com.ksyun.media.streamer.encoder.VideoEncodeFormat r3 = (com.ksyun.media.streamer.encoder.VideoEncodeFormat) r3
            r0.<init>(r3)
            goto L21
        L2f:
            r2.f46078b = r3
            int r0 = r2.f46077a
            if (r0 != 0) goto L44
            boolean r0 = r3 instanceof com.ksyun.media.streamer.framework.AudioCodecFormat
            if (r0 == 0) goto L3d
            r3 = 1
            r2.f46077a = r3
            goto L44
        L3d:
            boolean r3 = r3 instanceof com.ksyun.media.streamer.framework.VideoCodecFormat
            if (r3 == 0) goto L44
            r3 = 2
            r2.f46077a = r3
        L44:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.encoder.Encoder.configure(java.lang.Object):void");
    }

    public void flush() {
        if (this.f46082f.get() != 2) {
            Log.e(f46063k, "Call flush on invalid state");
        } else if (this.f46083g != null) {
            this.f46084h.sendEmptyMessage(5);
        }
    }

    public void forceKeyFrame() {
        this.f46086j = true;
    }

    public boolean getAutoWork() {
        return this.D;
    }

    public Object getEncodeFormat() {
        return this.f46078b;
    }

    public AVPacketBase getExtra() {
        AVPacketBase aVPacketBase = this.F;
        if (aVPacketBase != null) {
            if (aVPacketBase instanceof ImgPacket) {
                return new ImgPacket((ImgPacket) aVPacketBase);
            }
            if (aVPacketBase instanceof AudioPacket) {
                return new AudioPacket((AudioPacket) aVPacketBase);
            }
            return null;
        }
        return null;
    }

    public int getFrameDropped() {
        if (StatsLogReport.getInstance().isPermitLogReport()) {
            return this.f46080d.get();
        }
        Log.w(f46063k, "you must enableStreamStatModule");
        return 0;
    }

    public int getFrameEncoded() {
        if (StatsLogReport.getInstance().isPermitLogReport()) {
            return this.f46079c.get();
        }
        Log.w(f46063k, "you must enableStreamStatModule");
        return 0;
    }

    public SinkPin<I> getSinkPin() {
        return this.mSinkPin;
    }

    public SrcPin<O> getSrcPin() {
        return this.mSrcPin;
    }

    public int getState() {
        return this.f46082f.get();
    }

    public boolean getUseSyncMode() {
        return this.C;
    }

    public boolean isEncoding() {
        return this.f46082f.get() == 2;
    }

    public void release() {
        stop();
        this.mSrcPin.disconnect(true);
        if (this.f46083g != null) {
            this.f46084h.sendEmptyMessage(3);
            try {
                this.f46083g.join();
            } catch (InterruptedException unused) {
                Log.d(f46063k, "Encode Thread Interrupted!");
            }
            this.f46083g = null;
        }
    }

    public void setAutoWork(boolean z9) {
        this.D = z9;
    }

    public void setEncoderInfoListener(EncoderInfoListener encoderInfoListener) {
        this.f46088z = encoderInfoListener;
    }

    public void setEncoderListener(EncoderListener encoderListener) {
        this.A = encoderListener;
    }

    public void setMute(boolean z9) {
        this.f46081e = z9;
    }

    public void setUseSyncMode(boolean z9) {
        this.C = z9;
    }

    public void start() {
        if (this.f46082f.get() != 0 && this.f46082f.get() != 3) {
            Log.i(f46063k, "Call start on invalid state");
        } else if (this.f46083g != null) {
            this.f46084h.sendMessage(this.f46084h.obtainMessage(1, this.f46078b));
        }
    }

    public void startRepeatLastFrame() {
        if (this.f46082f.get() == 2 && this.f46077a == 2 && this.G == null && this.H != null) {
            int i4 = (int) (1000.0f / ((VideoCodecFormat) this.f46078b).frameRate);
            Timer timer = new Timer();
            this.G = timer;
            long j4 = i4;
            timer.schedule(new TimerTask() { // from class: com.ksyun.media.streamer.encoder.Encoder.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (!Encoder.this.f46084h.hasMessages(12)) {
                        if (Encoder.this.H != null) {
                            Encoder encoder = Encoder.this;
                            if (encoder.c((Encoder) encoder.H)) {
                                return;
                            }
                            Encoder.this.H.pts = (System.nanoTime() / 1000) / 1000;
                            Encoder encoder2 = Encoder.this;
                            Encoder.this.f46084h.sendMessage(encoder2.f46084h.obtainMessage(12, encoder2.H));
                            return;
                        }
                        return;
                    }
                    Encoder.this.f46080d.incrementAndGet();
                }
            }, j4, j4);
            return;
        }
        Log.e(f46063k, "Call startRepeatLastFrame on invalid state");
    }

    public void stop() {
        if (this.f46082f.get() == 0 || this.f46082f.get() == 3) {
            return;
        }
        stopRepeatLastFrame();
        if (getUseSyncMode()) {
            this.f46085i.open();
        }
        if (this.f46083g != null) {
            this.f46084h.sendEmptyMessage(2);
        }
    }

    public void stopRepeatLastFrame() {
        Timer timer = this.G;
        if (timer != null) {
            timer.cancel();
            this.G = null;
        }
    }

    private void b(O o9) {
        if ((o9.flags & 2) == 0 || o9.buf == null) {
            return;
        }
        Log.d(f46063k, "Cache Extra: " + o9.buf.limit() + " bytes");
        ByteBuffer byteBuffer = this.E;
        if (byteBuffer == null || byteBuffer.capacity() < o9.buf.limit()) {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(o9.buf.limit());
            this.E = allocateDirect;
            allocateDirect.order(ByteOrder.nativeOrder());
        }
        this.E.clear();
        this.E.put(o9.buf);
        this.E.flip();
        o9.buf.rewind();
        if (o9 instanceof ImgPacket) {
            ImgPacket imgPacket = new ImgPacket((ImgPacket) o9);
            this.F = imgPacket;
            imgPacket.buf = this.E;
        } else if (o9 instanceof AudioPacket) {
            AudioPacket audioPacket = new AudioPacket((AudioPacket) o9);
            this.F = audioPacket;
            audioPacket.buf = this.E;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(Object obj) {
        this.mSrcPin.onFormatChanged(obj);
    }

    private void c() {
        HandlerThread handlerThread = new HandlerThread("EncodeThread");
        this.f46083g = handlerThread;
        handlerThread.start();
        this.f46084h = new Handler(this.f46083g.getLooper()) { // from class: com.ksyun.media.streamer.encoder.Encoder.4
            private void a(I i4) {
                if (Encoder.this.f46082f.get() == 2) {
                    int i10 = 0;
                    long currentTimeMillis = System.currentTimeMillis();
                    if ((i4.flags & 4) != 0) {
                        if (Encoder.this.getAutoWork()) {
                            Log.d(Encoder.f46063k, "end of stream, flushing...");
                            Encoder.this.b();
                            Encoder.this.stop();
                            return;
                        }
                    } else {
                        if (i4.isRefCounted()) {
                            i4.ref();
                        }
                        i10 = Encoder.this.b((Encoder) i4);
                    }
                    int currentTimeMillis2 = (int) (System.currentTimeMillis() - currentTimeMillis);
                    if (Encoder.this.f46077a == 2) {
                        StatsLogReport.getInstance().setVideoEncodeDelay(currentTimeMillis2);
                    }
                    if (i10 == 0) {
                        if (Encoder.this.H != null && Encoder.this.H.isRefCounted()) {
                            Encoder.this.H.unref();
                        }
                        Encoder.this.H = i4;
                        Encoder.this.f46079c.incrementAndGet();
                        if (Encoder.this.f46077a == 2) {
                            StatsLogReport.getInstance().setEncodedFrames(Encoder.this.f46079c.get());
                            return;
                        }
                        return;
                    }
                    if (i4.isRefCounted()) {
                        i4.unref();
                    }
                    Encoder.this.b(i10);
                    return;
                }
                Encoder.this.a((Encoder) i4);
                Encoder.this.f46080d.incrementAndGet();
                StatsLogReport.getInstance().setEncodeDroppedFrameCount(Encoder.this.f46080d.get());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i4 = message.what;
                if (i4 == 1) {
                    if (Encoder.this.f46082f.get() == 0) {
                        Encoder.this.f46082f.set(1);
                        Encoder.this.f46079c.set(0);
                        Encoder.this.f46080d.set(0);
                        Encoder.this.H = null;
                        Encoder.this.E = null;
                        Encoder.this.F = null;
                        int a10 = Encoder.this.a(message.obj);
                        if (a10 == 0) {
                            Encoder.this.f46082f.set(2);
                            Encoder.this.a(1, 0);
                        } else {
                            Encoder.this.f46082f.set(0);
                            Encoder.this.b(a10);
                        }
                    }
                    if (Encoder.this.getAutoWork() && Encoder.this.getUseSyncMode()) {
                        Encoder.this.f46085i.open();
                    }
                } else if (i4 == 2) {
                    if (Encoder.this.f46082f.get() == 2 || Encoder.this.f46082f.get() == 5) {
                        Encoder.this.f46082f.set(3);
                        Encoder.this.a();
                        Encoder.this.f46082f.set(0);
                        Encoder.this.a(2, 0);
                    }
                    Encoder.this.E = null;
                    Encoder.this.F = null;
                } else if (i4 == 3) {
                    Encoder.this.f46083g.quit();
                } else if (i4 == 4) {
                    if (Encoder.this.f46082f.get() == 2) {
                        Encoder.this.a(message.arg1);
                    }
                } else if (i4 != 5) {
                    switch (i4) {
                        case 10:
                            Encoder.this.b(message.obj);
                            return;
                        case 11:
                            a((AVFrameBase) message.obj);
                            if (Encoder.this.getUseSyncMode()) {
                                Encoder.this.f46085i.open();
                                return;
                            }
                            return;
                        case 12:
                            a((AVFrameBase) message.obj);
                            return;
                        default:
                            return;
                    }
                } else if (Encoder.this.f46082f.get() == 2) {
                    Encoder.this.f46082f.set(4);
                    Encoder.this.b();
                    Encoder.this.f46082f.set(5);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(O o9) {
        b((Encoder<I, O>) o9);
        this.mSrcPin.onFrameAvailable(o9);
    }

    protected void a(final int i4, final int i10) {
        this.f46087y.post(new Runnable() { // from class: com.ksyun.media.streamer.encoder.Encoder.2
            @Override // java.lang.Runnable
            public void run() {
                if (Encoder.this.f46088z != null) {
                    Encoder.this.f46088z.onInfo(Encoder.this, i4, i10);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(final int i4) {
        this.f46087y.post(new Runnable() { // from class: com.ksyun.media.streamer.encoder.Encoder.3
            @Override // java.lang.Runnable
            public void run() {
                int i10 = Encoder.this.f46077a;
                if (i10 == 2) {
                    StatsLogReport.getInstance().reportError(i4, 4);
                } else if (i10 == 1) {
                    StatsLogReport.getInstance().reportError(i4, 3);
                }
                if (Encoder.this.A != null) {
                    Encoder.this.A.onError(Encoder.this, i4);
                }
            }
        });
    }
}
