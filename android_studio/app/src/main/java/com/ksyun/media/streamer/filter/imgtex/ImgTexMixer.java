package com.ksyun.media.streamer.filter.imgtex;

import android.graphics.RectF;
import android.opengl.GLES20;
import android.util.Log;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.util.gles.GLProgramLoadException;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class ImgTexMixer extends ImgTexFilterBase {
    public static final int SCALING_MODE_BEST_FIT = 1;
    public static final int SCALING_MODE_CENTER_CROP = 2;
    public static final int SCALING_MODE_CROP = 3;
    public static final int SCALING_MODE_FULL_FILL = 0;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46509a = "ImgTexMixer";

    /* renamed from: b  reason: collision with root package name */
    private static final String f46510b = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform  float alpha;\nvoid main() {\n vec4 tc = texture2D(sTexture, vTextureCoord); tc = tc * alpha; gl_FragColor = tc;\n}\n";

    /* renamed from: c  reason: collision with root package name */
    private static final int f46511c = 8;

    /* renamed from: d  reason: collision with root package name */
    private int f46512d;

    /* renamed from: e  reason: collision with root package name */
    private int f46513e;

    /* renamed from: f  reason: collision with root package name */
    private ImgTexFormat[] f46514f;

    /* renamed from: g  reason: collision with root package name */
    private RectF[] f46515g;

    /* renamed from: h  reason: collision with root package name */
    private RectF[] f46516h;

    /* renamed from: i  reason: collision with root package name */
    private RectF[] f46517i;

    /* renamed from: j  reason: collision with root package name */
    private float[] f46518j;

    /* renamed from: k  reason: collision with root package name */
    private int[] f46519k;

    /* renamed from: l  reason: collision with root package name */
    private boolean[] f46520l;

    /* renamed from: m  reason: collision with root package name */
    private ImgTexFormat f46521m;
    protected String mFragmentShader;
    protected String mFragmentShaderOES;
    protected int mProgram;
    protected int mProgramOES;
    protected String mVertexShader;

    /* renamed from: n  reason: collision with root package name */
    private FloatBuffer[] f46522n;

    /* renamed from: o  reason: collision with root package name */
    private FloatBuffer[] f46523o;

    public ImgTexMixer(GLRender gLRender) {
        super(gLRender);
        this.mVertexShader = "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        this.mFragmentShader = "uniform sampler2D sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform  float alpha;\nvoid main() {\n vec4 tc = texture2D(sTexture, vTextureCoord); tc = tc * alpha; gl_FragColor = tc;\n}\n";
        this.mFragmentShaderOES = "#extension GL_OES_EGL_image_external : require\nuniform samplerExternalOES sTexture;\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform  float alpha;\nvoid main() {\n vec4 tc = texture2D(sTexture, vTextureCoord); tc = tc * alpha; gl_FragColor = tc;\n}\n";
        this.f46514f = new ImgTexFormat[getSinkPinNum()];
        this.f46515g = new RectF[getSinkPinNum()];
        this.f46516h = new RectF[getSinkPinNum()];
        this.f46518j = new float[getSinkPinNum()];
        this.f46519k = new int[getSinkPinNum()];
        this.f46520l = new boolean[getSinkPinNum()];
        this.f46522n = new FloatBuffer[getSinkPinNum()];
        this.f46523o = new FloatBuffer[getSinkPinNum()];
        this.f46517i = new RectF[getSinkPinNum()];
        for (int i4 = 0; i4 < getSinkPinNum(); i4++) {
            this.f46515g[i4] = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
            this.f46516h[i4] = new RectF(this.f46515g[i4]);
            this.f46517i[i4] = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
            this.f46518j[i4] = 1.0f;
            this.f46519k[i4] = 0;
            this.f46522n[i4] = TexTransformUtil.getTexCoordsBuf();
            this.f46523o[i4] = TexTransformUtil.getVertexCoordsBuf();
        }
    }

    private void a(ImgTexFrame imgTexFrame, FloatBuffer floatBuffer, FloatBuffer floatBuffer2, float f10) {
        int i4;
        int i10;
        float[] fArr = imgTexFrame.texMatrix;
        int i11 = imgTexFrame.textureId;
        if (i11 == -1) {
            return;
        }
        if (!this.mInited) {
            this.mProgram = 0;
            this.mProgramOES = 0;
            this.mInited = true;
        }
        if (imgTexFrame.format.colorFormat == 3) {
            i4 = 36197;
            if (this.mProgramOES == 0) {
                int createProgram = GlUtil.createProgram(this.mVertexShader, this.mFragmentShaderOES);
                this.mProgramOES = createProgram;
                if (createProgram == 0) {
                    Log.e(f46509a, "Created program " + this.mProgramOES + " failed");
                    throw new RuntimeException("Unable to create program");
                }
            }
            i10 = this.mProgramOES;
        } else {
            i4 = 3553;
            if (this.mProgram == 0) {
                int createProgram2 = GlUtil.createProgram(this.mVertexShader, this.mFragmentShader);
                this.mProgram = createProgram2;
                if (createProgram2 == 0) {
                    Log.e(f46509a, "Created program " + this.mProgram + " failed");
                    throw new GLProgramLoadException("Unable to create program");
                }
            }
            i10 = this.mProgram;
        }
        int glGetAttribLocation = GLES20.glGetAttribLocation(i10, "aPosition");
        GlUtil.checkLocation(glGetAttribLocation, "aPosition");
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(i10, "aTextureCoord");
        GlUtil.checkLocation(glGetAttribLocation2, "aTextureCoord");
        int glGetUniformLocation = GLES20.glGetUniformLocation(i10, "uTexMatrix");
        GlUtil.checkLocation(glGetUniformLocation, "uTexMatrix");
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(i10);
        GlUtil.checkGlError("glUseProgram");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(i4, i11);
        GLES20.glUniformMatrix4fv(glGetUniformLocation, 1, false, fArr, 0);
        GlUtil.checkGlError("glUniformMatrix4fv");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 8, (Buffer) floatBuffer2);
        GlUtil.checkGlError("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation2);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(glGetAttribLocation2, 2, 5126, false, 8, (Buffer) floatBuffer);
        GlUtil.checkGlError("glVertexAttribPointer");
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(i10, "alpha");
        GlUtil.checkLocation(glGetUniformLocation2, "alpha");
        GLES20.glUniform1f(glGetUniformLocation2, f10);
        GLES20.glDrawArrays(5, 0, 4);
        GlUtil.checkGlError("glDrawArrays");
        GLES20.glDisableVertexAttribArray(glGetAttribLocation);
        GLES20.glDisableVertexAttribArray(glGetAttribLocation2);
        GLES20.glBindTexture(i4, 0);
        GLES20.glUseProgram(0);
    }

    public RectF getRectForCrop(int i4) {
        if (i4 < getSinkPinNum()) {
            return this.f46517i[i4];
        }
        return null;
    }

    public RectF getRenderRect(int i4) {
        if (i4 < getSinkPinNum()) {
            return this.f46515g[i4];
        }
        return null;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 8;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    protected ImgTexFormat getSrcPinFormat() {
        if (this.f46521m == null) {
            Log.w(f46509a, "you must call setTargetSize");
        }
        return this.f46521m;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onDraw(ImgTexFrame[] imgTexFrameArr) {
        GLES20.glBlendFunc(1, 771);
        for (int i4 = 0; i4 < imgTexFrameArr.length; i4++) {
            if (imgTexFrameArr[i4] != null) {
                a(imgTexFrameArr[i4], this.f46522n[i4], this.f46523o[i4], this.f46518j[i4]);
            }
        }
        GLES20.glBlendFunc(770, 771);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onFormatChanged(int i4, ImgTexFormat imgTexFormat) {
        this.f46514f[i4] = imgTexFormat;
        a(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        int i4 = this.mProgram;
        if (i4 != 0) {
            GLES20.glDeleteProgram(i4);
            this.mProgram = 0;
        }
        int i10 = this.mProgramOES;
        if (i10 != 0) {
            GLES20.glDeleteProgram(i10);
            this.mProgramOES = 0;
        }
    }

    public void setMirror(int i4, boolean z9) {
        boolean[] zArr = this.f46520l;
        if (i4 < zArr.length) {
            zArr[i4] = z9;
            a(i4);
        }
    }

    public void setRectForCrop(int i4, RectF rectF) {
        if (i4 < getSinkPinNum()) {
            this.f46517i[i4].set(rectF);
            a(i4);
        }
    }

    public void setRenderRect(int i4, RectF rectF, float f10) {
        if (i4 < getSinkPinNum()) {
            this.f46515g[i4].set(rectF);
            this.f46516h[i4].set(rectF);
            this.f46518j[i4] = f10;
            a(i4);
        }
    }

    public void setScalingMode(int i4, int i10) {
        if (i4 < getSinkPinNum()) {
            this.f46519k[i4] = i10;
            a(i4);
        }
    }

    public void setTargetSize(int i4, int i10) {
        this.f46512d = i4;
        this.f46513e = i10;
        this.f46521m = new ImgTexFormat(1, i4, i10);
        for (int i11 = 0; i11 < getSinkPinNum(); i11++) {
            a(i11);
        }
    }

    public void setRectForCrop(int i4, float f10, float f11, float f12, float f13) {
        if (i4 < getSinkPinNum()) {
            this.f46517i[i4].set(f10, f11, f12 + f10, f13 + f11);
            a(i4);
        }
    }

    public void setRenderRect(int i4, float f10, float f11, float f12, float f13, float f14) {
        if (i4 < getSinkPinNum()) {
            this.f46515g[i4].set(f10, f11, f12 + f10, f13 + f11);
            this.f46516h[i4].set(this.f46515g[i4]);
            this.f46518j[i4] = f14;
            a(i4);
        }
    }

    private void a(int i4) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        if (this.f46512d == 0 || this.f46513e == 0) {
            return;
        }
        ImgTexFormat imgTexFormat = this.f46514f[i4];
        if (imgTexFormat != null && imgTexFormat.width > 0 && imgTexFormat.height > 0) {
            if (this.f46515g[i4].width() == 0.0f) {
                float height = (((this.f46515g[i4].height() * imgTexFormat.width) / imgTexFormat.height) * this.f46513e) / this.f46512d;
                this.f46516h[i4].right = this.f46515g[i4].right + height;
            } else if (this.f46515g[i4].height() == 0.0f) {
                float width = (((this.f46515g[i4].width() * imgTexFormat.height) / imgTexFormat.width) * this.f46512d) / this.f46513e;
                this.f46516h[i4].bottom = this.f46515g[i4].bottom + width;
            }
        }
        RectF rectF = this.f46516h[i4];
        if (imgTexFormat == null || imgTexFormat.width == 0 || imgTexFormat.height == 0 || rectF == null || rectF.width() == 0.0f || rectF.height() == 0.0f) {
            return;
        }
        float f16 = imgTexFormat.width / imgTexFormat.height;
        float width2 = (this.f46512d * rectF.width()) / (this.f46513e * rectF.height());
        if (this.f46519k[i4] == 1) {
            if (f16 > width2) {
                f15 = (1.0f - (width2 / f16)) / 2.0f;
                f14 = 0.0f;
            } else {
                f14 = (1.0f - (f16 / width2)) / 2.0f;
                f15 = 0.0f;
            }
            Log.d(f46509a, "sar=" + f16 + " dar=" + width2 + " cropX=" + f14 + " cropY=" + f15);
            RectF rectF2 = new RectF(rectF.left + f14, rectF.top + f15, rectF.right - f14, rectF.bottom - f15);
            StringBuilder sb = new StringBuilder();
            sb.append("rectF=");
            sb.append(rectF2);
            Log.d(f46509a, sb.toString());
            rectF = rectF2;
        }
        this.f46523o[i4] = a(rectF);
        int[] iArr = this.f46519k;
        if (iArr[i4] == 2) {
            if (f16 > width2) {
                f10 = (1.0f - (width2 / f16)) / 2.0f;
                f12 = f10;
                f11 = 0.0f;
                f13 = 0.0f;
                this.f46522n[i4] = TexTransformUtil.getTexCoordsBuf(f10, f11, f12, f13, 0, this.f46520l[i4], false);
            }
            f11 = (1.0f - (f16 / width2)) / 2.0f;
            f13 = f11;
            f10 = 0.0f;
            f12 = 0.0f;
            this.f46522n[i4] = TexTransformUtil.getTexCoordsBuf(f10, f11, f12, f13, 0, this.f46520l[i4], false);
        } else if (iArr[i4] != 3) {
            f10 = 0.0f;
            f11 = 0.0f;
            f12 = 0.0f;
            f13 = 0.0f;
            this.f46522n[i4] = TexTransformUtil.getTexCoordsBuf(f10, f11, f12, f13, 0, this.f46520l[i4], false);
        } else if (f16 > width2) {
            float f17 = 1.0f - (width2 / f16);
            float f18 = this.f46517i[i4].left;
            f10 = f18;
            f12 = f17 - f18;
            f11 = 0.0f;
            f13 = 0.0f;
            this.f46522n[i4] = TexTransformUtil.getTexCoordsBuf(f10, f11, f12, f13, 0, this.f46520l[i4], false);
        } else {
            float f19 = this.f46517i[i4].top;
            f11 = f19;
            f13 = (1.0f - (f16 / width2)) - f19;
            f10 = 0.0f;
            f12 = 0.0f;
            this.f46522n[i4] = TexTransformUtil.getTexCoordsBuf(f10, f11, f12, f13, 0, this.f46520l[i4], false);
        }
    }

    private FloatBuffer a(RectF rectF) {
        float f10 = rectF.left;
        float f11 = rectF.bottom;
        float f12 = rectF.right;
        float f13 = rectF.top;
        return GlUtil.createFloatBuffer(new float[]{(f10 * 2.0f) - 1.0f, 1.0f - (f11 * 2.0f), (f12 * 2.0f) - 1.0f, 1.0f - (f11 * 2.0f), (f10 * 2.0f) - 1.0f, 1.0f - (f13 * 2.0f), (f12 * 2.0f) - 1.0f, 1.0f - (f13 * 2.0f)});
    }
}
