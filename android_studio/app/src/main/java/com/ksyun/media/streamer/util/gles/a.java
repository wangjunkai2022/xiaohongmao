package com.ksyun.media.streamer.util.gles;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: Egl10Core.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f46843a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f46844b = 2;

    /* renamed from: c  reason: collision with root package name */
    private static final String f46845c = "Egl10Core";

    /* renamed from: d  reason: collision with root package name */
    private static final int f46846d = 12440;

    /* renamed from: e  reason: collision with root package name */
    private static final int f46847e = 4;

    /* renamed from: f  reason: collision with root package name */
    private static final int f46848f = 64;

    /* renamed from: g  reason: collision with root package name */
    private static final int f46849g = 12610;

    /* renamed from: h  reason: collision with root package name */
    private EGLDisplay f46850h;

    /* renamed from: i  reason: collision with root package name */
    private EGLContext f46851i;

    /* renamed from: j  reason: collision with root package name */
    private EGLConfig f46852j;

    /* renamed from: k  reason: collision with root package name */
    private int f46853k;

    public a() {
        this(null, 0);
    }

    private EGLConfig b(int i4, int i10) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, i10 >= 3 ? 68 : 4, 12344, 0, 12344};
        if ((i4 & 1) != 0) {
            iArr[10] = f46849g;
            iArr[11] = 1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (d().eglChooseConfig(this.f46850h, iArr, eGLConfigArr, 1, new int[1])) {
            return eGLConfigArr[0];
        }
        Log.w(f46845c, "unable to find RGB8888 / " + i10 + " EGLConfig");
        return null;
    }

    public void a() {
        if (this.f46850h != EGL10.EGL_NO_DISPLAY) {
            EGL10 d4 = d();
            EGLDisplay eGLDisplay = this.f46850h;
            EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
            d4.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            d().eglDestroyContext(this.f46850h, this.f46851i);
            d().eglTerminate(this.f46850h);
        }
        this.f46850h = EGL10.EGL_NO_DISPLAY;
        this.f46851i = EGL10.EGL_NO_CONTEXT;
        this.f46852j = null;
    }

    public boolean c(EGLSurface eGLSurface) {
        return d().eglSwapBuffers(this.f46850h, eGLSurface);
    }

    public boolean d(EGLSurface eGLSurface) {
        return this.f46851i.equals(d().eglGetCurrentContext()) && eGLSurface.equals(d().eglGetCurrentSurface(12377));
    }

    protected void finalize() {
        try {
            if (this.f46850h != EGL10.EGL_NO_DISPLAY) {
                Log.w(f46845c, "WARNING: EglCore was not explicitly released -- state may be leaked");
                a();
            }
        } finally {
            super.finalize();
        }
    }

    public a(EGLContext eGLContext, int i4) {
        EGLConfig b10;
        this.f46850h = EGL10.EGL_NO_DISPLAY;
        EGLContext eGLContext2 = EGL10.EGL_NO_CONTEXT;
        this.f46851i = eGLContext2;
        this.f46852j = null;
        this.f46853k = -1;
        eGLContext = eGLContext == null ? eGLContext2 : eGLContext;
        EGLDisplay eglGetDisplay = d().eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f46850h = eglGetDisplay;
        if (eglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        if (d().eglInitialize(this.f46850h, new int[2])) {
            if ((i4 & 2) != 0 && (b10 = b(i4, 3)) != null) {
                EGLContext eglCreateContext = d().eglCreateContext(this.f46850h, b10, eGLContext, new int[]{f46846d, 3, 12344});
                if (d().eglGetError() == 12288) {
                    this.f46852j = b10;
                    this.f46851i = eglCreateContext;
                    this.f46853k = 3;
                }
            }
            if (this.f46851i == EGL10.EGL_NO_CONTEXT) {
                EGLConfig b11 = b(i4, 2);
                if (b11 != null) {
                    EGLContext eglCreateContext2 = d().eglCreateContext(this.f46850h, b11, eGLContext, new int[]{f46846d, 2, 12344});
                    b("eglCreateContext");
                    this.f46852j = b11;
                    this.f46851i = eglCreateContext2;
                    this.f46853k = 2;
                } else {
                    throw new RuntimeException("Unable to find a suitable EGLConfig");
                }
            }
            int[] iArr = new int[1];
            d().eglQueryContext(this.f46850h, this.f46851i, f46846d, iArr);
            Log.d(f46845c, "EGLContext created, client version " + iArr[0]);
            return;
        }
        this.f46850h = null;
        throw new RuntimeException("unable to initialize EGL14");
    }

    public int c() {
        return this.f46853k;
    }

    private static EGL10 d() {
        return (EGL10) EGLContext.getEGL();
    }

    public void b(EGLSurface eGLSurface) {
        if (this.f46850h == EGL10.EGL_NO_DISPLAY) {
            Log.d(f46845c, "NOTE: makeCurrent w/o display");
        }
        if (!d().eglMakeCurrent(this.f46850h, eGLSurface, eGLSurface, this.f46851i)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void b() {
        EGL10 d4 = d();
        EGLDisplay eGLDisplay = this.f46850h;
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        if (!d4.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void a(EGLSurface eGLSurface) {
        d().eglDestroySurface(this.f46850h, eGLSurface);
    }

    private void b(String str) {
        int eglGetError = d().eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
    }

    public EGLSurface a(Object obj) {
        if (!(obj instanceof Surface) && !(obj instanceof SurfaceTexture)) {
            throw new RuntimeException("invalid surface: " + obj);
        }
        EGLSurface eglCreateWindowSurface = d().eglCreateWindowSurface(this.f46850h, this.f46852j, obj, new int[]{12344});
        b("eglCreateWindowSurface");
        if (eglCreateWindowSurface != null) {
            return eglCreateWindowSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public EGLSurface a(int i4, int i10) {
        EGLSurface eglCreatePbufferSurface = d().eglCreatePbufferSurface(this.f46850h, this.f46852j, new int[]{12375, i4, 12374, i10, 12344});
        b("eglCreatePbufferSurface");
        if (eglCreatePbufferSurface != null) {
            return eglCreatePbufferSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public void a(EGLSurface eGLSurface, EGLSurface eGLSurface2) {
        if (this.f46850h == EGL10.EGL_NO_DISPLAY) {
            Log.d(f46845c, "NOTE: makeCurrent w/o display");
        }
        if (!d().eglMakeCurrent(this.f46850h, eGLSurface, eGLSurface2, this.f46851i)) {
            throw new RuntimeException("eglMakeCurrent(draw,read) failed");
        }
    }

    public int a(EGLSurface eGLSurface, int i4) {
        int[] iArr = new int[1];
        d().eglQuerySurface(this.f46850h, eGLSurface, i4, iArr);
        return iArr[0];
    }

    public static void a(String str) {
        EGLDisplay eglGetCurrentDisplay = d().eglGetCurrentDisplay();
        EGLContext eglGetCurrentContext = d().eglGetCurrentContext();
        EGLSurface eglGetCurrentSurface = d().eglGetCurrentSurface(12377);
        Log.i(f46845c, "Current EGL (" + str + "): display=" + eglGetCurrentDisplay + ", context=" + eglGetCurrentContext + ", surface=" + eglGetCurrentSurface);
    }
}
