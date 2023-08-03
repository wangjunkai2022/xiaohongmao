package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import android.util.Log;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.util.CredtpWrapper;
import com.ksyun.media.streamer.util.gles.GLProgramLoadException;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class ImgTexFilter extends ImgTexFilterBase {
    public static final String BASE_FRAGMENT_SHADER_BODY = "precision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    public static final String BASE_VERTEX_SHADER = "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";

    /* renamed from: a  reason: collision with root package name */
    private static final String f46473a = "ImgTexFilter";

    /* renamed from: b  reason: collision with root package name */
    private ImgTexFormat f46474b;
    protected String mFragmentShader;
    protected String mFragmentShaderBody;
    protected boolean mMirror;
    protected int mProgramId;
    protected int mTextureTarget;
    protected String mVertexShader;
    protected int maPositionLoc;
    protected int maTextureCoordLoc;
    protected int muTexMatrixLoc;

    public ImgTexFilter(GLRender gLRender) {
        super(gLRender);
        this.mTextureTarget = 3553;
        init("uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", "precision mediump float;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SinkPin<ImgTexFrame> getSinkPin() {
        return getSinkPin(0);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public ImgTexFormat getSrcPinFormat() {
        return this.f46474b;
    }

    protected FloatBuffer getTexCoords() {
        return TexTransformUtil.getTexCoordsBuf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getUniformLocation(String str) {
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramId, str);
        GlUtil.checkLocation(glGetUniformLocation, str);
        return glGetUniformLocation;
    }

    protected FloatBuffer getVertexCoords() {
        if (this.mMirror) {
            return TexTransformUtil.getVertexMirrorCoordsBuf();
        }
        return TexTransformUtil.getVertexCoordsBuf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void init(String str, String str2) {
        this.mVertexShader = str;
        this.mFragmentShaderBody = str2;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onDraw(ImgTexFrame[] imgTexFrameArr) {
        int i4 = this.mMainSinkPinIndex;
        int i10 = imgTexFrameArr[i4].textureId;
        float[] fArr = imgTexFrameArr[i4].texMatrix;
        if (i10 == -1) {
            return;
        }
        GlUtil.checkGlError("draw start");
        if (!this.mInited) {
            int createProgram = GlUtil.createProgram(this.mVertexShader, this.mFragmentShader);
            this.mProgramId = createProgram;
            if (createProgram != 0) {
                int glGetAttribLocation = GLES20.glGetAttribLocation(createProgram, "aPosition");
                this.maPositionLoc = glGetAttribLocation;
                GlUtil.checkLocation(glGetAttribLocation, "aPosition");
                int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.mProgramId, "aTextureCoord");
                this.maTextureCoordLoc = glGetAttribLocation2;
                GlUtil.checkLocation(glGetAttribLocation2, "aTextureCoord");
                int glGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramId, "uTexMatrix");
                this.muTexMatrixLoc = glGetUniformLocation;
                GlUtil.checkLocation(glGetUniformLocation, "uTexMatrix");
                GLES20.glUseProgram(this.mProgramId);
                GlUtil.checkGlError("glUseProgram");
                onInitialized();
                GlUtil.checkGlError("onInitialized " + this);
                this.mInited = true;
            } else {
                Log.e(f46473a, "Created program " + this.mProgramId + " failed");
                throw new GLProgramLoadException("Unable to create program");
            }
        } else {
            GLES20.glUseProgram(this.mProgramId);
            GlUtil.checkGlError("glUseProgram");
        }
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(this.mTextureTarget, i10);
        GlUtil.checkGlError("glBindTexture");
        GLES20.glUniformMatrix4fv(this.muTexMatrixLoc, 1, false, fArr, 0);
        GlUtil.checkGlError("glUniformMatrix4fv");
        GLES20.glEnableVertexAttribArray(this.maPositionLoc);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.maPositionLoc, 2, 5126, false, 8, (Buffer) getVertexCoords());
        GlUtil.checkGlError("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.maTextureCoordLoc);
        GlUtil.checkGlError("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.maTextureCoordLoc, 2, 5126, false, 8, (Buffer) getTexCoords());
        GlUtil.checkGlError("glVertexAttribPointer");
        onDrawArraysPre();
        GLES20.glDrawArrays(5, 0, 4);
        GlUtil.checkGlError("glDrawArrays");
        GLES20.glDisableVertexAttribArray(this.maPositionLoc);
        GLES20.glDisableVertexAttribArray(this.maTextureCoordLoc);
        onDrawArraysAfter();
        GLES20.glBindTexture(this.mTextureTarget, 0);
        GLES20.glUseProgram(0);
    }

    protected void onDrawArraysAfter() {
    }

    protected void onDrawArraysPre() {
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onFormatChanged(int i4, ImgTexFormat imgTexFormat) {
        int i10;
        if (i4 == this.mMainSinkPinIndex) {
            if (imgTexFormat.colorFormat == 3) {
                i10 = 36197;
                this.mFragmentShader = GlUtil.FRAGMENT_SHADER_OES_HEADER + this.mFragmentShaderBody;
            } else {
                i10 = 3553;
                this.mFragmentShader = GlUtil.FRAGMENT_SHADER_HEADER + this.mFragmentShaderBody;
            }
            if (this.mInited && i10 != this.mTextureTarget) {
                int i11 = this.mProgramId;
                if (i11 != 0) {
                    GLES20.glDeleteProgram(i11);
                    this.mProgramId = 0;
                }
                this.mInited = false;
            }
            this.mTextureTarget = i10;
            this.f46474b = new ImgTexFormat(1, imgTexFormat.width, imgTexFormat.height);
            onFormatChanged(imgTexFormat);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onInitialized() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        int i4 = this.mProgramId;
        if (i4 != 0) {
            GLES20.glDeleteProgram(i4);
            this.mProgramId = 0;
        }
    }

    public void setMirror(boolean z9) {
        this.mMirror = z9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImgTexFilter(GLRender gLRender, String str, int i4) {
        super(gLRender);
        this.mTextureTarget = 3553;
        init(str, CredtpWrapper.a().a(i4));
    }

    public ImgTexFilter(GLRender gLRender, String str, String str2) {
        super(gLRender);
        this.mTextureTarget = 3553;
        init(str, str2);
    }
}
