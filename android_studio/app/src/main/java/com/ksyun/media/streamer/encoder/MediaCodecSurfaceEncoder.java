package com.ksyun.media.streamer.encoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.util.a0;
import com.google.android.gms.common.n;
import com.ksyun.media.player.KSYMediaMeta;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import com.ksyun.media.streamer.util.gles.d;
import com.ksyun.media.streamer.util.gles.f;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

@TargetApi(18)
/* loaded from: classes3.dex */
public class MediaCodecSurfaceEncoder extends MediaCodecEncoderBase<ImgTexFrame, ImgPacket> {

    /* renamed from: n  reason: collision with root package name */
    private static final String f46142n = "HWSurfaceEncoder";

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f46143o = false;

    /* renamed from: p  reason: collision with root package name */
    private GLRender f46144p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f46145q;

    /* renamed from: r  reason: collision with root package name */
    private d f46146r;

    /* renamed from: s  reason: collision with root package name */
    private Surface f46147s;

    /* renamed from: t  reason: collision with root package name */
    private f f46148t;

    /* renamed from: u  reason: collision with root package name */
    private int f46149u;

    /* renamed from: v  reason: collision with root package name */
    private float f46150v;

    /* renamed from: w  reason: collision with root package name */
    private BlockingQueue<Long> f46151w;

    /* renamed from: x  reason: collision with root package name */
    private VideoCodecFormat f46152x;

    /* renamed from: y  reason: collision with root package name */
    private GLRender.OnReadyListener f46153y;

