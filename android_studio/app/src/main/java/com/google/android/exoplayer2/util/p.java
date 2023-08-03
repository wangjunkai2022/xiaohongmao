package com.google.android.exoplayer2.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* compiled from: GlUtil.java */
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27641a = "GlUtil";

    /* renamed from: b  reason: collision with root package name */
    private static final String f27642b = "EGL_EXT_protected_content";

    /* renamed from: c  reason: collision with root package name */
    private static final String f27643c = "EGL_KHR_surfaceless_context";

    /* compiled from: GlUtil.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f27644a;

        /* renamed from: b  reason: collision with root package name */
        private final int f27645b;

        /* renamed from: c  reason: collision with root package name */
        private final int f27646c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Buffer f27647d;

        /* renamed from: e  reason: collision with root package name */
        private int f27648e;

        public a(int i4, int i10) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i4, 35722, iArr, 0);
            byte[] bArr = new byte[iArr[0]];
            int[] iArr2 = new int[1];
            int i11 = iArr[0];
            GLES20.glGetActiveAttrib(i4, i10, i11, iArr2, 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, p.m(bArr));
            this.f27644a = str;
            this.f27646c = GLES20.glGetAttribLocation(i4, str);
            this.f27645b = i10;
        }

        public void a() {
            GLES20.glBindBuffer(34962, 0);
            GLES20.glVertexAttribPointer(this.f27646c, this.f27648e, 5126, false, 0, (Buffer) com.google.android.exoplayer2.util.a.h(this.f27647d, "call setBuffer before bind"));
            GLES20.glEnableVertexAttribArray(this.f27645b);
            p.c();
        }

        public void b(float[] fArr, int i4) {
            this.f27647d = p.g(fArr);
            this.f27648e = i4;
        }
    }

    /* compiled from: GlUtil.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f27649a;

        /* renamed from: b  reason: collision with root package name */
        private final int f27650b;

        /* renamed from: c  reason: collision with root package name */
        private final int f27651c;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f27652d;

        /* renamed from: e  reason: collision with root package name */
        private int f27653e;

        /* renamed from: f  reason: collision with root package name */
        private int f27654f;

        public b(int i4, int i10) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i4, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            byte[] bArr = new byte[iArr[0]];
            int i11 = iArr[0];
            GLES20.glGetActiveUniform(i4, i10, i11, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, p.m(bArr));
            this.f27649a = str;
            this.f27650b = GLES20.glGetUniformLocation(i4, str);
            this.f27651c = iArr2[0];
            this.f27652d = new float[16];
        }

        public void a() {
            int i4 = this.f27651c;
            if (i4 == 5126) {
                GLES20.glUniform1fv(this.f27650b, 1, this.f27652d, 0);
                p.c();
            } else if (i4 == 35676) {
                GLES20.glUniformMatrix4fv(this.f27650b, 1, false, this.f27652d, 0);
                p.c();
            } else if (this.f27653e != 0) {
                GLES20.glActiveTexture(this.f27654f + 33984);
                int i10 = this.f27651c;
                if (i10 == 36198) {
                    GLES20.glBindTexture(36197, this.f27653e);
                } else if (i10 == 35678) {
                    GLES20.glBindTexture(3553, this.f27653e);
                } else {
                    int i11 = this.f27651c;
                    StringBuilder sb = new StringBuilder(36);
                    sb.append("unexpected uniform type: ");
                    sb.append(i11);
                    throw new IllegalStateException(sb.toString());
                }
                GLES20.glUniform1i(this.f27650b, this.f27654f);
                GLES20.glTexParameteri(3553, 10240, 9729);
                GLES20.glTexParameteri(3553, 10241, 9729);
                GLES20.glTexParameteri(3553, 10242, 33071);
                GLES20.glTexParameteri(3553, 10243, 33071);
                p.c();
            } else {
                throw new IllegalStateException("call setSamplerTexId before bind");
            }
        }

        public void b(float f10) {
            this.f27652d[0] = f10;
        }

        public void c(float[] fArr) {
            System.arraycopy(fArr, 0, this.f27652d, 0, fArr.length);
        }

        public void d(int i4, int i10) {
            this.f27653e = i4;
            this.f27654f = i10;
        }
    }

    private p() {
    }

    private static void b(int i4, String str, int i10) {
        int glCreateShader = GLES20.glCreateShader(i4);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            String glGetShaderInfoLog = GLES20.glGetShaderInfoLog(glCreateShader);
            StringBuilder sb = new StringBuilder(String.valueOf(glGetShaderInfoLog).length() + 10 + String.valueOf(str).length());
            sb.append(glGetShaderInfoLog);
            sb.append(", source: ");
            sb.append(str);
            n(sb.toString());
        }
        GLES20.glAttachShader(i10, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        c();
    }

    public static void c() {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                return;
            }
            String valueOf = String.valueOf(GLU.gluErrorString(glGetError));
            w.d(f27641a, valueOf.length() != 0 ? "glError ".concat(valueOf) : new String("glError "));
        }
    }

    public static int d(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        c();
        b(35633, str, glCreateProgram);
        b(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            String valueOf = String.valueOf(GLES20.glGetProgramInfoLog(glCreateProgram));
            n(valueOf.length() != 0 ? "Unable to link shader program: \n".concat(valueOf) : new String("Unable to link shader program: \n"));
        }
        c();
        return glCreateProgram;
    }

    public static int e(String[] strArr, String[] strArr2) {
        return d(TextUtils.join("\n", strArr), TextUtils.join("\n", strArr2));
    }

    public static FloatBuffer f(int i4) {
        return ByteBuffer.allocateDirect(i4 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static FloatBuffer g(float[] fArr) {
        return (FloatBuffer) f(fArr.length).put(fArr).flip();
    }

    public static int h() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        c();
        return iArr[0];
    }

    public static a[] i(int i4) {
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(i4, 35721, iArr, 0);
        if (iArr[0] == 2) {
            a[] aVarArr = new a[iArr[0]];
            for (int i10 = 0; i10 < iArr[0]; i10++) {
                aVarArr[i10] = new a(i4, i10);
            }
            return aVarArr;
        }
        throw new IllegalStateException("expected two attributes");
    }

    public static b[] j(int i4) {
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(i4, 35718, iArr, 0);
        b[] bVarArr = new b[iArr[0]];
        for (int i10 = 0; i10 < iArr[0]; i10++) {
            bVarArr[i10] = new b(i4, i10);
        }
        return bVarArr;
    }

    public static boolean k(Context context) {
        String eglQueryString;
        int i4 = z0.f27743a;
        if (i4 < 24) {
            return false;
        }
        if (i4 >= 26 || !("samsung".equals(z0.f27745c) || "XT1650".equals(z0.f27746d))) {
            return (i4 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains(f27642b);
        }
        return false;
    }

    public static boolean l() {
        String eglQueryString;
        return z0.f27743a >= 17 && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains(f27643c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int m(byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length; i4++) {
            if (bArr[i4] == 0) {
                return i4;
            }
        }
        return bArr.length;
    }

    private static void n(String str) {
        w.d(f27641a, str);
    }
}
