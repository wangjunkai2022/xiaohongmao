package com.ksyun.media.streamer.util.gles;

import android.opengl.GLES20;
import android.util.Log;
import java.nio.Buffer;
import java.nio.ByteBuffer;

/* compiled from: YUVLoader.java */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static final String f46874a = "precision mediump float;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n";

    /* renamed from: b  reason: collision with root package name */
    private static final String f46875b = "YUVLoader";

    /* renamed from: c  reason: collision with root package name */
    private static final String f46876c = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTextureY;\nuniform sampler2D sTextureU;\nuniform sampler2D sTextureV;\nvoid main() {\n    mediump vec3 yuv;\n    lowp vec3 rgb;\n    yuv.x = texture2D(sTextureY, vTextureCoord).r;\n    yuv.y = texture2D(sTextureU, vTextureCoord).r - 0.5;\n    yuv.z = texture2D(sTextureV, vTextureCoord).r - 0.5;\n    rgb = mat3( 1,       1,        1,\n                0,       -0.39465, 2.03211,\n                1.13983, -0.58060, 0 ) * yuv;\n    gl_FragColor = vec4(rgb, 1);\n}";

    /* renamed from: d  reason: collision with root package name */
    private GLRender f46877d;

    /* renamed from: g  reason: collision with root package name */
    private int f46880g;

    /* renamed from: h  reason: collision with root package name */
    private int f46881h;

    /* renamed from: i  reason: collision with root package name */
    private int[] f46882i;

    /* renamed from: e  reason: collision with root package name */
    private int f46878e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f46879f = -1;

    /* renamed from: j  reason: collision with root package name */
    private int[] f46883j = new int[4];

    public g(GLRender gLRender) {
        this.f46877d = gLRender;
    }

    private int a(int i4) {
        int i10 = 1;
        while (i10 <= i4) {
            i10 *= 2;
        }
        return i10;
    }

    private void b(ByteBuffer byteBuffer, int i4, int i10, int[] iArr) {
        int[] iArr2 = iArr;
        int i11 = 0;
        if (iArr2 == null || iArr2.length != 3) {
            int i12 = i4 / 2;
            iArr2 = new int[]{i4, i12, i12};
        }
        int i13 = i4 / 2;
        int[] iArr3 = {i4, i13, i13};
        int i14 = i10 / 2;
        int[] iArr4 = {i10, i14, i14};
        ByteBuffer[] byteBufferArr = new ByteBuffer[3];
        int i15 = 0;
        for (int i16 = 0; i16 < 3; i16++) {
            byteBufferArr[i16] = byteBuffer.duplicate();
            byteBufferArr[i16].position(i15);
            i15 += iArr2[i16] * iArr4[i16];
            byteBufferArr[i16].limit(i15);
        }
        if (this.f46882i != null) {
            while (i11 < 3) {
                GLES20.glActiveTexture(i11 + 33984);
                GLES20.glBindTexture(3553, this.f46882i[i11]);
                GLES20.glPixelStorei(3317, a(iArr2[i11] - iArr3[i11]));
                GLES20.glTexSubImage2D(3553, 0, 0, 0, iArr3[i11], iArr4[i11], 6409, 5121, byteBufferArr[i11]);
                i11++;
            }
            return;
        }
        int[] iArr5 = new int[3];
        this.f46882i = iArr5;
        GLES20.glGenTextures(3, iArr5, 0);
        while (i11 < 3) {
            GLES20.glActiveTexture(i11 + 33984);
            GLES20.glBindTexture(3553, this.f46882i[i11]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glPixelStorei(3317, a(iArr2[i11] - iArr3[i11]));
            GLES20.glTexImage2D(3553, 0, 6409, iArr3[i11], iArr4[i11], 0, 6409, 5121, byteBufferArr[i11]);
            i11++;
        }
    }

    public void a() {
        int[] iArr = this.f46882i;
        if (iArr != null) {
            GLES20.glDeleteTextures(3, iArr, 0);
            this.f46882i = null;
        }
        if (this.f46879f != -1) {
            this.f46877d.getFboManager().unlock(this.f46879f);
            this.f46879f = -1;
        }
        int i4 = this.f46878e;
        if (i4 != 0) {
            GLES20.glDeleteProgram(i4);
            GLES20.glGetError();
            this.f46878e = 0;
        }
    }

    public int a(ByteBuffer byteBuffer, int i4, int i10, int[] iArr) {
        if (byteBuffer == null || byteBuffer.limit() == 0 || i4 <= 0 || i10 <= 0) {
            return -1;
        }
        if (i4 != this.f46880g || i10 != this.f46881h) {
            a();
        }
        this.f46880g = i4;
        this.f46881h = i10;
        if (this.f46879f == -1) {
            this.f46879f = this.f46877d.getFboManager().getTextureAndLock(i4, i10);
        }
        int framebuffer = this.f46877d.getFboManager().getFramebuffer(this.f46879f);
        GLES20.glGetIntegerv(2978, this.f46883j, 0);
        GLES20.glBindFramebuffer(36160, framebuffer);
        GLES20.glViewport(0, 0, i4, i10);
        if (this.f46878e == 0) {
            int createProgram = GlUtil.createProgram(f46874a, f46876c);
            this.f46878e = createProgram;
            if (createProgram == 0) {
                Log.e(f46875b, "Created program " + this.f46878e + " failed");
                return -1;
            }
        }
        b(byteBuffer, i4, i10, iArr);
        GlUtil.checkGlError("upload textures");
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f46878e, "aPosition");
        GlUtil.checkLocation(glGetAttribLocation, "aPosition");
        int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.f46878e, "aTextureCoord");
        GlUtil.checkLocation(glGetAttribLocation2, "aTextureCoord");
        GlUtil.checkGlError("draw start");
        GLES20.glUseProgram(this.f46878e);
        GlUtil.checkGlError("glUseProgram");
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f46878e, "sTextureY"), 0);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f46878e, "sTextureU"), 1);
        GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f46878e, "sTextureV"), 2);
        GlUtil.checkGlError("glUniform1i for textures");
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
        GLES20.glUseProgram(0);
        GLES20.glBindFramebuffer(36160, 0);
        int[] iArr2 = this.f46883j;
        GLES20.glViewport(iArr2[0], iArr2[1], iArr2[2], iArr2[3]);
        return this.f46879f;
    }
}
