package com.ksyun.media.streamer.encoder;

import com.ksyun.media.streamer.encoder.Encoder;
import com.ksyun.media.streamer.encoder.ImgTexToBuf;
import com.ksyun.media.streamer.filter.imgbuf.ImgBufBeautyFilter;
import com.ksyun.media.streamer.filter.imgbuf.ImgBufMixer;
import com.ksyun.media.streamer.filter.imgbuf.ImgBufScaleFilter;
import com.ksyun.media.streamer.filter.imgbuf.ImgPreProcessWrap;
import com.ksyun.media.streamer.framework.AVFrameBase;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class VideoEncoderMgt {
    public static final int METHOD_HARDWARE = 2;
    public static final int METHOD_SOFTWARE = 3;
    public static final int METHOD_SOFTWARE_COMPAT = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46167a = "VideoEncoderMgt";

    /* renamed from: b  reason: collision with root package name */
    private GLRender f46168b;

    /* renamed from: c  reason: collision with root package name */
    private ImgTexToBuf f46169c;

    /* renamed from: d  reason: collision with root package name */
    private Encoder f46170d;

    /* renamed from: e  reason: collision with root package name */
    private int f46171e;

    /* renamed from: f  reason: collision with root package name */
    private VideoCodecFormat f46172f;

    /* renamed from: g  reason: collision with root package name */
    private Encoder.EncoderListener f46173g;

    /* renamed from: h  reason: collision with root package name */
    private ImgBufScaleFilter f46174h;

    /* renamed from: i  reason: collision with root package name */
    private ImgBufBeautyFilter f46175i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f46176j;

    /* renamed from: k  reason: collision with root package name */
    private ImgBufMixer f46177k;

    /* renamed from: l  reason: collision with root package name */
    private ImgPreProcessWrap f46178l;

    /* renamed from: m  reason: collision with root package name */
    private PinAdapter<ImgTexFrame> f46179m;

    /* renamed from: n  reason: collision with root package name */
    private PinAdapter<ImgBufFrame> f46180n;

    /* renamed from: o  reason: collision with root package name */
    private PinAdapter<ImgPacket> f46181o;

    /* loaded from: classes3.dex */
    private class a<T extends AVFrameBase> extends PinAdapter<T> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.PinAdapter
        public void onDisconnect(boolean z9) {
            if (z9) {
                VideoEncoderMgt.this.release();
            }
        }
    }

    public VideoEncoderMgt(GLRender gLRender) {
        this.f46168b = gLRender;
        ImgPreProcessWrap imgPreProcessWrap = new ImgPreProcessWrap();
        this.f46178l = imgPreProcessWrap;
        this.f46174h = new ImgBufScaleFilter(imgPreProcessWrap);
        this.f46175i = new ImgBufBeautyFilter(this.f46178l);
        this.f46177k = new ImgBufMixer(this.f46178l);
        this.f46181o = new PinAdapter<>();
        this.f46179m = new a();
        this.f46180n = new a();
        this.f46174h.getSrcPin().connect(this.f46177k.getSinkPin());
        ImgTexToBuf imgTexToBuf = new ImgTexToBuf(gLRender);
        this.f46169c = imgTexToBuf;
        imgTexToBuf.setErrorListener(new ImgTexToBuf.ErrorListener() { // from class: com.ksyun.media.streamer.encoder.VideoEncoderMgt.1
            @Override // com.ksyun.media.streamer.encoder.ImgTexToBuf.ErrorListener
            public void onError(ImgTexToBuf imgTexToBuf2, int i4) {
                if (VideoEncoderMgt.this.f46173g != null) {
                    VideoEncoderMgt.this.f46173g.onError(VideoEncoderMgt.this.f46170d, i4 == -1 ? -1002 : -1001);
                }
            }
        });
        this.f46171e = a(3);
        a();
    }

    private int a(int i4) {
        return i4;
    }

    private AVCodecSurfaceEncoder c() {
        return (AVCodecSurfaceEncoder) AVCodecSurfaceEncoder.class.cast(this.f46170d);
    }

    private MediaCodecSurfaceEncoder d() {
        return (MediaCodecSurfaceEncoder) MediaCodecSurfaceEncoder.class.cast(this.f46170d);
    }

    public VideoCodecFormat getEncodeFormat() {
        return this.f46172f;
    }

    public synchronized int getEncodeMethod() {
        return this.f46171e;
    }

    public synchronized Encoder getEncoder() {
        return this.f46170d;
    }

    public ImgBufMixer getImgBufMixer() {
        return this.f46177k;
    }

    public SinkPin<ImgBufFrame> getImgBufSinkPin() {
        return this.f46180n.mSinkPin;
    }

    public SinkPin<ImgTexFrame> getImgTexSinkPin() {
        return this.f46179m.mSinkPin;
    }

    public SrcPin<ImgPacket> getSrcPin() {
        return this.f46181o.mSrcPin;
    }

    public synchronized void release() {
        this.f46170d.release();
        this.f46178l.a();
        this.f46174h.release();
        this.f46175i.release();
        this.f46177k.release();
    }

    public void setEnableImgBufBeauty(boolean z9) {
        if (this.f46176j != z9) {
            if (z9) {
                this.f46174h.getSrcPin().disconnect(this.f46177k.getSinkPin(), false);
                this.f46174h.getSrcPin().connect(this.f46175i.getSinkPin());
                this.f46175i.getSrcPin().connect(this.f46177k.getSinkPin());
            } else {
                this.f46175i.getSrcPin().disconnect(false);
                this.f46174h.getSrcPin().disconnect(this.f46175i.getSinkPin(), false);
                this.f46174h.getSrcPin().connect(this.f46177k.getSinkPin());
            }
            this.f46176j = z9;
        }
    }

    @Deprecated
    public synchronized void setEncodeFormat(VideoEncodeFormat videoEncodeFormat) {
        if (videoEncodeFormat != null) {
            setEncodeFormat(new VideoCodecFormat(videoEncodeFormat));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized void setEncodeMethod(int i4) {
        int a10 = a(i4);
        StatsLogReport.getInstance().setEncodeMethod(a10);
        int i10 = this.f46171e;
        if (a10 == i10) {
            return;
        }
        if (i10 == 2) {
            MediaCodecSurfaceEncoder d4 = d();
            d4.mSrcPin.disconnect(false);
            this.f46179m.mSrcPin.disconnect(d4.mSinkPin, false);
        } else if (i10 == 3) {
            b().mSrcPin.disconnect(false);
            this.f46169c.mSrcPin.disconnect(false);
            this.f46179m.mSrcPin.disconnect(this.f46169c.mSinkPin, false);
        } else {
            AVCodecVideoEncoder b10 = b();
            b10.mSrcPin.disconnect(false);
            this.f46177k.getSrcPin().disconnect(b10.mSinkPin, false);
            this.f46180n.mSrcPin.disconnect(this.f46174h.getSinkPin(), false);
        }
        this.f46170d.release();
        this.f46171e = a10;
        a();
    }

    public synchronized void setEncoderListener(Encoder.EncoderListener encoderListener) {
        this.f46173g = encoderListener;
        this.f46170d.setEncoderListener(encoderListener);
    }

    public void setImgBufMirror(boolean z9) {
        this.f46174h.setMirror(z9);
    }

    public void setImgBufTargetSize(int i4, int i10) {
        VideoCodecFormat videoCodecFormat = this.f46172f;
        if (videoCodecFormat != null) {
            if (i4 == videoCodecFormat.width && i10 == videoCodecFormat.height) {
                return;
            }
            this.f46174h.setTargetSize(i4, i10);
            this.f46177k.setTargetSize(i4, i10);
        }
    }

    public synchronized void start() {
        int i4 = this.f46171e;
        if (i4 == 3) {
            this.f46179m.mSrcPin.connect(this.f46169c.mSinkPin);
        } else if (i4 == 1) {
            this.f46180n.mSrcPin.connect(this.f46174h.getSinkPin());
        }
        this.f46170d.start();
    }

    public synchronized void stop() {
        int i4 = this.f46171e;
        if (i4 == 3) {
            this.f46179m.mSrcPin.disconnect(this.f46169c.mSinkPin, false);
        } else if (i4 == 1) {
            this.f46180n.mSrcPin.disconnect(this.f46174h.getSinkPin(), false);
        }
        this.f46170d.stop();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a() {
        int i4 = this.f46171e;
        if (i4 == 2) {
            MediaCodecSurfaceEncoder mediaCodecSurfaceEncoder = new MediaCodecSurfaceEncoder(this.f46168b);
            this.f46179m.mSrcPin.connect(mediaCodecSurfaceEncoder.mSinkPin);
            mediaCodecSurfaceEncoder.mSrcPin.connect(this.f46181o.mSinkPin);
            this.f46170d = mediaCodecSurfaceEncoder;
        } else if (i4 == 3) {
            AVCodecVideoEncoder aVCodecVideoEncoder = new AVCodecVideoEncoder();
            this.f46169c.mSrcPin.connect(aVCodecVideoEncoder.mSinkPin);
            aVCodecVideoEncoder.mSrcPin.connect(this.f46181o.mSinkPin);
            this.f46170d = aVCodecVideoEncoder;
        } else {
            AVCodecVideoEncoder aVCodecVideoEncoder2 = new AVCodecVideoEncoder();
            this.f46177k.getSrcPin().connect(aVCodecVideoEncoder2.mSinkPin);
            aVCodecVideoEncoder2.mSrcPin.connect(this.f46181o.mSinkPin);
            this.f46170d = aVCodecVideoEncoder2;
        }
        VideoCodecFormat videoCodecFormat = this.f46172f;
        if (videoCodecFormat != null) {
            this.f46170d.configure(videoCodecFormat);
        }
        Encoder.EncoderListener encoderListener = this.f46173g;
        if (encoderListener != null) {
            this.f46170d.setEncoderListener(encoderListener);
        }
    }

    private AVCodecVideoEncoder b() {
        return (AVCodecVideoEncoder) AVCodecVideoEncoder.class.cast(this.f46170d);
    }

    public synchronized void setEncodeFormat(VideoCodecFormat videoCodecFormat) {
        this.f46172f = videoCodecFormat;
        this.f46170d.configure(videoCodecFormat);
        this.f46174h.setTargetSize(videoCodecFormat.width, videoCodecFormat.height);
        this.f46177k.setTargetSize(videoCodecFormat.width, videoCodecFormat.height);
        StatsLogReport.getInstance().setEncodeFormat(this.f46172f.codecId);
        StatsLogReport.getInstance().setVideoEncodeProfile(this.f46172f.profile);
        StatsLogReport.getInstance().setVideoEncodeScence(this.f46172f.scene);
        StatsLogReport.getInstance().setIFrameIntervalSec(this.f46172f.iFrameInterval);
        StatsLogReport statsLogReport = StatsLogReport.getInstance();
        VideoCodecFormat videoCodecFormat2 = this.f46172f;
        statsLogReport.setTargetResolution(videoCodecFormat2.width, videoCodecFormat2.height);
    }
}
