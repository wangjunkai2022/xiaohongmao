package com.rudresh.videocompression.videocompression;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: OutputSurface.java */
/* loaded from: classes3.dex */
public class g implements SurfaceTexture.OnFrameAvailableListener {

    /* renamed from: j  reason: collision with root package name */
    private static final int f55274j = 4;

    /* renamed from: k  reason: collision with root package name */
    private static final int f55275k = 12440;

    /* renamed from: a  reason: collision with root package name */
    private EGL10 f55276a;

    /* renamed from: e  reason: collision with root package name */
    private SurfaceTexture f55280e;

    /* renamed from: f  reason: collision with root package name */
    private Surface f55281f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f55283h;

    /* renamed from: i  reason: collision with root package name */
    private i f55284i;

    /* renamed from: b  reason: collision with root package name */
    private EGLDisplay f55277b = null;

    /* renamed from: c  reason: collision with root package name */
    private EGLContext f55278c = null;

    /* renamed from: d  reason: collision with root package name */
    private EGLSurface f55279d = null;

    /* renamed from: g  reason: collision with root package name */
    private final Object f55282g = new Object();

    public g(int i4, int i10, int i11, int i12, int i13, float f10, boolean z9) {
        i iVar = new i(i4, i10, i11, i12, i13, f10, z9);
        this.f55284i = iVar;
        iVar.h();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f55284i.f());
        this.f55280e = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        this.f55281f = new Surface(this.f55280e);
    }

    private void c(String str) {
        if (this.f55276a.eglGetError() != 12288) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }

    private void e(int i4, int i10) {
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f55276a = egl10;
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f55277b = eglGetDisplay;
        if (eglGetDisplay != EGL10.EGL_NO_DISPLAY) {
            if (!this.f55276a.eglInitialize(eglGetDisplay, null)) {
                this.f55277b = null;
                throw new RuntimeException("unable to initialize EGL10");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (this.f55276a.eglChooseConfig(this.f55277b, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12339, 1, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
                this.f55278c = this.f55276a.eglCreateContext(this.f55277b, eGLConfigArr[0], EGL10.EGL_NO_CONTEXT, new int[]{f55275k, 2, 12344});
                c("eglCreateContext");
                if (this.f55278c != null) {
                    this.f55279d = this.f55276a.eglCreatePbufferSurface(this.f55277b, eGLConfigArr[0], new int[]{12375, i4, 12374, i10, 12344});
                    c("eglCreatePbufferSurface");
                    if (this.f55279d == null) {
                        throw new RuntimeException("surface was null");
                    }
                    return;
                }
                throw new RuntimeException("null context");
            }
            throw new RuntimeException("unable to find RGB888+pbuffer EGL config");
        }
        throw new RuntimeException("unable to get EGL10 display");
    }

    public void a() {
        synchronized (this.f55282g) {
            while (!this.f55283h) {
                try {
                    this.f55282g.wait(2500L);
                    if (!this.f55283h) {
                        throw new RuntimeException("Surface frame wait timed out");
                    }
                } catch (InterruptedException e4) {
                    throw new RuntimeException(e4);
                }
            }
            this.f55283h = false;
        }
        this.f55280e.updateTexImage();
    }

    public void b(String str, String str2) {
        this.f55284i.a(str, str2);
    }

    public void d() {
        this.f55284i.c(this.f55280e);
    }

    public Surface f() {
        return this.f55281f;
    }

    public void g() {
        if (this.f55276a != null) {
            c("before makeCurrent");
            EGL10 egl10 = this.f55276a;
            EGLDisplay eGLDisplay = this.f55277b;
            EGLSurface eGLSurface = this.f55279d;
            if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f55278c)) {
                throw new RuntimeException("eglMakeCurrent failed");
            }
            return;
        }
        throw new RuntimeException("not configured for makeCurrent");
    }

    public void h() {
        EGL10 egl10 = this.f55276a;
        if (egl10 != null) {
            if (egl10.eglGetCurrentContext().equals(this.f55278c)) {
                EGL10 egl102 = this.f55276a;
                EGLDisplay eGLDisplay = this.f55277b;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                egl102.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            }
            this.f55276a.eglDestroySurface(this.f55277b, this.f55279d);
            this.f55276a.eglDestroyContext(this.f55277b, this.f55278c);
        }
        i iVar = this.f55284i;
        if (iVar != null) {
            iVar.g();
        }
        this.f55281f.release();
        this.f55277b = null;
        this.f55278c = null;
        this.f55279d = null;
        this.f55276a = null;
        this.f55284i = null;
        this.f55281f = null;
        this.f55280e = null;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.f55282g) {
            if (!this.f55283h) {
                this.f55283h = true;
                this.f55282g.notifyAll();
            } else {
                throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
            }
        }
    }
}
