package com.ksyun.media.streamer.util.gles;

import android.graphics.SurfaceTexture;
import android.view.Surface;

/* compiled from: EglWindowSurface.java */
/* loaded from: classes3.dex */
public class f extends e {

    /* renamed from: c  reason: collision with root package name */
    private Surface f46873c;

    public f(d dVar, int i4, int i10) {
        super(dVar);
        a(i4, i10);
    }

    public void a(d dVar) {
        Surface surface = this.f46873c;
        if (surface != null) {
            this.f46869b = dVar;
            a(surface);
            return;
        }
        throw new RuntimeException("not yet implemented for SurfaceTexture");
    }

    public void f() {
        c();
        Surface surface = this.f46873c;
        if (surface != null) {
            surface.release();
            this.f46873c = null;
        }
    }

    public f(d dVar, Surface surface) {
        super(dVar);
        a(surface);
        this.f46873c = surface;
    }

    public f(d dVar, SurfaceTexture surfaceTexture) {
        super(dVar);
        a(surfaceTexture);
    }
}
