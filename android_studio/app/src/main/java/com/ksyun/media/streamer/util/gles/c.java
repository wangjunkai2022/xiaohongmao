package com.ksyun.media.streamer.util.gles;

import android.graphics.SurfaceTexture;
import android.view.Surface;

/* compiled from: Egl10WindowSurface.java */
/* loaded from: classes3.dex */
public class c extends b {

    /* renamed from: c  reason: collision with root package name */
    private Surface f46859c;

    public c(a aVar, int i4, int i10) {
        super(aVar);
        a(i4, i10);
    }

    public void a(a aVar) {
        Surface surface = this.f46859c;
        if (surface != null) {
            this.f46855b = aVar;
            a(surface);
            return;
        }
        throw new RuntimeException("not yet implemented for SurfaceTexture");
    }

    public void f() {
        c();
        Surface surface = this.f46859c;
        if (surface != null) {
            surface.release();
            this.f46859c = null;
        }
    }

    public c(a aVar, Surface surface) {
        super(aVar);
        a(surface);
        this.f46859c = surface;
    }

    public c(a aVar, SurfaceTexture surfaceTexture) {
        super(aVar);
        a(surfaceTexture);
    }
}
