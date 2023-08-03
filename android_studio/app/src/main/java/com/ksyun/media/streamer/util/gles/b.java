package com.ksyun.media.streamer.util.gles;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: Egl10SurfaceBase.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    protected static final String f46854a = "Egl10SurfaceBase";

    /* renamed from: b  reason: collision with root package name */
    protected a f46855b;

    /* renamed from: c  reason: collision with root package name */
    private EGLSurface f46856c = EGL10.EGL_NO_SURFACE;

    /* renamed from: d  reason: collision with root package name */
    private int f46857d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f46858e = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(a aVar) {
        this.f46855b = aVar;
    }

    public void a(Object obj) {
        if (this.f46856c == EGL10.EGL_NO_SURFACE) {
            EGLSurface a10 = this.f46855b.a(obj);
            this.f46856c = a10;
            this.f46857d = this.f46855b.a(a10, 12375);
            this.f46858e = this.f46855b.a(this.f46856c, 12374);
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public int b() {
        return this.f46858e;
    }

    public void c() {
        this.f46855b.a(this.f46856c);
        this.f46856c = EGL10.EGL_NO_SURFACE;
        this.f46858e = -1;
        this.f46857d = -1;
    }

    public void d() {
        this.f46855b.b(this.f46856c);
    }

    public boolean e() {
        boolean c10 = this.f46855b.c(this.f46856c);
        if (!c10) {
            Log.d(f46854a, "WARNING: swapBuffers() failed");
        }
        return c10;
    }

    public void a(int i4, int i10) {
        if (this.f46856c == EGL10.EGL_NO_SURFACE) {
            this.f46856c = this.f46855b.a(i4, i10);
            this.f46857d = i4;
            this.f46858e = i10;
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public int a() {
        return this.f46857d;
    }

    public void a(b bVar) {
        this.f46855b.a(this.f46856c, bVar.f46856c);
    }
}
