package com.facebook.imagepipeline.image;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: CloseableAnimatedImage.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a extends c {
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.base.f f12492d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f12493e;

    public a(com.facebook.imagepipeline.animated.base.f imageResult) {
        this(imageResult, true);
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized int b() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f12492d;
        return fVar == null ? 0 : fVar.f().b();
    }

    @Override // com.facebook.imagepipeline.image.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            com.facebook.imagepipeline.animated.base.f fVar = this.f12492d;
            if (fVar == null) {
                return;
            }
            this.f12492d = null;
            fVar.a();
        }
    }

    @Override // com.facebook.imagepipeline.image.c
    public boolean d() {
        return this.f12493e;
    }

    @Override // com.facebook.imagepipeline.image.g
    public synchronized int getHeight() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f12492d;
        return fVar == null ? 0 : fVar.f().getHeight();
    }

    @Override // com.facebook.imagepipeline.image.g
    public synchronized int getWidth() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f12492d;
        return fVar == null ? 0 : fVar.f().getWidth();
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized boolean isClosed() {
        return this.f12492d == null;
    }

    @r7.h
    public synchronized com.facebook.imagepipeline.animated.base.d k() {
        com.facebook.imagepipeline.animated.base.f fVar;
        fVar = this.f12492d;
        return fVar == null ? null : fVar.f();
    }

    @r7.h
    public synchronized com.facebook.imagepipeline.animated.base.f p() {
        return this.f12492d;
    }

    public a(com.facebook.imagepipeline.animated.base.f imageResult, boolean isStateful) {
        this.f12492d = imageResult;
        this.f12493e = isStateful;
    }
}
