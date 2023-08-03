package com.rudresh.videocompression.videocompression;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* compiled from: TextureRenderer.java */
/* loaded from: classes3.dex */
public class i {
    private static final String D = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private static final String E = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    private static final String F = "precision highp float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    private boolean A;
    private boolean B;

    /* renamed from: b  reason: collision with root package name */
    private FloatBuffer f55288b;

    /* renamed from: c  reason: collision with root package name */
    private FloatBuffer f55289c;

    /* renamed from: d  reason: collision with root package name */
    private FloatBuffer f55290d;

    /* renamed from: e  reason: collision with root package name */
    private FloatBuffer f55291e;

    /* renamed from: f  reason: collision with root package name */
    private int f55292f;

    /* renamed from: g  reason: collision with root package name */
    private int f55293g;

    /* renamed from: h  reason: collision with root package name */
    private int f55294h;

    /* renamed from: i  reason: collision with root package name */
    private int f55295i;

    /* renamed from: m  reason: collision with root package name */
    private int f55299m;

    /* renamed from: n  reason: collision with root package name */
    private int[] f55300n;

    /* renamed from: o  reason: collision with root package name */
    private int[] f55301o;

    /* renamed from: p  reason: collision with root package name */
    private int[] f55302p;

    /* renamed from: q  reason: collision with root package name */
    private int[] f55303q;

    /* renamed from: r  reason: collision with root package name */
    private int[] f55304r;

    /* renamed from: s  reason: collision with root package name */
    private int f55305s;

    /* renamed from: t  reason: collision with root package name */
    private int f55306t;

    /* renamed from: u  reason: collision with root package name */
    private int f55307u;

    /* renamed from: v  reason: collision with root package name */
    private int f55308v;

    /* renamed from: w  reason: collision with root package name */
    private int[] f55309w;

    /* renamed from: x  reason: collision with root package name */
    private int[] f55310x;

    /* renamed from: y  reason: collision with root package name */
    private float f55311y;

    /* renamed from: z  reason: collision with root package name */
    private int f55312z;

    /* renamed from: a  reason: collision with root package name */
    float[] f55287a = {-1.0f, 1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f};

    /* renamed from: j  reason: collision with root package name */
    private float[] f55296j = new float[16];

    /* renamed from: k  reason: collision with root package name */
    private float[] f55297k = new float[16];

    /* renamed from: l  reason: collision with root package name */
    private float[] f55298l = new float[16];
    private boolean C = true;

