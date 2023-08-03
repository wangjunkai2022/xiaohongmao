package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;

/* loaded from: classes3.dex */
public class ImgBeautyGrindSimpleFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    private int f46353a;

    /* renamed from: b  reason: collision with root package name */
    private int f46354b;

    /* renamed from: c  reason: collision with root package name */
    private int f46355c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f46356d;

    /* renamed from: e  reason: collision with root package name */
    private float[] f46357e;

    /* renamed from: f  reason: collision with root package name */
    private float f46358f;

    /* renamed from: g  reason: collision with root package name */
    private ImgTexFormat f46359g;

    public ImgBeautyGrindSimpleFilter(GLRender gLRender) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 11);
        this.f46356d = new Object();
        this.f46358f = 1.0f;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isGrindRatioSupported() {
        return true;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        synchronized (this.f46356d) {
            GLES20.glUniform4fv(this.f46354b, 1, this.f46357e, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        super.onFormatChanged(imgTexFormat);
        this.f46359g = imgTexFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        this.f46353a = getUniformLocation("singleStepOffset");
        this.f46354b = getUniformLocation("params");
        int uniformLocation = getUniformLocation("scaleLumance");
        this.f46355c = uniformLocation;
        GLES20.glUniform1f(uniformLocation, this.f46358f);
        int i4 = this.f46353a;
        ImgTexFormat imgTexFormat = this.f46359g;
        GLES20.glUniform2f(i4, 2.0f / imgTexFormat.width, 2.0f / imgTexFormat.height);
        setGrindRatio(this.mGrindRatio);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setGrindRatio(float f10) {
        super.setGrindRatio(f10);
        synchronized (this.f46356d) {
            try {
                if (f10 < 0.2f) {
                    this.f46357e = new float[]{1.0f, 1.0f, 0.15f, 0.15f};
                } else if (f10 < 0.4f) {
                    this.f46357e = new float[]{0.8f, 0.9f, 0.2f, 0.2f};
                } else if (f10 < 0.6f) {
                    this.f46357e = new float[]{0.6f, 0.8f, 0.25f, 0.25f};
                } else if (f10 < 0.8f) {
                    this.f46357e = new float[]{0.4f, 0.7f, 0.38f, 0.3f};
                } else {
                    this.f46357e = new float[]{0.33f, 0.63f, 0.4f, 0.35f};
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setScaleLumance(float f10) {
        this.f46358f = f10;
    }
}