    public MediaCodecSurfaceEncoder(GLRender gLRender) {
        GLRender.OnReadyListener onReadyListener = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.encoder.MediaCodecSurfaceEncoder.1
            @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
            public void onReady() {
                MediaCodecSurfaceEncoder.this.f46145q = false;
                MediaCodecSurfaceEncoder.this.f46149u = 0;
            }
        };
        this.f46153y = onReadyListener;
        this.f46144p = gLRender;
        gLRender.addListener(onReadyListener);
        this.f46151w = new ArrayBlockingQueue(128);
        setUseSyncMode(true);
    }

    private void d(ImgTexFrame imgTexFrame) {
        ImgTexFormat imgTexFormat = imgTexFrame.format;
        int i4 = imgTexFrame.textureId;
        float[] fArr = imgTexFrame.texMatrix;
        int i10 = imgTexFormat.colorFormat;
        int i11 = i10 == 3 ? 36197 : 3553;
        if (this.f46149u == 0) {
            int createProgram = GlUtil.createProgram("uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", i10 == 3 ? "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n" : "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
            this.f46149u = createProgram;
            if (createProgram == 0) {
                Log.e(f46142n, "Created program " + this.f46149u + " failed");
                throw new RuntimeException("Unable to create program");
            }
        }
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f46149u, "aPosition");
        GlUtil.checkLocation(glGetAttribLocation, "aPosition");
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.f46149u, "aTextureCoord");
        GlUtil.checkLocation(glGetAttribLocation2, "aTextureCoord");
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.f46149u, "uTexMatrix");
        GlUtil.checkLocation(glGetUniformLocation, "uTexMatrix");
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(this.f46149u);
        GlUtil.checkGlError("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(i11, i4);
        GLES20.glUniformMatrix4fv(glGetUniformLocation, 1, false, fArr, 0);
        GlUtil.checkGlError("glUniformMatrix4fv");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 8, (Buffer) TexTransformUtil.getVertexCoordsBuf());
        GlUtil.checkGlError("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation2);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(glGetAttribLocation2, 2, 5126, false, 8, (Buffer) TexTransformUtil.getTexCoordsBuf());
        GlUtil.checkGlError("glVertexAttribPointer");
        GLES20.glDrawArrays(5, 0, 4);
        GlUtil.checkGlError("glDrawArrays");
        GLES20.glDisableVertexAttribArray(glGetAttribLocation);
        GLES20.glDisableVertexAttribArray(glGetAttribLocation2);
        GLES20.glBindTexture(i11, 0);
        GLES20.glUseProgram(0);
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    public void release() {
        this.f46144p.removeListener(this.f46153y);
        super.release();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public boolean c(ImgTexFrame imgTexFrame) {
        GLES20.glFinish();
        this.f46144p.getFboManager().lock(imgTexFrame.textureId);
        return false;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void b(Object obj) {
        ImgTexFormat imgTexFormat = (ImgTexFormat) obj;
        VideoCodecFormat videoCodecFormat = (VideoCodecFormat) this.f46078b;
        if (getState() == 2) {
            if (videoCodecFormat.width == imgTexFormat.width && videoCodecFormat.height == imgTexFormat.height) {
                return;
            }
            Log.d(f46142n, "restart encoder");
            b();
            a();
            videoCodecFormat.width = imgTexFormat.width;
            videoCodecFormat.height = imgTexFormat.height;
            a(this.f46078b);
        }
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected int a(Object obj) {
        String str;
        VideoCodecFormat videoCodecFormat = (VideoCodecFormat) obj;
        int i4 = videoCodecFormat.codecId;
        String str2 = "video/avc";
        int i10 = 2;
        if (i4 != 1) {
            if (i4 == 2) {
                str = a0.f27451k;
            }
            return -1002;
        }
        str = "video/avc";
        try {
            this.f46138k = MediaCodec.createEncoderByType(str);
        } catch (Exception e4) {
            if (videoCodecFormat.codecId == 2) {
                Log.e(f46142n, "do not support hevc, fallback to avc");
                videoCodecFormat.codecId = 1;
            } else {
                str2 = str;
            }
            try {
                this.f46138k = MediaCodec.createEncoderByType(str2);
                str = str2;
            } catch (Exception unused) {
                Log.e(f46142n, "Failed to start MediaCodec surface encoder");
                e4.printStackTrace();
            }
        }
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat(str, ((videoCodecFormat.width + 15) / 16) * 16, ((videoCodecFormat.height + 1) / 2) * 2);
        createVideoFormat.setInteger("color-format", 2130708361);
        createVideoFormat.setInteger(KSYMediaMeta.IJKM_KEY_BITRATE, videoCodecFormat.bitrate);
        createVideoFormat.setInteger("bitrate-mode", videoCodecFormat.bitrateMode);
        createVideoFormat.setInteger("frame-rate", (int) (videoCodecFormat.frameRate + 0.5f));
        if (Build.VERSION.SDK_INT < 25) {
            createVideoFormat.setInteger("i-frame-interval", (int) (videoCodecFormat.iFrameInterval + 0.5f));
        } else {
            createVideoFormat.setFloat("i-frame-interval", videoCodecFormat.iFrameInterval);
        }
        if (videoCodecFormat.codecId == 1) {
            int i11 = videoCodecFormat.width * videoCodecFormat.height > 921600 ? 2048 : 512;
            int i12 = videoCodecFormat.profile;
            if (i12 == 1) {
                i10 = 8;
            } else if (i12 != 2) {
                i10 = 1;
            }
            createVideoFormat.setInteger(n.f29237a, i10);
            createVideoFormat.setInteger("level", i11);
        } else {
            i10 = 1;
        }
        Log.d(f46142n, "MediaFormat: " + createVideoFormat);
        try {
            try {
                this.f46138k.configure(createVideoFormat, (Surface) null, (MediaCrypto) null, 1);
            } catch (Exception e10) {
                Log.e(f46142n, "Failed to start MediaCodec surface encoder");
                e10.printStackTrace();
                return -1002;
            }
        } catch (Exception e11) {
            if (videoCodecFormat.codecId == 1 && i10 != 1) {
                createVideoFormat.setInteger(n.f29237a, 1);
                this.f46138k.configure(createVideoFormat, (Surface) null, (MediaCrypto) null, 1);
            } else {
                throw e11;
            }
        }
        this.f46147s = this.f46138k.createInputSurface();
        this.f46138k.start();
        this.f46150v = videoCodecFormat.frameRate;
        this.f46151w.clear();
        int integer = createVideoFormat.getInteger("width");
        int integer2 = createVideoFormat.getInteger("height");
        VideoCodecFormat videoCodecFormat2 = new VideoCodecFormat((VideoCodecFormat) this.f46078b);
        videoCodecFormat2.width = integer;
        videoCodecFormat2.height = integer2;
        this.f46152x = videoCodecFormat2;
        c(videoCodecFormat2);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: b */
    public void a(ImgTexFrame imgTexFrame) {
        this.f46144p.getFboManager().unlock(imgTexFrame.textureId);
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a() {
        try {
            this.f46138k.signalEndOfInputStream();
        } catch (Exception e4) {
            Log.e(f46142n, "signalEndOfInputStream failed, ignore");
            e4.printStackTrace();
        }
        try {
            a(true);
        } catch (Exception unused) {
            Log.e(f46142n, "signal end of stream failed, ignore");
        }
        try {
            this.f46138k.stop();
        } catch (Exception unused2) {
            Log.w(f46142n, "stop encoder failed, ignore");
        }
        this.f46138k.release();
        this.f46138k = null;
        int i4 = this.f46149u;
        if (i4 != 0) {
            GLES20.glDeleteProgram(i4);
            GLES20.glGetError();
            this.f46149u = 0;
        }
        f fVar = this.f46148t;
        if (fVar != null) {
            fVar.f();
            this.f46148t = null;
        }
        d dVar = this.f46146r;
        if (dVar != null) {
            dVar.a();
            this.f46146r = null;
        }
        this.f46145q = false;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected boolean a(Object obj, Object obj2) {
        ImgTexFormat imgTexFormat = (ImgTexFormat) obj;
        VideoCodecFormat videoCodecFormat = (VideoCodecFormat) obj2;
        videoCodecFormat.width = imgTexFormat.width;
        videoCodecFormat.height = imgTexFormat.height;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.MediaCodecEncoderBase
    /* renamed from: a */
    public ImgPacket b(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        boolean z9 = false;
        boolean z10 = true;
        boolean z11 = byteBuffer == null || byteBuffer.limit() == 0;
        long j4 = bufferInfo.presentationTimeUs / 1000;
        ImgPacket imgPacket = new ImgPacket(this.f46152x, byteBuffer, j4, j4);
        int i4 = bufferInfo.flags;
        if ((i4 & 4) != 0) {
            imgPacket.flags |= 4;
        }
        if ((i4 & 1) != 0) {
            imgPacket.flags |= 1;
            z9 = true;
        }
        if ((i4 & 2) != 0) {
            imgPacket.flags |= 2;
        } else {
            z10 = z11;
        }
        if (!z10) {
            Long poll = this.f46151w.poll();
            if (poll != null) {
                if (z9 && poll.longValue() != imgPacket.pts) {
                    Log.w(f46142n, "key frame dts calculate error! pts=" + imgPacket.pts + " val=" + poll);
                }
                long longValue = poll.longValue() - (1000.0f / this.f46150v);
                imgPacket.dts = longValue;
                imgPacket.dts = Math.min(longValue, imgPacket.pts);
            } else {
                Log.e(f46142n, "pts queue is empty while trying to cal dts!");
            }
        }
        return imgPacket;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: a */
    public int b(ImgTexFrame imgTexFrame) {
        try {
            if (!this.f46145q) {
                a(this.f46144p.getEGLContext());
                this.f46145q = true;
            }
            a(false);
            GLES20.glClear(16384);
            d(imgTexFrame);
            GLES20.glFinish();
            if (this.f46086j) {
                Log.d(f46142n, "request key frame");
                Bundle bundle = new Bundle();
                bundle.putInt("request-sync", 0);
                this.f46138k.setParameters(bundle);
                this.f46086j = false;
            }
            this.f46148t.a(imgTexFrame.pts * 1000 * 1000);
            this.f46148t.e();
            if (!this.f46151w.offer(Long.valueOf(imgTexFrame.pts))) {
                Log.e(f46142n, "offer pts failed!");
            }
            return 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            return -1001;
        } finally {
            this.f46144p.getFboManager().unlock(imgTexFrame.textureId);
        }
    }

    private void a(EGLContext eGLContext) {
        f fVar;
        if (this.f46146r != null && (fVar = this.f46148t) != null) {
            fVar.d();
            this.f46148t.c();
            this.f46146r.a();
            d dVar = new d(eGLContext, 1);
            this.f46146r = dVar;
            this.f46148t.a(dVar);
        } else {
            d dVar2 = new d(eGLContext, 1);
            this.f46146r = dVar2;
            this.f46148t = new f(dVar2, this.f46147s);
        }
        this.f46148t.d();
        GLES20.glViewport(0, 0, this.f46148t.a(), this.f46148t.b());
    }
}
