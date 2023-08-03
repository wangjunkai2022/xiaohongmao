package com.ksyun.media.streamer.demuxer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.ksyun.media.streamer.demuxer.AVDemuxerWrapper;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class AVDemuxerMultiCapture implements AVDemuxerWrapper.a {
    public static final int AV_DEMUXER_CAPTURE_CONFIG_DIFF = -2;
    public static final int AV_DEMUXER_CAPTURE_ONPREPARED = 2;
    public static final int AV_DEMUXER_CAPTURE_START = 0;
    public static final int AV_DEMUXER_CAPTURE_START_FAIlED = -1;
    public static final int AV_DEMUXER_CAPTURE_STOP = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f45960c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f45961d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final int f45962e = 4;

    /* renamed from: f  reason: collision with root package name */
    private static final int f45963f = 33;

    /* renamed from: g  reason: collision with root package name */
    private static final String f45964g = "AVDemuxerMultiCapture";

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f45965h = false;
    private int A;
    private OnInfoListener C;
    private OnErrorListener D;
    private long H;
    private long I;

    /* renamed from: a  reason: collision with root package name */
    protected HandlerThread f45966a;

    /* renamed from: b  reason: collision with root package name */
    protected Handler f45967b;

    /* renamed from: k  reason: collision with root package name */
    private long f45970k;

    /* renamed from: l  reason: collision with root package name */
    private long f45971l;

    /* renamed from: n  reason: collision with root package name */
    private long f45973n;

    /* renamed from: r  reason: collision with root package name */
    private int f45977r;

    /* renamed from: s  reason: collision with root package name */
    private int f45978s;

    /* renamed from: t  reason: collision with root package name */
    private int f45979t;

    /* renamed from: v  reason: collision with root package name */
    private int f45981v;

    /* renamed from: w  reason: collision with root package name */
    private int f45982w;

    /* renamed from: x  reason: collision with root package name */
    private int f45983x;

    /* renamed from: y  reason: collision with root package name */
    private int f45984y;

    /* renamed from: z  reason: collision with root package name */
    private int f45985z;
    private boolean F = false;
    private boolean G = false;

    /* renamed from: i  reason: collision with root package name */
    private SrcPin<AudioPacket> f45968i = new SrcPin<>();

    /* renamed from: j  reason: collision with root package name */
    private SrcPin<ImgPacket> f45969j = new SrcPin<>();
    private AVDemuxerWrapper B = null;

    /* renamed from: u  reason: collision with root package name */
    private int f45980u = 0;

    /* renamed from: m  reason: collision with root package name */
    private long f45972m = 0;

    /* renamed from: q  reason: collision with root package name */
    private AtomicInteger f45976q = new AtomicInteger(0);
    private List<String> E = null;

    /* renamed from: p  reason: collision with root package name */
    private VideoCodecFormat f45975p = null;

    /* renamed from: o  reason: collision with root package name */
    private AudioCodecFormat f45974o = null;

    /* loaded from: classes3.dex */
    public interface OnErrorListener {
        void onError(AVDemuxerMultiCapture aVDemuxerMultiCapture, int i4, long j4);
    }

    /* loaded from: classes3.dex */
    public interface OnInfoListener {
        void onInfo(AVDemuxerMultiCapture aVDemuxerMultiCapture, int i4, int i10);
    }

    /* loaded from: classes3.dex */
    public interface OnMuxerFormatDetected {
        void onAudioFormatDetected(int i4, int i10, int i11, int i12, long j4);

        void onVideoFormatDetected(int i4, int i10, int i11, int i12, long j4);
    }

    public AVDemuxerMultiCapture() {
        a();
    }

    private void b() {
        if (this.f45966a != null) {
            this.f45967b.sendMessage(this.f45967b.obtainMessage(1));
        }
    }

    private void c() {
        if (this.f45966a != null) {
            this.f45967b.obtainMessage(2).sendToTarget();
        }
    }

    public int getAudioBitrate() {
        return this.f45985z;
    }

    public long getAudioCodecParPtr() {
        return this.I;
    }

    public SrcPin<AudioPacket> getAudioSrcPin() {
        return this.f45968i;
    }

    public int getChannels() {
        return this.f45983x;
    }

    public int getDegree() {
        return this.f45979t;
    }

    public long getDuration() {
        return this.f45980u;
    }

    public int getFrameRate() {
        return this.A;
    }

    public int getHeight() {
        return this.f45978s;
    }

    public float getProgress() {
        int i4 = this.f45980u;
        if (i4 == 0) {
            return 0.0f;
        }
        return ((float) this.f45972m) / i4;
    }

    public int getSampleFormat() {
        return this.f45981v;
    }

    public int getSampleRate() {
        return this.f45982w;
    }

    public int getVideoBitrate() {
        return this.f45984y;
    }

    public long getVideoCodecParPtr() {
        return this.H;
    }

    public SrcPin<ImgPacket> getVideoSrcPin() {
        return this.f45969j;
    }

    public int getWidth() {
        return this.f45977r;
    }

    @Override // com.ksyun.media.streamer.demuxer.AVDemuxerWrapper.a
    public void onDemuxed(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4, int i10) {
        boolean z9 = false;
        if ((i4 & 4) != 0) {
            if (this.f45976q.get() == this.E.size() - 1) {
                VideoCodecFormat videoCodecFormat = this.f45975p;
                if (videoCodecFormat != null) {
                    ImgPacket imgPacket = new ImgPacket(videoCodecFormat, null, 0L, 0L);
                    imgPacket.flags |= 4;
                    this.f45969j.onFrameAvailable(imgPacket);
                }
                AudioCodecFormat audioCodecFormat = this.f45974o;
                if (audioCodecFormat != null) {
                    AudioPacket audioPacket = new AudioPacket(audioCodecFormat, null, 0L);
                    audioPacket.flags |= 4;
                    this.f45968i.onFrameAvailable(audioPacket);
                }
                OnInfoListener onInfoListener = this.C;
                if (onInfoListener != null) {
                    onInfoListener.onInfo(this, 1, 0);
                    return;
                }
                return;
            }
            this.f45971l = this.f45973n;
            this.f45970k = this.f45972m + 33;
            a(this.f45976q.incrementAndGet());
            return;
        }
        if ((i4 & 2) != 0) {
            boolean z10 = this.F;
            if (z10 && this.G) {
                return;
            }
            if (!z10) {
                z10 = i10 == 2;
            }
            this.F = z10;
            boolean z11 = this.G;
            if (z11) {
                z9 = z11;
            } else if (i10 == 1) {
                z9 = true;
            }
            this.G = z9;
        }
        if (i10 == 1) {
            long j12 = j11 + this.f45971l;
            AudioPacket audioPacket2 = new AudioPacket(this.f45974o, byteBuffer, j12, j4);
            audioPacket2.flags = i4;
            this.f45973n = j12;
            this.f45968i.onFrameAvailable(audioPacket2);
            audioPacket2.unref();
            return;
        }
        long j13 = this.f45970k;
        long j14 = j11 + j13;
        ImgPacket imgPacket2 = new ImgPacket(this.f45975p, byteBuffer, j14, j10 + j13, j4);
        imgPacket2.flags = i4;
        if (j14 > this.f45972m) {
            this.f45972m = j14;
        }
        this.f45969j.onFrameAvailable(imgPacket2);
        imgPacket2.unref();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00af, code lost:
        if (r10.f45979t == r1.orientation) goto L22;
     */
    @Override // com.ksyun.media.streamer.demuxer.AVDemuxerWrapper.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onPrepared() {
        /*
            Method dump skipped, instructions count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.demuxer.AVDemuxerMultiCapture.onPrepared():void");
    }

    public void release() {
        if (this.f45966a != null) {
            this.f45967b.sendMessage(this.f45967b.obtainMessage(4));
        }
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.D = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.C = onInfoListener;
    }

    public void start(List<String> list) {
        this.E = list;
        b();
    }

    public void stop() {
        c();
    }

    private void a() {
        HandlerThread handlerThread = new HandlerThread("Demuxer");
        this.f45966a = handlerThread;
        handlerThread.start();
        this.f45967b = new Handler(this.f45966a.getLooper()) { // from class: com.ksyun.media.streamer.demuxer.AVDemuxerMultiCapture.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i4 = message.what;
                if (i4 == 1) {
                    AVDemuxerMultiCapture.this.a(0);
                } else if (i4 != 2) {
                    if (i4 == 4 && AVDemuxerMultiCapture.this.B != null) {
                        AVDemuxerMultiCapture.this.B.d();
                    }
                } else if (AVDemuxerMultiCapture.this.B != null) {
                    AVDemuxerMultiCapture.this.B.b();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i4) {
        AVDemuxerWrapper aVDemuxerWrapper = this.B;
        if (aVDemuxerWrapper != null) {
            aVDemuxerWrapper.d();
            this.B = null;
        }
        if (i4 == this.E.size()) {
            this.f45975p = null;
            this.f45974o = null;
            return;
        }
        AVDemuxerWrapper aVDemuxerWrapper2 = new AVDemuxerWrapper();
        this.B = aVDemuxerWrapper2;
        aVDemuxerWrapper2.a(this);
        if (this.B.a(this.E.get(i4)) < 0) {
            if (this.f45976q.get() == this.E.size() - 1) {
                VideoCodecFormat videoCodecFormat = this.f45975p;
                if (videoCodecFormat != null) {
                    ImgPacket imgPacket = new ImgPacket(videoCodecFormat, null, 0L, 0L);
                    imgPacket.flags |= 4;
                    this.f45969j.onFrameAvailable(imgPacket);
                }
                AudioCodecFormat audioCodecFormat = this.f45974o;
                if (audioCodecFormat != null) {
                    AudioPacket audioPacket = new AudioPacket(audioCodecFormat, null, 0L);
                    audioPacket.flags |= 4;
                    this.f45968i.onFrameAvailable(audioPacket);
                }
                OnInfoListener onInfoListener = this.C;
                if (onInfoListener != null) {
                    onInfoListener.onInfo(this, 1, 0);
                }
            } else {
                this.f45971l = this.f45973n;
                this.f45970k = this.f45972m + 33;
                a(this.f45976q.incrementAndGet());
            }
            OnErrorListener onErrorListener = this.D;
            if (onErrorListener != null) {
                onErrorListener.onError(this, -1, 0L);
                return;
            }
            return;
        }
        OnInfoListener onInfoListener2 = this.C;
        if (onInfoListener2 != null) {
            onInfoListener2.onInfo(this, 0, i4);
        }
    }
}
