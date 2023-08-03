package com.ksyun.media.streamer.encoder;

import android.annotation.TargetApi;
import android.media.Image;
import android.media.ImageReader;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.util.Log;
import android.view.Surface;
import com.ksyun.media.streamer.encoder.AVEncoderWrapper;
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

@TargetApi(19)
/* loaded from: classes3.dex */
public class AVCodecSurfaceEncoder extends Encoder<ImgTexFrame, ImgPacket> implements AVEncoderWrapper.a {

    /* renamed from: k  reason: collision with root package name */
    private static final String f46014k = "AVCodecSurfaceEncoder";

    /* renamed from: l  reason: collision with root package name */
    private static final boolean f46015l = false;

    /* renamed from: m  reason: collision with root package name */
    private GLRender f46016m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f46017n;

    /* renamed from: o  reason: collision with root package name */
    private d f46018o;

    /* renamed from: p  reason: collision with root package name */
    private Surface f46019p;

    /* renamed from: q  reason: collision with root package name */
    private f f46020q;

    /* renamed from: r  reason: collision with root package name */
    private int f46021r;

    /* renamed from: s  reason: collision with root package name */
    private ImageReader f46022s;

    /* renamed from: t  reason: collision with root package name */
    private ByteBuffer f46023t;

    /* renamed from: u  reason: collision with root package name */
    private AVEncoderWrapper f46024u;

    /* renamed from: v  reason: collision with root package name */
    private VideoCodecFormat f46025v;

    /* renamed from: w  reason: collision with root package name */
    private GLRender.OnReadyListener f46026w;

