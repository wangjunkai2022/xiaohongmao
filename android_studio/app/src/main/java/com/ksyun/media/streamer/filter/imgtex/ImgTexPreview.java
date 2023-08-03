package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.ConditionVariable;
import android.util.Log;
import android.view.TextureView;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import io.sentry.protocol.y;
import java.nio.Buffer;
import javax.microedition.khronos.egl.EGLContext;

/* loaded from: classes3.dex */
public class ImgTexPreview {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46524a = "ImgTexPreview";

    /* renamed from: d  reason: collision with root package name */
    private int f46527d;

    /* renamed from: e  reason: collision with root package name */
    private ImgTexFrame f46528e;

    /* renamed from: g  reason: collision with root package name */
    private ImgTexFrame f46530g;

    /* renamed from: f  reason: collision with root package name */
    private ConditionVariable f46529f = new ConditionVariable();

    /* renamed from: h  reason: collision with root package name */
    private boolean f46531h = false;

    /* renamed from: i  reason: collision with root package name */
    private GLRender.OnReadyListener f46532i = new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexPreview.1
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
        public void onReady() {
            Log.d(ImgTexPreview.f46524a, "onReady");
            ImgTexPreview.this.f46527d = 0;
            if (!ImgTexPreview.this.f46531h || ImgTexPreview.this.f46530g == null) {
                return;
            }
            ImgTexPreview.this.f46526c.requestRender();
        }
    };

    /* renamed from: j  reason: collision with root package name */
    private GLRender.OnSizeChangedListener f46533j = new GLRender.OnSizeChangedListener() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexPreview.2
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnSizeChangedListener
        public void onSizeChanged(int i4, int i10) {
            Log.d(ImgTexPreview.f46524a, "onSizeChanged " + i4 + y.b.f83919g + i10);
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private GLRender.OnDrawFrameListener f46534k = new GLRender.OnDrawFrameListener() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexPreview.3
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnDrawFrameListener
        public void onDrawFrame() {
            if (ImgTexPreview.this.f46528e != null) {
                GLES20.glClear(16384);
                ImgTexPreview imgTexPreview = ImgTexPreview.this;
                imgTexPreview.a(imgTexPreview.f46528e);
                GLES20.glFinish();
                ImgTexPreview.this.f46528e = null;
                ImgTexPreview.this.f46529f.open();
            }
            if (!ImgTexPreview.this.f46531h || ImgTexPreview.this.f46530g == null) {
                return;
            }
            GLES20.glClear(16384);
            ImgTexPreview imgTexPreview2 = ImgTexPreview.this;
            imgTexPreview2.a(imgTexPreview2.f46530g);
            GLES20.glFinish();
        }
    };

    /* renamed from: l  reason: collision with root package name */
    private GLRender.OnReleasedListener f46535l = new GLRender.OnReleasedListener() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexPreview.4
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReleasedListener
        public void onReleased() {
            ImgTexPreview.this.f46529f.open();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private SinkPin<ImgTexFrame> f46525b = new a();

    /* renamed from: c  reason: collision with root package name */
    private GLRender f46526c = new GLRender();

    /* loaded from: classes3.dex */
    private class a extends SinkPin<ImgTexFrame> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(ImgTexFrame imgTexFrame) {
            if (ImgTexPreview.this.f46526c != null) {
                ImgTexPreview.this.f46528e = imgTexFrame;
                ImgTexPreview.this.f46529f.close();
                if (ImgTexPreview.this.f46526c.getState() == 1) {
                    GLES20.glFinish();
                    ImgTexPreview.this.f46526c.requestRender();
                    ImgTexPreview.this.f46529f.block();
                    ImgTexPreview.this.f46530g = imgTexFrame;
                }
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public synchronized void onDisconnect(boolean z9) {
            super.onDisconnect(z9);
            if (z9) {
                ImgTexPreview.this.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
        }
    }

    public Object getDisplayPreview() {
        return this.f46526c.getCurrentView();
    }

    public GLRender getGLRender() {
        return this.f46526c;
    }

    public SinkPin<ImgTexFrame> getSinkPin() {
        return this.f46525b;
    }

    public void onPause() {
        this.f46526c.onPause();
    }

    public void onResume() {
        this.f46526c.onResume();
    }

    public void release() {
        this.f46526c.release();
    }

    public void setDisplayPreview(GLSurfaceView gLSurfaceView) {
        if (gLSurfaceView == null) {
            this.f46526c.release();
        } else {
            this.f46526c.init(gLSurfaceView);
        }
    }

    public void setEGL10Context(EGLContext eGLContext) {
        this.f46526c.setInitEGL10Context(eGLContext);
        this.f46526c.addListener(this.f46532i);
        this.f46526c.addListener(this.f46533j);
        this.f46526c.addListener(this.f46534k);
        this.f46526c.addListener(this.f46535l);
    }

    public void setKeepFrameOnResume(boolean z9) {
        this.f46531h = z9;
    }

    public void setDisplayPreview(TextureView textureView) {
        if (textureView == null) {
            this.f46526c.release();
        } else {
            this.f46526c.init(textureView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ImgTexFrame imgTexFrame) {
        ImgTexFormat imgTexFormat = imgTexFrame.format;
        int i4 = imgTexFrame.textureId;
        float[] fArr = imgTexFrame.texMatrix;
        int i10 = imgTexFormat.colorFormat;
        int i11 = i10 == 3 ? 36197 : 3553;
        if (this.f46527d == 0) {
            int createProgram = GlUtil.createProgram("uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", i10 == 3 ? "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n" : "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
            this.f46527d = createProgram;
            if (createProgram == 0) {
                Log.e(f46524a, "Created program " + this.f46527d + " failed");
                throw new RuntimeException("Unable to create program");
            }
        }
        GLES20.glBlendFunc(1, 771);
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f46527d, "aPosition");
        GlUtil.checkLocation(glGetAttribLocation, "aPosition");
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.f46527d, "aTextureCoord");
        GlUtil.checkLocation(glGetAttribLocation2, "aTextureCoord");
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.f46527d, "uTexMatrix");
        GlUtil.checkLocation(glGetUniformLocation, "uTexMatrix");
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(this.f46527d);
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
        GLES20.glBlendFunc(770, 771);
    }
}
