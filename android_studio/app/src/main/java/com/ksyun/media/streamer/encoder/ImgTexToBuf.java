package com.ksyun.media.streamer.encoder;

import android.annotation.TargetApi;
import android.media.Image;
import android.media.ImageReader;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.FrameBufferCache;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import com.ksyun.media.streamer.util.gles.d;
import com.ksyun.media.streamer.util.gles.f;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

@TargetApi(19)
/* loaded from: classes3.dex */
public class ImgTexToBuf {
    public static final int ERROR_UNKNOWN = -2;
    public static final int ERROR_UNSUPPORTED = -1;

    /* renamed from: d  reason: collision with root package name */
    private static final String f46097d = "ImgTexToBuf";

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f46098e = false;

    /* renamed from: f  reason: collision with root package name */
    private static final String f46099f = "precision mediump float;\nvarying vec2 vTextureCoord;\n\nvec3 Rgb2Yuv( vec3 rgb ) {\n    lowp float  y = rgb.x *  .299 + rgb.y *  .587 + rgb.z *  .1140 + 0.0;\n    lowp float  u = rgb.x * -.169 + rgb.y * -.331 + rgb.z *  .4990 + 0.5;\n    lowp float  v = rgb.x *  .499 + rgb.y * -.418 + rgb.z * -.0813 + 0.5;\n    return vec3(y,u,v);\n}\n\nvoid main() {\n    gl_FragColor = vec4(Rgb2Yuv(texture2D(sTexture, vTextureCoord).rgb), 1);\n}\n";

    /* renamed from: g  reason: collision with root package name */
    private static final int f46100g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final int f46101h = 2;

    /* renamed from: i  reason: collision with root package name */
    private static final int f46102i = 3;

    /* renamed from: j  reason: collision with root package name */
    private GLRender f46106j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f46107k;

    /* renamed from: l  reason: collision with root package name */
    private d f46108l;

    /* renamed from: m  reason: collision with root package name */
    private Surface f46109m;

    /* renamed from: n  reason: collision with root package name */
    private f f46110n;

    /* renamed from: o  reason: collision with root package name */
    private int f46111o;

    /* renamed from: q  reason: collision with root package name */
    private ImgTexFormat f46113q;

    /* renamed from: r  reason: collision with root package name */
    private ImageReader f46114r;

    /* renamed from: s  reason: collision with root package name */
    private FrameBufferCache f46115s;

    /* renamed from: t  reason: collision with root package name */
    private ImgBufFormat f46116t;

    /* renamed from: u  reason: collision with root package name */
    private HandlerThread f46117u;

    /* renamed from: v  reason: collision with root package name */
    private Handler f46118v;

    /* renamed from: y  reason: collision with root package name */
    private ErrorListener f46121y;

    /* renamed from: p  reason: collision with root package name */
    private int f46112p = 3;

    /* renamed from: w  reason: collision with root package name */
    private ConditionVariable f46119w = new ConditionVariable();

    /* renamed from: a  reason: collision with root package name */
    protected volatile boolean f46103a = false;

