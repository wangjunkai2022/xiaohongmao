package com.google.android.exoplayer2.util;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(17)
/* loaded from: classes2.dex */
public final class EGLSurfaceTexture implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: h  reason: collision with root package name */
    public static final int f27414h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f27415i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f27416j = 2;

    /* renamed from: k  reason: collision with root package name */
    private static final int f27417k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final int f27418l = 1;

    /* renamed from: m  reason: collision with root package name */
    private static final int[] f27419m = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: n  reason: collision with root package name */
    private static final int f27420n = 12992;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f27421a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f27422b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final c f27423c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private EGLDisplay f27424d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private EGLContext f27425e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private EGLSurface f27426f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private SurfaceTexture f27427g;

    /* loaded from: classes2.dex */
    public static final class GlException extends RuntimeException {
        private GlException(String str) {
            super(str);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a();
    }

    public EGLSurfaceTexture(Handler handler) {
        this(handler, null);
    }

    private static EGLConfig a(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f27419m, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            throw new GlException(z0.I("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        }
        return eGLConfigArr[0];
    }

    private static EGLContext b(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i4) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i4 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, f27420n, 1, 12344}, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new GlException("eglCreateContext failed");
    }

    private static EGLSurface c(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i4) {
        EGLSurface eglCreatePbufferSurface;
        if (i4 == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i4 == 2 ? new int[]{12375, 1, 12374, 1, f27420n, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eglCreatePbufferSurface == null) {
                throw new GlException("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eGLContext)) {
            return eglCreatePbufferSurface;
        }
        throw new GlException("eglMakeCurrent failed");
    }

    private void d() {
        c cVar = this.f27423c;
        if (cVar != null) {
            cVar.a();
        }
    }

    private static void e(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        p.c();
    }

    private static EGLDisplay f() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr = new int[2];
            if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                return eglGetDisplay;
            }
            throw new GlException("eglInitialize failed");
        }
        throw new GlException("eglGetDisplay failed");
    }

    public SurfaceTexture g() {
        return (SurfaceTexture) com.google.android.exoplayer2.util.a.g(this.f27427g);
    }

    public void h(int i4) {
        EGLDisplay f10 = f();
        this.f27424d = f10;
        EGLConfig a10 = a(f10);
        EGLContext b10 = b(this.f27424d, a10, i4);
        this.f27425e = b10;
        this.f27426f = c(this.f27424d, a10, b10, i4);
        e(this.f27422b);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f27422b[0]);
        this.f27427g = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.opengl.EGLContext, android.graphics.SurfaceTexture, android.opengl.EGLSurface, android.opengl.EGLDisplay] */
    public void i() {
        this.f27421a.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f27427g;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f27422b, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f27424d;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f27424d;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f27426f;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f27424d, this.f27426f);
            }
            EGLContext eGLContext = this.f27425e;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f27424d, eGLContext);
            }
            if (z0.f27743a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f27424d;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f27424d);
            }
            this.f27424d = null;
            this.f27425e = null;
            this.f27426f = null;
            this.f27427g = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f27421a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        d();
        SurfaceTexture surfaceTexture = this.f27427g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public EGLSurfaceTexture(Handler handler, @Nullable c cVar) {
        this.f27421a = handler;
        this.f27423c = cVar;
        this.f27422b = new int[1];
    }
}
