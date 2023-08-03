package com.ksyun.media.streamer.demuxer;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.ksyun.media.player.d.d;
import com.ksyun.media.streamer.demuxer.AVDemuxerWrapper;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class AVDemuxerCapture implements AVDemuxerWrapper.a {
    public static final int AV_DEMUXER_CAPTURE_ON_PREPARED = 2;
    public static final int AV_DEMUXER_CAPTURE_OPEN_FAIlED = -1;
    public static final int AV_DEMUXER_CAPTURE_STARTED = 0;
    public static final int AV_DEMUXER_CAPTURE_START_FAIlED = -1;
    public static final int AV_DEMUXER_CAPTURE_STOP = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f45933c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final int f45934d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final int f45935e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f45936f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final int f45937g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f45938h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45939i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f45940j = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final int f45941k = 3;

    /* renamed from: l  reason: collision with root package name */
    private static final String f45942l = "AVDemuxerCapture";

    /* renamed from: m  reason: collision with root package name */
    private static final boolean f45943m = false;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private long G;
    private long H;
    private OnInfoListener J;
    private OnErrorListener K;
    private OnVideoPtsChangedListener L;
    private OnAudioPtsChangedListener M;

    /* renamed from: a  reason: collision with root package name */
    protected HandlerThread f45944a;

    /* renamed from: b  reason: collision with root package name */
    protected Handler f45945b;

    /* renamed from: p  reason: collision with root package name */
    private String f45948p;

    /* renamed from: s  reason: collision with root package name */
    private AudioCodecFormat f45951s;

    /* renamed from: t  reason: collision with root package name */
    private VideoCodecFormat f45952t;

    /* renamed from: u  reason: collision with root package name */
    private int f45953u;

    /* renamed from: v  reason: collision with root package name */
    private int f45954v;

    /* renamed from: w  reason: collision with root package name */
    private int f45955w;

    /* renamed from: y  reason: collision with root package name */
    private int f45957y;

    /* renamed from: z  reason: collision with root package name */
    private int f45958z;

    /* renamed from: r  reason: collision with root package name */
    private volatile boolean f45950r = true;
    public long mDemuxRangeStartTime = 0;
    public long mDemuxRangeStopTime = 0;
    private volatile boolean N = false;
    private final ConditionVariable O = new ConditionVariable();

    /* renamed from: n  reason: collision with root package name */
    private SrcPin<AudioPacket> f45946n = new SrcPin<>();

    /* renamed from: o  reason: collision with root package name */
    private SrcPin<ImgPacket> f45947o = new SrcPin<>();
    private AVDemuxerWrapper I = new AVDemuxerWrapper();

    /* renamed from: x  reason: collision with root package name */
    private int f45956x = 0;

    /* renamed from: q  reason: collision with root package name */
    private long f45949q = 0;
    private AtomicInteger P = new AtomicInteger(0);

    /* loaded from: classes3.dex */
    public interface OnAudioPtsChangedListener {
        void onAudioPtsChanged(long j4);
    }

    /* loaded from: classes3.dex */
    public interface OnErrorListener {
        void onError(AVDemuxerCapture aVDemuxerCapture, int i4, long j4);
    }

    /* loaded from: classes3.dex */
    public interface OnInfoListener {
        void onInfo(AVDemuxerCapture aVDemuxerCapture, int i4, String str);
    }

    /* loaded from: classes3.dex */
    public interface OnVideoPtsChangedListener {
        void onVideoPtsChanged(long j4);
    }

    private void f() {
        OnErrorListener onErrorListener;
        OnInfoListener onInfoListener = this.J;
        if (onInfoListener != null) {
            onInfoListener.onInfo(this, 0, null);
        }
        if (this.I.a() >= 0 || (onErrorListener = this.K) == null) {
            return;
        }
        onErrorListener.onError(this, -1, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.P.get() != 2) {
            Log.d(f45942l, "doFormatChanged on invalid state:" + this.P);
            return;
        }
        Log.d(f45942l, "doFormatChanged");
        AudioCodecFormat audioCodecFormat = new AudioCodecFormat(this.B, this.f45957y, this.f45958z, this.A, this.D);
        this.f45951s = audioCodecFormat;
        audioCodecFormat.avCodecParPtr = this.H;
        this.f45946n.onFormatChanged(audioCodecFormat);
        VideoCodecFormat videoCodecFormat = new VideoCodecFormat(this.F, this.f45953u, this.f45954v, this.C);
        this.f45952t = videoCodecFormat;
        videoCodecFormat.avCodecParPtr = this.G;
        videoCodecFormat.orientation = this.f45955w;
        this.f45947o.onFormatChanged(videoCodecFormat);
    }

    public int getAudioBitrate() {
        return this.D;
    }

    public long getAudioCodecParPtr() {
        return this.H;
    }

    public SrcPin<AudioPacket> getAudioSrcPin() {
        return this.f45946n;
    }

    public int getChannels() {
        return this.A;
    }

    public int getDegree() {
        return this.f45955w;
    }

    public int getDuration() {
        return this.f45956x;
    }

    public int getFrameRate() {
        return this.E;
    }

    public int getHeight() {
        return this.f45954v;
    }

    public float getProgress() {
        int i4 = this.f45956x;
        if (i4 == 0) {
            return 0.0f;
        }
        long j4 = this.f45949q;
        long j10 = this.mDemuxRangeStartTime;
        if (j4 - j10 < 0) {
            return 0.0f;
        }
        return ((float) (j4 - j10)) / i4;
    }

    public int getSampleFormat() {
        return this.f45957y;
    }

    public int getSampleRate() {
        return this.f45958z;
    }

    public int getVideoBitrate() {
        return this.C;
    }

    public long getVideoCodecParPtr() {
        return this.G;
    }

    public SrcPin<ImgPacket> getVideoSrcPin() {
        return this.f45947o;
    }

    public int getWidth() {
        return this.f45953u;
    }

    public boolean isPause() {
        return this.N;
    }

    @Override // com.ksyun.media.streamer.demuxer.AVDemuxerWrapper.a
    public void onDemuxed(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4, int i10) {
        synchronized (this.O) {
            if (this.N) {
                Log.d(f45942l, "demuxer");
                this.O.close();
                this.O.block();
            }
        }
        if ((i4 & 4) != 0) {
            Log.d(f45942l, "send eos frame");
            VideoCodecFormat videoCodecFormat = this.f45952t;
            if (videoCodecFormat != null) {
                ImgPacket imgPacket = new ImgPacket(videoCodecFormat, null, 0L, 0L);
                imgPacket.flags |= 4;
                this.f45947o.onFrameAvailable(imgPacket);
            }
            AudioCodecFormat audioCodecFormat = this.f45951s;
            if (audioCodecFormat != null) {
                AudioPacket audioPacket = new AudioPacket(audioCodecFormat, null, 0L);
                audioPacket.flags |= 4;
                this.f45946n.onFrameAvailable(audioPacket);
            }
            this.P.set(0);
            OnInfoListener onInfoListener = this.J;
            if (onInfoListener != null) {
                onInfoListener.onInfo(this, 1, null);
                return;
            }
            return;
        }
        long j12 = this.mDemuxRangeStopTime;
        if (j12 == 0 || j11 <= j12) {
            if (i10 == 1) {
                AudioPacket audioPacket2 = new AudioPacket(this.f45951s, byteBuffer, j11, j4);
                audioPacket2.flags = i4;
                OnAudioPtsChangedListener onAudioPtsChangedListener = this.M;
                if (onAudioPtsChangedListener != null) {
                    onAudioPtsChangedListener.onAudioPtsChanged(j11);
                }
                this.f45946n.onFrameAvailable(audioPacket2);
                audioPacket2.unref();
                return;
            }
            this.f45949q = j11;
            ImgPacket imgPacket2 = new ImgPacket(this.f45952t, byteBuffer, j11, j10, j4);
            imgPacket2.flags = i4;
            OnVideoPtsChangedListener onVideoPtsChangedListener = this.L;
            if (onVideoPtsChangedListener != null) {
                onVideoPtsChangedListener.onVideoPtsChanged(j11);
            }
            this.f45947o.onFrameAvailable(imgPacket2);
            imgPacket2.unref();
        }
    }

    @Override // com.ksyun.media.streamer.demuxer.AVDemuxerWrapper.a
    public void onPrepared() {
        if (this.I != null) {
            Log.d(f45942l, d.aq);
            this.G = this.I.b(14);
            this.H = this.I.b(15);
            this.C = this.I.a(6);
            this.D = this.I.a(2);
            this.E = this.I.a(7);
            this.f45953u = this.I.a(8);
            this.f45954v = this.I.a(9);
            this.f45955w = this.I.a(11);
            this.F = this.I.a(13);
            this.f45957y = this.I.a(4);
            this.f45958z = this.I.a(3);
            this.A = this.I.a(5);
            this.B = this.I.a(16);
            this.f45956x = this.I.a(12) / 1000;
            long j4 = this.mDemuxRangeStopTime;
            if (j4 != 0) {
                this.f45956x = (int) (j4 - this.mDemuxRangeStartTime);
            }
            if (this.P.get() == 1) {
                this.P.set(2);
                this.J.onInfo(this, 2, null);
                if (this.f45950r) {
                    start();
                }
            }
        }
    }

    public void pause() {
        synchronized (this.O) {
            this.N = true;
        }
    }

    public void release() {
        this.P.set(0);
        this.f45946n.disconnect(true);
        this.f45947o.disconnect(true);
        HandlerThread handlerThread = this.f45944a;
        if (handlerThread != null) {
            this.f45945b.sendMessage(this.f45945b.obtainMessage(2, handlerThread));
            try {
                try {
                    this.f45944a.join();
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            } finally {
                this.f45944a = null;
            }
        }
    }

    public void reset() {
        if (this.I == null || this.f45944a == null) {
            return;
        }
        this.P.set(0);
        this.I.b();
        this.f45945b.sendMessage(this.f45945b.obtainMessage(2, null));
        this.f45945b.sendMessage(this.f45945b.obtainMessage(3, null));
    }

    public void resume() {
        synchronized (this.O) {
            Log.d(f45942l, "resume");
            this.N = false;
            this.O.open();
        }
    }

    public void setAutoStart(boolean z9) {
        this.f45950r = z9;
    }

    public void setAvDemuxerCaptureRanges(long j4, long j10) {
        this.mDemuxRangeStartTime = j4;
        this.mDemuxRangeStopTime = j10;
        this.I.a(j4, j10);
    }

    public void setDataSource(String str) {
        if (this.P.get() != 0) {
            Log.d(f45942l, "setDataSource in invalid state:" + this.P.get());
            return;
        }
        Log.d(f45942l, "setDataSource:" + str);
        this.f45948p = str;
        this.f45952t = null;
        this.f45951s = null;
        this.I.a(this);
        a();
        this.P.set(1);
        this.f45945b.sendMessage(this.f45945b.obtainMessage(0, null));
    }

    public void setOnAudioPtsChangedListener(OnAudioPtsChangedListener onAudioPtsChangedListener) {
        this.M = onAudioPtsChangedListener;
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.K = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.J = onInfoListener;
    }

    public void setOnVideoPtsChangedListener(OnVideoPtsChangedListener onVideoPtsChangedListener) {
        this.L = onVideoPtsChangedListener;
    }

    public void start() {
        if (this.P.get() != 2) {
            Log.d(f45942l, "start in invalid state:" + this.P.get());
            return;
        }
        Log.d(f45942l, com.google.android.exoplayer2.text.ttml.d.f25725o0);
        a();
        this.f45945b.sendMessage(this.f45945b.obtainMessage(1, this.f45944a));
    }

    public void stop() {
        Log.d(f45942l, "stop");
        if (this.I != null) {
            this.P.set(0);
            this.I.b();
        }
    }

    private void a() {
        if (this.f45944a == null) {
            HandlerThread handlerThread = new HandlerThread("DemuxerThread");
            this.f45944a = handlerThread;
            handlerThread.start();
            this.f45945b = new Handler(this.f45944a.getLooper()) { // from class: com.ksyun.media.streamer.demuxer.AVDemuxerCapture.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i4 = message.what;
                    if (i4 == 0) {
                        AVDemuxerCapture.this.b();
                    } else if (i4 == 1) {
                        AVDemuxerCapture.this.g();
                        AVDemuxerCapture.this.c();
                    } else if (i4 != 2) {
                        if (i4 != 3) {
                            return;
                        }
                        AVDemuxerCapture.this.e();
                    } else {
                        AVDemuxerCapture.this.d();
                        Object obj = message.obj;
                        if (obj == null || !(obj instanceof HandlerThread)) {
                            return;
                        }
                        ((HandlerThread) obj).quit();
                    }
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        OnErrorListener onErrorListener;
        if (this.P.get() != 1) {
            Log.d(f45942l, "doPrepare on invalid state:" + this.P);
            return;
        }
        Log.d(f45942l, "doPrepare");
        if (this.I.a(this.f45948p) >= 0 || (onErrorListener = this.K) == null) {
            return;
        }
        onErrorListener.onError(this, -1, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.P.get() != 2) {
            Log.d(f45942l, "doStart on invalid state:" + this.P);
            return;
        }
        Log.d(f45942l, "doStart");
        this.P.set(3);
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.I.d();
        this.I = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.I = new AVDemuxerWrapper();
        this.f45956x = 0;
        this.f45949q = 0L;
        this.mDemuxRangeStartTime = 0L;
        this.mDemuxRangeStopTime = 0L;
    }
}