    public i(int i4, int i10, int i11, int i12, int i13, float f10, boolean z9) {
        this.B = z9;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f55289c = asFloatBuffer;
        asFloatBuffer.put(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f}).position(0);
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(this.f55287a.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f55291e = asFloatBuffer2;
        asFloatBuffer2.put(this.f55287a).position(0);
        Matrix.setIdentityM(this.f55297k, 0);
        Matrix.setIdentityM(this.f55298l, 0);
        this.f55294h = i4;
        this.f55295i = i10;
        this.f55292f = i11;
        this.f55293g = i12;
        this.f55311y = f10 == 0.0f ? 30.0f : f10;
        this.f55300n = new int[1];
        this.f55301o = new int[1];
        this.f55302p = new int[1];
        this.f55303q = new int[1];
        this.f55304r = new int[1];
        Matrix.setIdentityM(this.f55296j, 0);
        FloatBuffer asFloatBuffer3 = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f55288b = asFloatBuffer3;
        asFloatBuffer3.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f}).position(0);
        float[] fArr = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
        FloatBuffer asFloatBuffer4 = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f55290d = asFloatBuffer4;
        asFloatBuffer4.put(fArr).position(0);
    }

    private int b(String str, String str2) {
        int q9;
        int glCreateProgram;
        int q10 = b.q(35633, str);
        if (q10 == 0 || (q9 = b.q(35632, str2)) == 0 || (glCreateProgram = GLES20.glCreateProgram()) == 0) {
            return 0;
        }
        GLES20.glAttachShader(glCreateProgram, q10);
        GLES20.glAttachShader(glCreateProgram, q9);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            GLES20.glDeleteProgram(glCreateProgram);
            return 0;
        }
        return glCreateProgram;
    }

    private void d(boolean z9, int i4) {
        e(z9, i4, -10000.0f, -10000.0f, -10000.0f, -10000.0f, 0.0f, false);
    }

    private void e(boolean z9, int i4, float f10, float f11, float f12, float f13, float f14, boolean z10) {
        if (!this.A) {
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, 771);
            this.A = true;
        }
        if (f10 <= -10000.0f) {
            float[] fArr = this.f55287a;
            fArr[0] = -1.0f;
            fArr[1] = 1.0f;
            fArr[2] = 1.0f;
            fArr[3] = 1.0f;
            fArr[4] = -1.0f;
            fArr[5] = -1.0f;
            fArr[6] = 1.0f;
            fArr[7] = -1.0f;
        } else {
            float f15 = (f10 * 2.0f) - 1.0f;
            float f16 = ((1.0f - f11) * 2.0f) - 1.0f;
            float[] fArr2 = this.f55287a;
            fArr2[0] = f15;
            fArr2[1] = f16;
            float f17 = (f12 * 2.0f) + f15;
            fArr2[2] = f17;
            fArr2[3] = f16;
            fArr2[4] = f15;
            float f18 = f16 - (f13 * 2.0f);
            fArr2[5] = f18;
            fArr2[6] = f17;
            fArr2[7] = f18;
        }
        float[] fArr3 = this.f55287a;
        float f19 = (fArr3[0] + fArr3[2]) / 2.0f;
        if (z10) {
            float f20 = fArr3[2];
            fArr3[2] = fArr3[0];
            fArr3[0] = f20;
            float f21 = fArr3[6];
            fArr3[6] = fArr3[4];
            fArr3[4] = f21;
        }
        if (f14 != 0.0f) {
            float f22 = this.f55294h / this.f55295i;
            float f23 = (fArr3[5] + fArr3[1]) / 2.0f;
            int i10 = 0;
            for (int i11 = 4; i10 < i11; i11 = 4) {
                float[] fArr4 = this.f55287a;
                int i12 = i10 * 2;
                int i13 = i12 + 1;
                double d4 = fArr4[i12] - f19;
                double d10 = f14;
                double d11 = (fArr4[i13] - f23) / f22;
                fArr4[i12] = ((float) ((Math.cos(d10) * d4) - (Math.sin(d10) * d11))) + f19;
                this.f55287a[i13] = (((float) ((d4 * Math.sin(d10)) + (d11 * Math.cos(d10)))) * f22) + f23;
                i10++;
            }
        }
        this.f55291e.put(this.f55287a).position(0);
        GLES20.glVertexAttribPointer(this.f55306t, 2, 5126, false, 8, (Buffer) this.f55291e);
        if (z9) {
            GLES20.glBindTexture(3553, i4);
        }
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void a(String str, String str2) {
        GLES20.glDeleteProgram(this.f55300n[0]);
        this.f55300n[0] = b(D, str);
        int[] iArr = this.f55300n;
        if (iArr.length > 1) {
            iArr[1] = b(D, str2);
        }
    }

    public void c(SurfaceTexture surfaceTexture) {
        int i4 = 0;
        if (this.B) {
            GLES20.glUseProgram(this.f55305s);
            GLES20.glActiveTexture(33984);
            GLES20.glUniform1i(this.f55308v, 0);
            GLES20.glEnableVertexAttribArray(this.f55307u);
            GLES20.glVertexAttribPointer(this.f55307u, 2, 5126, false, 8, (Buffer) this.f55289c);
            GLES20.glEnableVertexAttribArray(this.f55306t);
        } else {
            surfaceTexture.getTransformMatrix(this.f55297k);
            if (this.A) {
                GLES20.glDisable(3042);
                this.A = false;
            }
            int i10 = this.f55299m;
            float[] fArr = this.f55297k;
            GLES20.glUseProgram(this.f55300n[0]);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i10);
            GLES20.glVertexAttribPointer(this.f55303q[0], 2, 5126, false, 8, (Buffer) this.f55288b);
            GLES20.glEnableVertexAttribArray(this.f55303q[0]);
            GLES20.glVertexAttribPointer(this.f55304r[0], 2, 5126, false, 8, (Buffer) this.f55290d);
            GLES20.glEnableVertexAttribArray(this.f55304r[0]);
            GLES20.glUniformMatrix4fv(this.f55302p[0], 1, false, fArr, 0);
            GLES20.glUniformMatrix4fv(this.f55301o[0], 1, false, this.f55296j, 0);
            GLES20.glDrawArrays(5, 0, 4);
        }
        if (this.f55309w != null || this.f55310x != null) {
            GLES20.glUseProgram(this.f55305s);
            GLES20.glActiveTexture(33984);
            GLES20.glUniform1i(this.f55308v, 0);
            GLES20.glEnableVertexAttribArray(this.f55307u);
            GLES20.glVertexAttribPointer(this.f55307u, 2, 5126, false, 8, (Buffer) this.f55289c);
            GLES20.glEnableVertexAttribArray(this.f55306t);
        }
        if (this.f55309w != null) {
            while (true) {
                int[] iArr = this.f55309w;
                if (i4 >= iArr.length) {
                    break;
                }
                d(true, iArr[i4]);
                i4++;
            }
        }
        GLES20.glFinish();
    }

    public int f() {
        return this.f55299m;
    }

    public void g() {
    }

    public void h() {
        int i4 = 0;
        while (true) {
            int[] iArr = this.f55300n;
            if (i4 < iArr.length) {
                iArr[i4] = b(D, i4 == 0 ? E : F);
                this.f55303q[i4] = GLES20.glGetAttribLocation(this.f55300n[i4], "aPosition");
                this.f55304r[i4] = GLES20.glGetAttribLocation(this.f55300n[i4], "aTextureCoord");
                this.f55301o[i4] = GLES20.glGetUniformLocation(this.f55300n[i4], "uMVPMatrix");
                this.f55302p[i4] = GLES20.glGetUniformLocation(this.f55300n[i4], "uSTMatrix");
                i4++;
            } else {
                int[] iArr2 = new int[1];
                GLES20.glGenTextures(1, iArr2, 0);
                int i10 = iArr2[0];
                this.f55299m = i10;
                GLES20.glBindTexture(36197, i10);
                GLES20.glTexParameteri(36197, 10241, 9729);
                GLES20.glTexParameteri(36197, 10240, 9729);
                GLES20.glTexParameteri(36197, 10242, 33071);
                GLES20.glTexParameteri(36197, 10243, 33071);
                return;
            }
        }
    }
}
