package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class ImgBeautySoftExtFilter extends ImgTexFilter {

    /* renamed from: a  reason: collision with root package name */
    private ImgTexFormat f46390a;

    public ImgBeautySoftExtFilter(GLRender gLRender) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", 7);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
        this.f46390a = imgTexFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        int uniformLocation = getUniformLocation("singleStepOffset");
        ImgTexFormat imgTexFormat = this.f46390a;
        GLES20.glUniform2fv(uniformLocation, 1, FloatBuffer.wrap(new float[]{2.0f / imgTexFormat.width, 2.0f / imgTexFormat.height}));
        GlUtil.checkGlError("glUniform2fv");
    }
}
