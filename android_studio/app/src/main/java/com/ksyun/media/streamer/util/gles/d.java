package com.ksyun.media.streamer.util.gles;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.util.Log;
import android.view.Surface;

/* compiled from: EglCore.java */
@TargetApi(18)
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f46860a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f46861b = 2;

    /* renamed from: c  reason: collision with root package name */
    private static final String f46862c = "EglCore";

    /* renamed from: d  reason: collision with root package name */
    private static final int f46863d = 12610;

    /* renamed from: e  reason: collision with root package name */
    private EGLDisplay f46864e;

    /* renamed from: f  reason: collision with root package name */
    private EGLContext f46865f;

    /* renamed from: g  reason: collision with root package name */
    private EGLConfig f46866g;

    /* renamed from: h  reason: collision with root package name */
    private int f46867h;

    public d() {
        this(null, 0);
    }

    private EGLConfig b(int i4, int i10) {
        int[] iArr = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, i10 >= 3 ? 68 : 4, 12344, 0, 12344};
        if ((i4 & 1) != 0) {
            iArr[10] = f46863d;
            iArr[11] = 1;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(this.f46864e, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        Log.w(f46862c, "unable to find RGB8888 / " + i10 + " EGLConfig");
        return null;
    }

    public void a() {
        EGLDisplay eGLDisplay = this.f46864e;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroyContext(this.f46864e, this.f46865f);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.f46864e);
        }
        this.f46864e = EGL14.EGL_NO_DISPLAY;
        this.f46865f = EGL14.EGL_NO_CONTEXT;
        this.f46866g = null;
    }

    public boolean c(EGLSurface eGLSurface) {
        return EGL14.eglSwapBuffers(this.f46864e, eGLSurface);
    }

    public boolean d(EGLSurface eGLSurface) {
        return this.f46865f.equals(EGL14.eglGetCurrentContext()) && eGLSurface.equals(EGL14.eglGetCurrentSurface(12377));
    }

    protected void finalize() {
        try {
            if (this.f46864e != EGL14.EGL_NO_DISPLAY) {
                Log.w(f46862c, "WARNING: EglCore was not explicitly released -- state may be leaked");
                a();
            }
        } finally {
            super.finalize();
        }
    }

    public d(EGLContext eGLContext, int i4) {
        EGLConfig b10;
        EGLDisplay eGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.f46864e = eGLDisplay;
        this.f46865f = EGL14.EGL_NO_CONTEXT;
        this.f46866g = null;
        this.f46867h = -1;
        if (eGLDisplay == EGL14.EGL_NO_DISPLAY) {
            eGLContext = eGLContext == null ? EGL14.EGL_NO_CONTEXT : eGLContext;
            EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
            this.f46864e = eglGetDisplay;
            if (eglGetDisplay != EGL14.EGL_NO_DISPLAY) {
                int[] iArr = new int[2];
                if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                    if ((i4 & 2) != 0 && (b10 = b(i4, 3)) != null) {
                        EGLContext eglCreateContext = EGL14.eglCreateContext(this.f46864e, b10, eGLContext, new int[]{12440, 3, 12344}, 0);
                        if (EGL14.eglGetError() == 12288) {
                            this.f46866g = b10;
                            this.f46865f = eglCreateContext;
                            this.f46867h = 3;
                        }
                    }
                    if (this.f46865f == EGL14.EGL_NO_CONTEXT) {
                        EGLConfig b11 = b(i4, 2);
                        if (b11 != null) {
                            EGLContext eglCreateContext2 = EGL14.eglCreateContext(this.f46864e, b11, eGLContext, new int[]{12440, 2, 12344}, 0);
                            b("eglCreateContext");
                            this.f46866g = b11;
                            this.f46865f = eglCreateContext2;
                            this.f46867h = 2;
                        } else {
                            throw new RuntimeException("Unable to find a suitable EGLConfig");
                        }
                    }
                    int[] iArr2 = new int[1];
                    EGL14.eglQueryContext(this.f46864e, this.f46865f, 12440, iArr2, 0);
                    Log.d(f46862c, "EGLContext created, client version " + iArr2[0]);
                    return;
                }
                this.f46864e = null;
                throw new RuntimeException("unable to initialize EGL14");
            }
            throw new RuntimeException("unable to get EGL14 display");
        }
        throw new RuntimeException("EGL already set up");
    }

    public int c() {
        return this.f46867h;
    }

    public void b(EGLSurface eGLSurface) {
        if (this.f46864e == EGL14.EGL_NO_DISPLAY) {
            Log.d(f46862c, "NOTE: makeCurrent w/o display");
        }
        if (!EGL14.eglMakeCurrent(this.f46864e, eGLSurface, eGLSurface, this.f46865f)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void b() {
        EGLDisplay eGLDisplay = this.f46864e;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    private void b(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
    }

    public void a(EGLSurface eGLSurface) {
        EGL14.eglDestroySurface(this.f46864e, eGLSurface);
    }

    public EGLSurface a(Object obj) {
        if (!(obj instanceof Surface) && !(obj instanceof SurfaceTexture)) {
            throw new RuntimeException("invalid surface: " + obj);
        }
        EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.f46864e, this.f46866g, obj, new int[]{12344}, 0);
        b("eglCreateWindowSurface");
        if (eglCreateWindowSurface != null) {
            return eglCreateWindowSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public EGLSurface a(int i4, int i10) {
        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.f46864e, this.f46866g, new int[]{12375, i4, 12374, i10, 12344}, 0);
        b("eglCreatePbufferSurface");
        if (eglCreatePbufferSurface != null) {
            return eglCreatePbufferSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public void a(EGLSurface eGLSurface, EGLSurface eGLSurface2) {
        if (this.f46864e == EGL14.EGL_NO_DISPLAY) {
            Log.d(f46862c, "NOTE: makeCurrent w/o display");
        }
        if (!EGL14.eglMakeCurrent(this.f46864e, eGLSurface, eGLSurface2, this.f46865f)) {
            throw new RuntimeException("eglMakeCurrent(draw,read) failed");
        }
    }

    public void a(EGLSurface eGLSurface, long j4) {
        EGLExt.eglPresentationTimeANDROID(this.f46864e, eGLSurface, j4);
    }

    public int a(EGLSurface eGLSurface, int i4) {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.f46864e, eGLSurface, i4, iArr, 0);
        return iArr[0];
    }

    public static void a(String str) {
        EGLDisplay eglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
        EGLContext eglGetCurrentContext = EGL14.eglGetCurrentContext();
        EGLSurface eglGetCurrentSurface = EGL14.eglGetCurrentSurface(12377);
        Log.i(f46862c, "Current EGL (" + str + "): display=" + eglGetCurrentDisplay + ", context=" + eglGetCurrentContext + ", surface=" + eglGetCurrentSurface);
    }
}
