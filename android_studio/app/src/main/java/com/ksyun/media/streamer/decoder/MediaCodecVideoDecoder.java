package com.ksyun.media.streamer.decoder;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;
import android.view.Surface;
import com.facebook.imagepipeline.common.e;
import com.google.android.exoplayer2.util.a0;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import java.nio.ByteBuffer;

@TargetApi(19)
/* loaded from: classes3.dex */
public class MediaCodecVideoDecoder extends Decoder<ImgPacket, ImgTexFrame> implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: g  reason: collision with root package name */
    private static final String f45910g = "MediaCodecVideoDecoder";

    /* renamed from: h  reason: collision with root package name */
    private MediaCodec f45911h;

    /* renamed from: i  reason: collision with root package name */
    private MediaCodec.BufferInfo f45912i;

    /* renamed from: l  reason: collision with root package name */
    private VideoCodecFormat f45915l;

    /* renamed from: m  reason: collision with root package name */
    private GLRender f45916m;

    /* renamed from: n  reason: collision with root package name */
    private ImgTexFormat f45917n;

    /* renamed from: o  reason: collision with root package name */
    private int f45918o;

    /* renamed from: p  reason: collision with root package name */
    private SurfaceTexture f45919p;

    /* renamed from: q  reason: collision with root package name */
    private Surface f45920q;

    /* renamed from: r  reason: collision with root package name */
    private float[] f45921r;

    /* renamed from: s  reason: collision with root package name */
    private int f45922s;

    /* renamed from: u  reason: collision with root package name */
    private boolean f45924u;

    /* renamed from: j  reason: collision with root package name */
    private ByteBuffer[] f45913j = null;

    /* renamed from: k  reason: collision with root package name */
    private ByteBuffer[] f45914k = null;

    /* renamed from: t  reason: collision with root package name */
    private final Object f45923t = new Object();

    /* renamed from: v  reason: collision with root package name */
    private int f45925v = 0;

    /* renamed from: w  reason: collision with root package name */
    private int f45926w = 0;

    /* renamed from: x  reason: collision with root package name */
    private int f45927x = 0;

    /* renamed from: y  reason: collision with root package name */
    private GLRender.OnReadyListener f45928y = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.decoder.MediaCodecVideoDecoder.2
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
        public void onReady() {
            MediaCodecVideoDecoder.this.f45918o = GlUtil.createOESTextureObject();
            if (MediaCodecVideoDecoder.this.f45919p != null) {
                MediaCodecVideoDecoder.this.f45919p.release();
            }
            if (MediaCodecVideoDecoder.this.f45920q != null) {
                MediaCodecVideoDecoder.this.f45920q.release();
            }
            MediaCodecVideoDecoder.this.f45919p = new SurfaceTexture(MediaCodecVideoDecoder.this.f45918o);
            MediaCodecVideoDecoder.this.f45919p.setOnFrameAvailableListener(MediaCodecVideoDecoder.this);
            synchronized (MediaCodecVideoDecoder.this.f45923t) {
                MediaCodecVideoDecoder.this.f45920q = new Surface(MediaCodecVideoDecoder.this.f45919p);
                MediaCodecVideoDecoder.this.f45923t.notifyAll();
            }
        }
    };

    /* renamed from: z  reason: collision with root package name */
    private GLRender.OnReleasedListener f45929z = new GLRender.OnReleasedListener() { // from class: com.ksyun.media.streamer.decoder.MediaCodecVideoDecoder.3
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReleasedListener
        public void onReleased() {
            if (MediaCodecVideoDecoder.this.f45919p != null) {
                MediaCodecVideoDecoder.this.f45919p.release();
                MediaCodecVideoDecoder.this.f45919p = null;
            }
            if (MediaCodecVideoDecoder.this.f45920q != null) {
                MediaCodecVideoDecoder.this.f45920q.release();
                MediaCodecVideoDecoder.this.f45920q = null;
            }
        }
    };

    public MediaCodecVideoDecoder(GLRender gLRender) {
        this.f45916m = gLRender;
        gLRender.addListener(this.f45928y);
        this.f45916m.addListener(this.f45929z);
        this.f45921r = new float[16];
        this.f45924u = false;
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected int a() {
        return 0;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.f45923t) {
            if (this.f45924u) {
                Log.e(f45910g, "mFrameAvailable already set, frame could be dropped");
                return;
            }
            this.f45924u = true;
            this.f45919p.updateTexImage();
            this.f45923t.notifyAll();
        }
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    public void release() {
        super.release();
        SurfaceTexture surfaceTexture = this.f45919p;
        if (surfaceTexture != null) {
            surfaceTexture.setOnFrameAvailableListener(null);
        }
        this.f45916m.removeListener(this.f45928y);
        this.f45916m.removeListener(this.f45929z);
    }

    private void c(ImgPacket imgPacket) {
        int i4;
        MediaCodec mediaCodec = this.f45911h;
        if (mediaCodec == null) {
            return;
        }
        boolean z9 = true;
        this.f45925v++;
        int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(-1L);
        if (dequeueInputBuffer >= 0) {
            int i10 = imgPacket.flags;
            int i11 = (i10 & 1) != 0 ? 1 : 0;
            if ((i10 & 4) != 0) {
                i4 = i11 | 4;
            } else {
                i4 = i11;
                z9 = false;
            }
            ByteBuffer byteBuffer = imgPacket.buf;
            int limit = byteBuffer != null ? byteBuffer.limit() : 0;
            this.f45913j[dequeueInputBuffer].clear();
            if (limit > 0) {
                this.f45913j[dequeueInputBuffer].put(imgPacket.buf);
            }
            this.f45911h.queueInputBuffer(dequeueInputBuffer, 0, limit, imgPacket.pts * 1000, i4);
            a(z9);
        }
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void b() {
        MediaCodec mediaCodec = this.f45911h;
        if (mediaCodec != null) {
            mediaCodec.stop();
            this.f45911h.release();
            this.f45911h = null;
        }
    }

    private void b(ImgPacket imgPacket) {
        String str;
        this.f45911h = null;
        VideoCodecFormat videoCodecFormat = imgPacket.format;
        int i4 = videoCodecFormat.codecId;
        if (i4 == 1) {
            str = "video/avc";
        } else if (i4 == 2) {
            str = a0.f27451k;
        } else if (i4 != 4) {
            Log.e(f45910g, "startDecoder: unsupport codec id:" + imgPacket.format);
            return;
        } else {
            str = a0.f27461p;
        }
        try {
            this.f45911h = MediaCodec.createDecoderByType(str);
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(str, videoCodecFormat.width, videoCodecFormat.height);
            createVideoFormat.setInteger("color-format", 2130708361);
            if (Build.VERSION.SDK_INT >= 23) {
                createVideoFormat.setInteger("rotation-degrees", imgPacket.format.orientation);
            }
            createVideoFormat.setByteBuffer("csd-0", imgPacket.buf);
            synchronized (this.f45923t) {
                if (this.f45920q == null) {
                    try {
                        this.f45923t.wait();
                    } catch (InterruptedException e4) {
                        e4.printStackTrace();
                    }
                }
            }
            this.f45911h.configure(createVideoFormat, this.f45920q, (MediaCrypto) null, 0);
            this.f45911h.start();
            this.f45913j = this.f45911h.getInputBuffers();
            this.f45914k = this.f45911h.getOutputBuffers();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void a(Object obj) {
        VideoCodecFormat videoCodecFormat = (VideoCodecFormat) obj;
        this.f45915l = videoCodecFormat;
        SurfaceTexture surfaceTexture = this.f45919p;
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(videoCodecFormat.width, videoCodecFormat.height);
        }
        VideoCodecFormat videoCodecFormat2 = this.f45915l;
        int i4 = videoCodecFormat2.orientation;
        this.f45922s = i4;
        if (i4 % e.f12205e != 0) {
            this.f45917n = new ImgTexFormat(3, videoCodecFormat2.height, videoCodecFormat2.width);
        } else {
            this.f45917n = new ImgTexFormat(3, videoCodecFormat2.width, videoCodecFormat2.height);
        }
        this.mSrcPin.onFormatChanged(this.f45917n);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.decoder.Decoder
    public int a(ImgPacket imgPacket) {
        if ((imgPacket.flags & 2) != 0) {
            b(imgPacket);
            return 0;
        }
        c(imgPacket);
        return 0;
    }

    private void a(boolean z9) {
        if (this.f45912i == null) {
            this.f45912i = new MediaCodec.BufferInfo();
        }
        while (true) {
            int dequeueOutputBuffer = this.f45911h.dequeueOutputBuffer(this.f45912i, this.f45927x);
            MediaCodec.BufferInfo bufferInfo = this.f45912i;
            boolean z10 = (bufferInfo.flags & 4) != 0;
            if (dequeueOutputBuffer >= 0) {
                if (z10) {
                    this.f45916m.queueEvent(new Runnable() { // from class: com.ksyun.media.streamer.decoder.MediaCodecVideoDecoder.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ImgTexFrame imgTexFrame = new ImgTexFrame(new ImgTexFormat(3, MediaCodecVideoDecoder.this.f45917n.width, MediaCodecVideoDecoder.this.f45917n.height), -1, null, 0L);
                            imgTexFrame.flags |= 4;
                            MediaCodecVideoDecoder.this.mSrcPin.onFrameAvailable(imgTexFrame);
                        }
                    });
                    flush();
                    stop();
                    return;
                }
                this.f45926w++;
                boolean z11 = bufferInfo.size != 0;
                this.f45911h.releaseOutputBuffer(dequeueOutputBuffer, z11);
                if (z11) {
                    a(this.f45912i.presentationTimeUs);
                }
            } else if (dequeueOutputBuffer == -3) {
                this.f45914k = this.f45911h.getOutputBuffers();
                Log.d(f45910g, "decoder output buffers have changed.");
            } else if (dequeueOutputBuffer == -2) {
                MediaFormat outputFormat = this.f45911h.getOutputFormat();
                Log.d(f45910g, "decode output format changed: " + outputFormat);
                int integer = outputFormat.getInteger("width");
                int integer2 = outputFormat.getInteger("height");
                VideoCodecFormat videoCodecFormat = this.f45915l;
                TexTransformUtil.calTransformMatrix(this.f45921r, videoCodecFormat.width / integer, videoCodecFormat.height / integer2, this.f45922s);
            } else if (dequeueOutputBuffer != -1) {
                Log.w(f45910g, "unexpected result from encoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                return;
            } else if (!z9) {
                int i4 = this.f45925v;
                int i10 = this.f45926w;
                this.f45927x = ((i4 - i10) * 100) + (((i4 - i10) / 5) * 1000);
                return;
            } else {
                Log.d(f45910g, "waiting decoder flushing...");
                this.f45927x = 10000;
            }
        }
    }

    private void a(long j4) {
        synchronized (this.f45923t) {
            while (!this.f45924u) {
                try {
                    this.f45923t.wait(500L);
                } catch (InterruptedException e4) {
                    throw new RuntimeException(e4);
                }
            }
            this.f45924u = false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            this.f45919p.getTransformMatrix(this.f45921r);
        }
        this.mSrcPin.onFrameAvailable(new ImgTexFrame(this.f45917n, this.f45918o, this.f45921r, j4 / 1000));
    }
}