    /* renamed from: z  reason: collision with root package name */
    private GLRender.OnReadyListener f46122z = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.encoder.ImgTexToBuf.1
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
        public void onReady() {
            ImgTexToBuf.this.f46107k = false;
            ImgTexToBuf.this.f46111o = 0;
        }
    };
    public SinkPin<ImgTexFrame> mSinkPin = new a();
    public SrcPin<ImgBufFrame> mSrcPin = new SrcPin<>();

    /* renamed from: c  reason: collision with root package name */
    protected AtomicInteger f46105c = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    protected AtomicInteger f46104b = new AtomicInteger(0);

    /* renamed from: x  reason: collision with root package name */
    private final Handler f46120x = new Handler(Looper.getMainLooper());

    /* loaded from: classes3.dex */
    public interface ErrorListener {
        void onError(ImgTexToBuf imgTexToBuf, int i4);
    }

    /* loaded from: classes3.dex */
    private class a extends SinkPin<ImgTexFrame> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public synchronized void onFrameAvailable(ImgTexFrame imgTexFrame) {
            if (ImgTexToBuf.this.f46103a) {
                if (ImgTexToBuf.this.f46118v.hasMessages(2)) {
                    Log.d(ImgTexToBuf.f46097d, "total dropped: " + ImgTexToBuf.this.f46105c.get() + " total sent: " + ImgTexToBuf.this.f46104b.get());
                    ImgTexToBuf.this.f46105c.incrementAndGet();
                    return;
                }
                ImgTexToBuf.this.f46104b.incrementAndGet();
                GLES20.glFinish();
                ImgTexToBuf.this.f46106j.getFboManager().lock(imgTexFrame.textureId);
                ImgTexToBuf.this.f46119w.close();
                ImgTexToBuf.this.f46118v.sendMessage(ImgTexToBuf.this.f46118v.obtainMessage(2, imgTexFrame));
                ImgTexToBuf.this.f46119w.block();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public synchronized void onDisconnect(boolean z9) {
            if (z9) {
                ImgTexToBuf.this.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public synchronized void onFormatChanged(Object obj) {
            ImgTexToBuf.this.f46103a = true;
            ImgTexToBuf.this.f46118v.sendMessage(ImgTexToBuf.this.f46118v.obtainMessage(1, obj));
        }
    }

    public ImgTexToBuf(GLRender gLRender) {
        this.f46106j = gLRender;
        gLRender.addListener(this.f46122z);
        a();
    }

    public int getFrameDropped() {
        return this.f46105c.get();
    }

    public int getFrameSent() {
        return this.f46104b.get();
    }

    public SinkPin<ImgTexFrame> getSinkPin() {
        return this.mSinkPin;
    }

    public SrcPin<ImgBufFrame> getSrcPin() {
        return this.mSrcPin;
    }

    public void release() {
        this.f46119w.open();
        this.f46106j.removeListener(this.f46122z);
        this.mSrcPin.disconnect(true);
        if (this.f46117u != null) {
            this.f46118v.sendEmptyMessage(3);
            try {
                try {
                    this.f46117u.join();
                } catch (Exception unused) {
                    Log.d(f46097d, "ImgTexToBuf thread interrupted");
                }
            } finally {
                this.f46117u = null;
            }
        }
    }

    public void resetFrameStat() {
        this.f46105c.set(0);
        this.f46104b.set(0);
    }

    public void setErrorListener(ErrorListener errorListener) {
        this.f46121y = errorListener;
    }

    public void setOutputColorFormat(int i4) {
        if (i4 != 5 && i4 != 3 && i4 != 6) {
            throw new IllegalArgumentException("only FMT_RGBA or FMT_I420 supported!");
        }
        this.f46112p = i4;
        this.f46115s = null;
    }

    @Deprecated
    public void start() {
    }

    @Deprecated
    public void stop() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ImageReader imageReader = this.f46114r;
        if (imageReader != null) {
            imageReader.close();
            this.f46114r = null;
        }
        int i4 = this.f46111o;
        if (i4 != 0) {
            GLES20.glDeleteProgram(i4);
            GLES20.glGetError();
            this.f46111o = 0;
        }
        f fVar = this.f46110n;
        if (fVar != null) {
            fVar.f();
            this.f46110n = null;
        }
        d dVar = this.f46108l;
        if (dVar != null) {
            dVar.a();
            this.f46108l = null;
        }
        this.f46116t = null;
        this.f46115s = null;
        this.f46107k = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i4) {
        this.f46120x.post(new Runnable() { // from class: com.ksyun.media.streamer.encoder.ImgTexToBuf.2
            @Override // java.lang.Runnable
            public void run() {
                if (ImgTexToBuf.this.f46121y != null) {
                    ImgTexToBuf.this.f46121y.onError(ImgTexToBuf.this, i4);
                }
            }
        });
    }

    private void a() {
        HandlerThread handlerThread = new HandlerThread(f46097d);
        this.f46117u = handlerThread;
        handlerThread.start();
        this.f46118v = new Handler(this.f46117u.getLooper()) { // from class: com.ksyun.media.streamer.encoder.ImgTexToBuf.3
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i4 = message.what;
                if (i4 != 1) {
                    try {
                        if (i4 == 2) {
                            try {
                                ImgTexToBuf.this.a((ImgTexFrame) message.obj);
                            } catch (Exception unused) {
                                ImgTexToBuf.this.a(-2);
                            }
                            return;
                        } else if (i4 != 3) {
                            return;
                        } else {
                            ImgTexToBuf.this.b();
                            ImgTexToBuf.this.f46117u.quit();
                            return;
                        }
                    } finally {
                        ImgTexToBuf.this.f46119w.open();
                    }
                }
                try {
                    ImgTexToBuf.this.a((ImgTexFormat) message.obj);
                } catch (Exception unused2) {
                    ImgTexToBuf.this.a(-1);
                }
            }
        };
    }

    protected void a(ImageReader imageReader) {
        Image acquireNextImage = imageReader.acquireNextImage();
        ByteBuffer buffer = acquireNextImage.getPlanes()[0].getBuffer();
        int rowStride = acquireNextImage.getPlanes()[0].getRowStride();
        if (buffer != null) {
            long timestamp = (acquireNextImage.getTimestamp() / 1000) / 1000;
            if (this.f46116t == null) {
                int i4 = this.f46112p;
                ImgTexFormat imgTexFormat = this.f46113q;
                ImgBufFormat imgBufFormat = new ImgBufFormat(i4, imgTexFormat.width, imgTexFormat.height, 0);
                this.f46116t = imgBufFormat;
                int i10 = this.f46112p;
                if (i10 == 5) {
                    imgBufFormat.stride = r7;
                    int[] iArr = {rowStride};
                    imgBufFormat.strideNum = 1;
                } else if (i10 == 6) {
                    imgBufFormat.stride = r9;
                    int[] iArr2 = {this.f46113q.width, 0, 0, 0};
                    imgBufFormat.strideNum = 4;
                }
                this.mSrcPin.onFormatChanged(imgBufFormat);
            }
            int i11 = this.f46112p;
            if (i11 == 5) {
                this.mSrcPin.onFrameAvailable(new ImgBufFrame(this.f46116t, buffer, timestamp));
            } else if (i11 == 3) {
                ImgBufFormat imgBufFormat2 = this.f46116t;
                int i12 = ((imgBufFormat2.width * imgBufFormat2.height) * 3) / 2;
                if (this.f46115s == null) {
                    this.f46115s = new FrameBufferCache(0, i12);
                }
                ByteBuffer poll = this.f46115s.poll(i12);
                if (poll != null) {
                    ImgBufFormat imgBufFormat3 = this.f46116t;
                    ColorFormatConvert.YUVAToI420(buffer, rowStride, imgBufFormat3.width, imgBufFormat3.height, poll);
                    poll.rewind();
                    ImgBufFrame imgBufFrame = new ImgBufFrame(this.f46116t, this.f46115s, poll, timestamp);
                    this.mSrcPin.onFrameAvailable(imgBufFrame);
                    imgBufFrame.unref();
                }
            } else {
                ImgBufFormat imgBufFormat4 = this.f46116t;
                int i13 = imgBufFormat4.width * imgBufFormat4.height;
                if (this.f46115s == null) {
                    this.f46115s = new FrameBufferCache(0, i13);
                }
                ByteBuffer poll2 = this.f46115s.poll(i13);
                if (poll2 != null) {
                    ImgBufFormat imgBufFormat5 = this.f46116t;
                    ColorFormatConvert.RGBAToBGR8(buffer, rowStride, imgBufFormat5.width, imgBufFormat5.height, poll2);
                    poll2.rewind();
                    ImgBufFrame imgBufFrame2 = new ImgBufFrame(this.f46116t, this.f46115s, poll2, timestamp);
                    this.mSrcPin.onFrameAvailable(imgBufFrame2);
                    imgBufFrame2.unref();
                }
            }
        }
        acquireNextImage.close();
    }

    private void b(ImgTexFrame imgTexFrame) {
        String str;
        ImgTexFormat imgTexFormat = imgTexFrame.format;
        int i4 = imgTexFrame.textureId;
        float[] fArr = imgTexFrame.texMatrix;
        int i10 = imgTexFormat.colorFormat;
        int i11 = i10 == 3 ? 36197 : 3553;
        if (this.f46111o == 0) {
            String str2 = this.f46112p == 3 ? f46099f : "precision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
            if (i10 == 3) {
                str = GlUtil.FRAGMENT_SHADER_OES_HEADER + str2;
            } else {
                str = GlUtil.FRAGMENT_SHADER_HEADER + str2;
            }
            int createProgram = GlUtil.createProgram("uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", str);
            this.f46111o = createProgram;
            if (createProgram == 0) {
                Log.e(f46097d, "Created program " + this.f46111o + " failed");
                throw new RuntimeException("Unable to create program");
            }
        }
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f46111o, "aPosition");
        GlUtil.checkLocation(glGetAttribLocation, "aPosition");
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.f46111o, "aTextureCoord");
        GlUtil.checkLocation(glGetAttribLocation2, "aTextureCoord");
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.f46111o, "uTexMatrix");
        GlUtil.checkLocation(glGetUniformLocation, "uTexMatrix");
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(this.f46111o);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ImgTexFormat imgTexFormat) {
        ImgTexFormat imgTexFormat2 = this.f46113q;
        if (imgTexFormat2 != null && this.f46114r != null && (imgTexFormat2.width != imgTexFormat.width || imgTexFormat2.height != imgTexFormat.height)) {
            b();
        }
        this.f46113q = imgTexFormat;
        this.f46116t = null;
        if (this.f46114r == null) {
            ImageReader newInstance = ImageReader.newInstance(imgTexFormat.width, imgTexFormat.height, 1, 1);
            this.f46114r = newInstance;
            this.f46109m = newInstance.getSurface();
            this.f46114r.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.ksyun.media.streamer.encoder.ImgTexToBuf.4
                @Override // android.media.ImageReader.OnImageAvailableListener
                public void onImageAvailable(ImageReader imageReader) {
                    try {
                        ImgTexToBuf.this.a(imageReader);
                    } catch (Exception unused) {
                        ImgTexToBuf.this.a(-1);
                    }
                }
            }, this.f46118v);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ImgTexFrame imgTexFrame) {
        if (this.f46114r != null) {
            if ((imgTexFrame.flags & 4) != 0) {
                ImgBufFrame imgBufFrame = new ImgBufFrame(this.f46116t, null, 0L);
                imgBufFrame.flags |= 4;
                this.mSrcPin.onFrameAvailable(imgBufFrame);
                return;
            }
            if (!this.f46107k) {
                a(this.f46106j.getEGLContext());
                this.f46107k = true;
            }
            GLES20.glClear(16384);
            b(imgTexFrame);
            GLES20.glFinish();
            this.f46110n.a(imgTexFrame.pts * 1000 * 1000);
            this.f46110n.e();
        }
        this.f46106j.getFboManager().unlock(imgTexFrame.textureId);
    }

    private void a(EGLContext eGLContext) {
        f fVar;
        if (this.f46108l != null && (fVar = this.f46110n) != null) {
            fVar.d();
            this.f46110n.c();
            this.f46108l.a();
            d dVar = new d(eGLContext, 0);
            this.f46108l = dVar;
            this.f46110n.a(dVar);
        } else {
            d dVar2 = new d(eGLContext, 0);
            this.f46108l = dVar2;
            this.f46110n = new f(dVar2, this.f46109m);
        }
        this.f46110n.d();
        GLES20.glViewport(0, 0, this.f46110n.a(), this.f46110n.b());
    }
}
