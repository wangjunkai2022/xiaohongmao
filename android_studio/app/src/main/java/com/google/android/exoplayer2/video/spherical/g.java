package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p;
import com.google.android.exoplayer2.video.spherical.e;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* compiled from: ProjectionRenderer.java */
/* loaded from: classes2.dex */
final class g {

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f28065j = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", com.alipay.sdk.util.i.f6967d};

    /* renamed from: k  reason: collision with root package name */
    private static final String[] f28066k = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", com.alipay.sdk.util.i.f6967d};

    /* renamed from: l  reason: collision with root package name */
    private static final float[] f28067l = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: m  reason: collision with root package name */
    private static final float[] f28068m = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: n  reason: collision with root package name */
    private static final float[] f28069n = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: o  reason: collision with root package name */
    private static final float[] f28070o = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: p  reason: collision with root package name */
    private static final float[] f28071p = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    private int f28072a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f28073b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f28074c;

    /* renamed from: d  reason: collision with root package name */
    private int f28075d;

    /* renamed from: e  reason: collision with root package name */
    private int f28076e;

    /* renamed from: f  reason: collision with root package name */
    private int f28077f;

    /* renamed from: g  reason: collision with root package name */
    private int f28078g;

    /* renamed from: h  reason: collision with root package name */
    private int f28079h;

    /* renamed from: i  reason: collision with root package name */
    private int f28080i;

    /* compiled from: ProjectionRenderer.java */
    /* loaded from: classes2.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f28081a;

        /* renamed from: b  reason: collision with root package name */
        private final FloatBuffer f28082b;

        /* renamed from: c  reason: collision with root package name */
        private final FloatBuffer f28083c;

        /* renamed from: d  reason: collision with root package name */
        private final int f28084d;

        public a(e.c cVar) {
            this.f28081a = cVar.a();
            this.f28082b = p.g(cVar.f28054c);
            this.f28083c = p.g(cVar.f28055d);
            int i4 = cVar.f28053b;
            if (i4 == 1) {
                this.f28084d = 5;
            } else if (i4 != 2) {
                this.f28084d = 4;
            } else {
                this.f28084d = 6;
            }
        }
    }

    public static boolean c(e eVar) {
        e.b bVar = eVar.f28046a;
        e.b bVar2 = eVar.f28047b;
        return bVar.b() == 1 && bVar.a(0).f28052a == 0 && bVar2.b() == 1 && bVar2.a(0).f28052a == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i4, float[] fArr, boolean z9) {
        float[] fArr2;
        a aVar = z9 ? this.f28074c : this.f28073b;
        if (aVar == null) {
            return;
        }
        GLES20.glUseProgram(this.f28075d);
        p.c();
        GLES20.glEnableVertexAttribArray(this.f28078g);
        GLES20.glEnableVertexAttribArray(this.f28079h);
        p.c();
        int i10 = this.f28072a;
        if (i10 == 1) {
            fArr2 = z9 ? f28069n : f28068m;
        } else if (i10 == 2) {
            fArr2 = z9 ? f28071p : f28070o;
        } else {
            fArr2 = f28067l;
        }
        GLES20.glUniformMatrix3fv(this.f28077f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f28076e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i4);
        GLES20.glUniform1i(this.f28080i, 0);
        p.c();
        GLES20.glVertexAttribPointer(this.f28078g, 3, 5126, false, 12, (Buffer) aVar.f28082b);
        p.c();
        GLES20.glVertexAttribPointer(this.f28079h, 2, 5126, false, 8, (Buffer) aVar.f28083c);
        p.c();
        GLES20.glDrawArrays(aVar.f28084d, 0, aVar.f28081a);
        p.c();
        GLES20.glDisableVertexAttribArray(this.f28078g);
        GLES20.glDisableVertexAttribArray(this.f28079h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        int e4 = p.e(f28065j, f28066k);
        this.f28075d = e4;
        this.f28076e = GLES20.glGetUniformLocation(e4, "uMvpMatrix");
        this.f28077f = GLES20.glGetUniformLocation(this.f28075d, "uTexMatrix");
        this.f28078g = GLES20.glGetAttribLocation(this.f28075d, "aPosition");
        this.f28079h = GLES20.glGetAttribLocation(this.f28075d, "aTexCoords");
        this.f28080i = GLES20.glGetUniformLocation(this.f28075d, "uTexture");
    }

    public void d(e eVar) {
        if (c(eVar)) {
            this.f28072a = eVar.f28048c;
            a aVar = new a(eVar.f28046a.a(0));
            this.f28073b = aVar;
            if (!eVar.f28049d) {
                aVar = new a(eVar.f28047b.a(0));
            }
            this.f28074c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        int i4 = this.f28075d;
        if (i4 != 0) {
            GLES20.glDeleteProgram(i4);
        }
    }
}
