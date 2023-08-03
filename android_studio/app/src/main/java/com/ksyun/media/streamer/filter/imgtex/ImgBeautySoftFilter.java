package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class ImgBeautySoftFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    private int f46391a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f46392b;

    /* renamed from: c  reason: collision with root package name */
    private float[] f46393c;

    /* renamed from: d  reason: collision with root package name */
    private ImgTexFormat f46394d;

    public ImgBeautySoftFilter(GLRender gLRender) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 2);
        this.f46392b = new Object();
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public boolean isGrindRatioSupported() {
        return true;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        synchronized (this.f46392b) {
            GLES20.glUniform4fv(this.f46391a, 1, this.f46393c, 0);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        this.f46394d = imgTexFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        int uniformLocation = getUniformLocation("singleStepOffset");
        this.f46391a = getUniformLocation("params");
        setGrindRatio(this.mGrindRatio);
        ImgTexFormat imgTexFormat = this.f46394d;
        GLES20.glUniform2fv(uniformLocation, 1, FloatBuffer.wrap(new float[]{2.0f / imgTexFormat.width, 2.0f / imgTexFormat.height}));
        GlUtil.checkGlError("glUniform2fv");
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public void setGrindRatio(float f10) {
        super.setGrindRatio(f10);
        synchronized (this.f46392b) {
            try {
                if (f10 < 0.2f) {
                    this.f46393c = new float[]{1.0f, 1.0f, 0.15f, 0.15f};
                } else if (f10 < 0.4f) {
                    this.f46393c = new float[]{0.8f, 0.9f, 0.2f, 0.2f};
                } else if (f10 < 0.6f) {
                    this.f46393c = new float[]{0.6f, 0.8f, 0.25f, 0.25f};
                } else if (f10 < 0.8f) {
                    this.f46393c = new float[]{0.4f, 0.7f, 0.38f, 0.3f};
                } else {
                    this.f46393c = new float[]{0.33f, 0.63f, 0.4f, 0.35f};
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
