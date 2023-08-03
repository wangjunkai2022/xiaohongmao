package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;

/* loaded from: classes3.dex */
public class ImgBeautyDenoiseFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    private ImgTexFormat f46331a;

    public ImgBeautyDenoiseFilter(GLRender gLRender) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 1);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        this.f46331a = imgTexFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramId, "textureWidth");
        GlUtil.checkLocation(glGetUniformLocation, "textureWidth");
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.mProgramId, "textureHigh");
        GlUtil.checkLocation(glGetUniformLocation2, "textureHigh");
        GLES20.glUniform1f(glGetUniformLocation, this.f46331a.width);
        GlUtil.checkGlError("glUniform1f");
        GLES20.glUniform1f(glGetUniformLocation2, this.f46331a.height);
        GlUtil.checkGlError("glUniform1f");
    }
}