    public AVCodecSurfaceEncoder(GLRender gLRender) {
        GLRender.OnReadyListener onReadyListener = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.encoder.AVCodecSurfaceEncoder.2
            @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
            public void onReady() {
                AVCodecSurfaceEncoder.this.f46017n = false;
                AVCodecSurfaceEncoder.this.f46021r = 0;
            }
        };
        this.f46026w = onReadyListener;
        this.f46016m = gLRender;
        gLRender.addListener(onReadyListener);
    }

    @Override // com.ksyun.media.streamer.encoder.AVEncoderWrapper.a
    public void onEncoded(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4) {
        if ((i4 & 2) != 0) {
            VideoCodecFormat videoCodecFormat = new VideoCodecFormat((VideoCodecFormat) this.f46078b);
            this.f46025v = videoCodecFormat;
            videoCodecFormat.avCodecParPtr = this.f46024u.c();
            c(this.f46025v);
        }
        ImgPacket imgPacket = new ImgPacket(this.f46025v, byteBuffer, j11, j10, j4);
        imgPacket.flags = i4;
        a((AVCodecSurfaceEncoder) imgPacket);
        imgPacket.unref();
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    public void release() {
        this.f46016m.removeListener(this.f46026w);
        super.release();
    }

    private void d(ImgTexFrame imgTexFrame) {
        ImgTexFormat imgTexFormat = imgTexFrame.format;
        int i4 = imgTexFrame.textureId;
        float[] fArr = imgTexFrame.texMatrix;
        int i10 = imgTexFormat.colorFormat;
        int i11 = i10 == 3 ? 36197 : 3553;
        if (this.f46021r == 0) {
            int createProgram = GlUtil.createProgram("uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", i10 == 3 ? "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n" : "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
            this.f46021r = createProgram;
            if (createProgram == 0) {
                Log.e(f46014k, "Created program " + this.f46021r + " failed");
                throw new RuntimeException("Unable to create program");
            }
        }
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f46021r, "aPosition");
        GlUtil.checkLocation(glGetAttribLocation, "aPosition");
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.f46021r, "aTextureCoord");
        GlUtil.checkLocation(glGetAttribLocation2, "aTextureCoord");
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.f46021r, "uTexMatrix");
        GlUtil.checkLocation(glGetUniformLocation, "uTexMatrix");
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(this.f46021r);
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
    protected void b(Object obj) {
        ImgTexFormat imgTexFormat = (ImgTexFormat) obj;
        VideoCodecFormat videoCodecFormat = (VideoCodecFormat) this.f46078b;
        if (videoCodecFormat.width == imgTexFormat.width && videoCodecFormat.height == imgTexFormat.height) {
            return;
        }
        Log.d(f46014k, "restart encoder");
        b();
        a();
        videoCodecFormat.width = imgTexFormat.width;
        videoCodecFormat.height = imgTexFormat.height;
        a(this.f46078b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: c  reason: avoid collision after fix types in other method */
    public void a(ImgTexFrame imgTexFrame) {
        this.f46016m.getFboManager().unlock(imgTexFrame.textureId);
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected int a(Object obj) {
        if (obj instanceof VideoCodecFormat) {
            VideoCodecFormat videoCodecFormat = (VideoCodecFormat) obj;
            AVEncoderWrapper aVEncoderWrapper = new AVEncoderWrapper();
            this.f46024u = aVEncoderWrapper;
            aVEncoderWrapper.a(this);
            int a10 = this.f46024u.a(videoCodecFormat.codecId, videoCodecFormat.bitrate, videoCodecFormat.pixFmt, videoCodecFormat.width, videoCodecFormat.height, videoCodecFormat.frameRate, videoCodecFormat.iFrameInterval, videoCodecFormat.scene, videoCodecFormat.profile, videoCodecFormat.crf, videoCodecFormat.liveStreaming, videoCodecFormat.bitrateMode);
            if (a10 == 0 && this.f46022s == null) {
                ImageReader newInstance = ImageReader.newInstance(videoCodecFormat.width, videoCodecFormat.height, 1, 1);
                this.f46022s = newInstance;
                this.f46019p = newInstance.getSurface();
                this.f46022s.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.ksyun.media.streamer.encoder.AVCodecSurfaceEncoder.1
                    @Override // android.media.ImageReader.OnImageAvailableListener
                    public void onImageAvailable(ImageReader imageReader) {
                        try {
                            Image acquireNextImage = AVCodecSurfaceEncoder.this.f46022s.acquireNextImage();
                            ByteBuffer buffer = acquireNextImage.getPlanes()[0].getBuffer();
                            int rowStride = acquireNextImage.getPlanes()[0].getRowStride();
                            if (buffer != null) {
                                long timestamp = (acquireNextImage.getTimestamp() / 1000) / 1000;
                                int i4 = ((AVCodecSurfaceEncoder.this.f46025v.width * AVCodecSurfaceEncoder.this.f46025v.height) * 3) / 2;
                                if (AVCodecSurfaceEncoder.this.f46023t == null || AVCodecSurfaceEncoder.this.f46023t.capacity() < i4) {
                                    AVCodecSurfaceEncoder.this.f46023t = ByteBuffer.allocateDirect(i4);
                                }
                                if (AVCodecSurfaceEncoder.this.f46023t != null) {
                                    AVCodecSurfaceEncoder.this.f46023t.clear();
                                    ColorFormatConvert.RGBAToI420(buffer, rowStride, AVCodecSurfaceEncoder.this.f46025v.width, AVCodecSurfaceEncoder.this.f46025v.height, AVCodecSurfaceEncoder.this.f46023t);
                                    AVCodecSurfaceEncoder.this.f46023t.rewind();
                                    int a11 = AVCodecSurfaceEncoder.this.f46024u.a(AVCodecSurfaceEncoder.this.f46023t, timestamp, AVCodecSurfaceEncoder.this.f46086j ? 1 : 0);
                                    AVCodecSurfaceEncoder.this.f46086j = false;
                                    if (a11 < 0) {
                                        AVCodecSurfaceEncoder.this.b(a11);
                                    }
                                }
                            }
                            acquireNextImage.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            AVCodecSurfaceEncoder.this.b(-1002);
                        }
                    }
                }, null);
            }
            return a10;
        }
        return -1002;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public void b() {
        this.f46024u.a(null, 0L, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public int b(ImgTexFrame imgTexFrame) {
        try {
            try {
                if (!this.f46017n) {
                    a(this.f46016m.getEGLContext());
                    this.f46017n = true;
                }
                GLES20.glClear(16384);
                d(imgTexFrame);
                GLES20.glFinish();
                this.f46020q.a(imgTexFrame.pts * 1000 * 1000);
                this.f46020q.e();
                this.f46016m.getFboManager().unlock(imgTexFrame.textureId);
                return 0;
            } catch (Exception e4) {
                Log.e(f46014k, "Render to ImageReader surface failed!");
                e4.printStackTrace();
                this.f46016m.getFboManager().unlock(imgTexFrame.textureId);
                return -1001;
            }
        } catch (Throwable th) {
            this.f46016m.getFboManager().unlock(imgTexFrame.textureId);
            throw th;
        }
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a() {
        this.f46024u.a();
        this.f46024u.b();
        this.f46024u = null;
        ImageReader imageReader = this.f46022s;
        if (imageReader != null) {
            imageReader.close();
            this.f46022s = null;
        }
        int i4 = this.f46021r;
        if (i4 != 0) {
            GLES20.glDeleteProgram(i4);
            GLES20.glGetError();
            this.f46021r = 0;
        }
        f fVar = this.f46020q;
        if (fVar != null) {
            fVar.f();
            this.f46020q = null;
        }
        d dVar = this.f46018o;
        if (dVar != null) {
            dVar.a();
            this.f46018o = null;
        }
        this.f46017n = false;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a(int i4) {
        this.f46024u.a(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean c(ImgTexFrame imgTexFrame) {
        GLES20.glFinish();
        this.f46016m.getFboManager().lock(imgTexFrame.textureId);
        return false;
    }

    private void a(EGLContext eGLContext) {
        f fVar;
        if (this.f46018o != null && (fVar = this.f46020q) != null) {
            fVar.d();
            this.f46020q.c();
            this.f46018o.a();
            d dVar = new d(eGLContext, 0);
            this.f46018o = dVar;
            this.f46020q.a(dVar);
        } else {
            d dVar2 = new d(eGLContext, 0);
            this.f46018o = dVar2;
            this.f46020q = new f(dVar2, this.f46019p);
        }
        this.f46020q.d();
        GLES20.glViewport(0, 0, this.f46020q.a(), this.f46020q.b());
    }
}
