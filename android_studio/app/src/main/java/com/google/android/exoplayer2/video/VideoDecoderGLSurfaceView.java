package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes2.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements i {

    /* renamed from: a  reason: collision with root package name */
    private final a f27834a;

    /* loaded from: classes2.dex */
    private static final class a implements GLSurfaceView.Renderer {

        /* renamed from: n  reason: collision with root package name */
        private static final String f27838n = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n";

        /* renamed from: p  reason: collision with root package name */
        private static final String f27840p = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n";

        /* renamed from: a  reason: collision with root package name */
        private final GLSurfaceView f27842a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f27843b = new int[3];

        /* renamed from: c  reason: collision with root package name */
        private final int[] f27844c = new int[3];

        /* renamed from: d  reason: collision with root package name */
        private final int[] f27845d = new int[3];

        /* renamed from: e  reason: collision with root package name */
        private final int[] f27846e = new int[3];

        /* renamed from: f  reason: collision with root package name */
        private final AtomicReference<h> f27847f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private final FloatBuffer[] f27848g = new FloatBuffer[3];

        /* renamed from: h  reason: collision with root package name */
        private int f27849h;

        /* renamed from: i  reason: collision with root package name */
        private int f27850i;

        /* renamed from: j  reason: collision with root package name */
        private h f27851j;

        /* renamed from: k  reason: collision with root package name */
        private static final float[] f27835k = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        /* renamed from: l  reason: collision with root package name */
        private static final float[] f27836l = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        /* renamed from: m  reason: collision with root package name */
        private static final float[] f27837m = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        /* renamed from: o  reason: collision with root package name */
        private static final String[] f27839o = {"y_tex", "u_tex", "v_tex"};

        /* renamed from: q  reason: collision with root package name */
        private static final FloatBuffer f27841q = com.google.android.exoplayer2.util.p.g(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        public a(GLSurfaceView gLSurfaceView) {
            this.f27842a = gLSurfaceView;
            for (int i4 = 0; i4 < 3; i4++) {
                int[] iArr = this.f27845d;
                this.f27846e[i4] = -1;
                iArr[i4] = -1;
            }
        }

        private void b() {
            GLES20.glGenTextures(3, this.f27843b, 0);
            for (int i4 = 0; i4 < 3; i4++) {
                GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f27849h, f27839o[i4]), i4);
                GLES20.glActiveTexture(33984 + i4);
                GLES20.glBindTexture(3553, this.f27843b[i4]);
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
            }
            com.google.android.exoplayer2.util.p.c();
        }

        public void a(h hVar) {
            h andSet = this.f27847f.getAndSet(hVar);
            if (andSet != null) {
                andSet.o();
            }
            this.f27842a.requestRender();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            h andSet = this.f27847f.getAndSet(null);
            if (andSet == null && this.f27851j == null) {
                return;
            }
            if (andSet != null) {
                h hVar = this.f27851j;
                if (hVar != null) {
                    hVar.o();
                }
                this.f27851j = andSet;
            }
            h hVar2 = (h) com.google.android.exoplayer2.util.a.g(this.f27851j);
            float[] fArr = f27836l;
            int i4 = hVar2.f27944l;
            if (i4 == 1) {
                fArr = f27835k;
            } else if (i4 == 3) {
                fArr = f27837m;
            }
            GLES20.glUniformMatrix3fv(this.f27850i, 1, false, fArr, 0);
            int[] iArr = (int[]) com.google.android.exoplayer2.util.a.g(hVar2.f27943k);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) com.google.android.exoplayer2.util.a.g(hVar2.f27942j);
            int i10 = 0;
            while (i10 < 3) {
                int i11 = i10 == 0 ? hVar2.f27940h : (hVar2.f27940h + 1) / 2;
                GLES20.glActiveTexture(33984 + i10);
                GLES20.glBindTexture(3553, this.f27843b[i10]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i10], i11, 0, 6409, 5121, byteBufferArr[i10]);
                i10++;
            }
            int i12 = (r3[0] + 1) / 2;
            int[] iArr2 = {hVar2.f27939g, i12, i12};
            for (int i13 = 0; i13 < 3; i13++) {
                if (this.f27845d[i13] != iArr2[i13] || this.f27846e[i13] != iArr[i13]) {
                    com.google.android.exoplayer2.util.a.i(iArr[i13] != 0);
                    float f10 = iArr2[i13] / iArr[i13];
                    this.f27848g[i13] = com.google.android.exoplayer2.util.p.g(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f10, 0.0f, f10, 1.0f});
                    GLES20.glVertexAttribPointer(this.f27844c[i13], 2, 5126, false, 0, (Buffer) this.f27848g[i13]);
                    this.f27845d[i13] = iArr2[i13];
                    this.f27846e[i13] = iArr[i13];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            com.google.android.exoplayer2.util.p.c();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i4, int i10) {
            GLES20.glViewport(0, 0, i4, i10);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            int d4 = com.google.android.exoplayer2.util.p.d(f27838n, f27840p);
            this.f27849h = d4;
            GLES20.glUseProgram(d4);
            int glGetAttribLocation = GLES20.glGetAttribLocation(this.f27849h, "in_pos");
            GLES20.glEnableVertexAttribArray(glGetAttribLocation);
            GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 0, (Buffer) f27841q);
            this.f27844c[0] = GLES20.glGetAttribLocation(this.f27849h, "in_tc_y");
            GLES20.glEnableVertexAttribArray(this.f27844c[0]);
            this.f27844c[1] = GLES20.glGetAttribLocation(this.f27849h, "in_tc_u");
            GLES20.glEnableVertexAttribArray(this.f27844c[1]);
            this.f27844c[2] = GLES20.glGetAttribLocation(this.f27849h, "in_tc_v");
            GLES20.glEnableVertexAttribArray(this.f27844c[2]);
            com.google.android.exoplayer2.util.p.c();
            this.f27850i = GLES20.glGetUniformLocation(this.f27849h, "mColorConversion");
            com.google.android.exoplayer2.util.p.c();
            b();
            com.google.android.exoplayer2.util.p.c();
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    @Deprecated
    public i getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    @Override // com.google.android.exoplayer2.video.i
    public void setOutputBuffer(h hVar) {
        this.f27834a.a(hVar);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.f27834a = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }
}
