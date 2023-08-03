package com.rudresh.videocompression.videocompression;

import android.annotation.TargetApi;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;
import java.util.Objects;

/* compiled from: InputSurface.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: e  reason: collision with root package name */
    private static final int f55243e = 12610;

    /* renamed from: f  reason: collision with root package name */
    private static final int f55244f = 4;

    /* renamed from: a  reason: collision with root package name */
    private EGLDisplay f55245a;

    /* renamed from: b  reason: collision with root package name */
    private EGLContext f55246b;

    /* renamed from: c  reason: collision with root package name */
    private EGLSurface f55247c;

    /* renamed from: d  reason: collision with root package name */
    private Surface f55248d;

    public c(Surface surface) {
        Objects.requireNonNull(surface);
        this.f55248d = surface;
        b();
    }

    private void a(String str) {
        boolean z9 = false;
        while (EGL14.eglGetError() != 12288) {
            z9 = true;
        }
        if (z9) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }

    private void b() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.f55245a = eglGetDisplay;
        if (eglGetDisplay != EGL14.EGL_NO_DISPLAY) {
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                this.f55245a = null;
                throw new RuntimeException("unable to initialize EGL14");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (EGL14.eglChooseConfig(this.f55245a, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, f55243e, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                this.f55246b = EGL14.eglCreateContext(this.f55245a, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
                a("eglCreateContext");
                if (this.f55246b != null) {
                    this.f55247c = EGL14.eglCreateWindowSurface(this.f55245a, eGLConfigArr[0], this.f55248d, new int[]{12344}, 0);
                    a("eglCreateWindowSurface");
                    if (this.f55247c == null) {
                        throw new RuntimeException("surface was null");
                    }
                    return;
                }
                throw new RuntimeException("null context");
            }
            throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
        }
        throw new RuntimeException("unable to get EGL14 display");
    }

    public Surface c() {
        return this.f55248d;
    }

    public void d() {
        EGLDisplay eGLDisplay = this.f55245a;
        EGLSurface eGLSurface = this.f55247c;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f55246b)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public void e() {
        if (EGL14.eglGetCurrentContext().equals(this.f55246b)) {
            EGLDisplay eGLDisplay = this.f55245a;
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        }
        EGL14.eglDestroySurface(this.f55245a, this.f55247c);
        EGL14.eglDestroyContext(this.f55245a, this.f55246b);
        this.f55248d.release();
        this.f55245a = null;
        this.f55246b = null;
        this.f55247c = null;
        this.f55248d = null;
    }

    @TargetApi(18)
    public void f(long j4) {
        EGLExt.eglPresentationTimeANDROID(this.f55245a, this.f55247c, j4);
    }

    public boolean g() {
        return EGL14.eglSwapBuffers(this.f55245a, this.f55247c);
    }
}
