package com.ksyun.media.streamer.util.gles;

import android.annotation.TargetApi;
import android.opengl.EGL14;
import android.opengl.EGLSurface;
import android.util.Log;

/* compiled from: EglSurfaceBase.java */
@TargetApi(17)
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    protected static final String f46868a = "EglSurfaceBase";

    /* renamed from: b  reason: collision with root package name */
    protected d f46869b;

    /* renamed from: c  reason: collision with root package name */
    private EGLSurface f46870c = EGL14.EGL_NO_SURFACE;

    /* renamed from: d  reason: collision with root package name */
    private int f46871d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f46872e = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public e(d dVar) {
        this.f46869b = dVar;
    }

    public void a(Object obj) {
        if (this.f46870c == EGL14.EGL_NO_SURFACE) {
            EGLSurface a10 = this.f46869b.a(obj);
            this.f46870c = a10;
            this.f46871d = this.f46869b.a(a10, 12375);
            this.f46872e = this.f46869b.a(this.f46870c, 12374);
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public int b() {
        return this.f46872e;
    }

    public void c() {
        this.f46869b.a(this.f46870c);
        this.f46870c = EGL14.EGL_NO_SURFACE;
        this.f46872e = -1;
        this.f46871d = -1;
    }

    public void d() {
        this.f46869b.b(this.f46870c);
    }

    public boolean e() {
        boolean c10 = this.f46869b.c(this.f46870c);
        if (!c10) {
            Log.d(f46868a, "WARNING: swapBuffers() failed");
        }
        return c10;
    }

    public void a(int i4, int i10) {
        if (this.f46870c == EGL14.EGL_NO_SURFACE) {
            this.f46870c = this.f46869b.a(i4, i10);
            this.f46871d = i4;
            this.f46872e = i10;
            return;
        }
        throw new IllegalStateException("surface already created");
    }

    public int a() {
        return this.f46871d;
    }

    public void a(e eVar) {
        this.f46869b.a(this.f46870c, eVar.f46870c);
    }

    public void a(long j4) {
        this.f46869b.a(this.f46870c, j4);
    }
}
