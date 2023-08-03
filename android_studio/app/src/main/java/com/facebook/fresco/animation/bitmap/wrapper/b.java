package com.facebook.fresco.animation.bitmap.wrapper;

import android.graphics.Bitmap;
import android.graphics.Rect;
import b1.c;
import com.facebook.imagepipeline.animated.impl.d;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedDrawableBackendFrameRenderer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: e  reason: collision with root package name */
    private static final Class<?> f11708e = b.class;

    /* renamed from: a  reason: collision with root package name */
    private final b1.b f11709a;

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.base.a f11710b;

    /* renamed from: c  reason: collision with root package name */
    private d f11711c;

    /* renamed from: d  reason: collision with root package name */
    private final d.b f11712d;

    /* compiled from: AnimatedDrawableBackendFrameRenderer.java */
    /* loaded from: classes.dex */
    class a implements d.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.d.b
        public void a(int frameNumber, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.d.b
        @h
        public com.facebook.common.references.a<Bitmap> b(int frameNumber) {
            return b.this.f11709a.i(frameNumber);
        }
    }

    public b(b1.b bitmapFrameCache, com.facebook.imagepipeline.animated.base.a animatedDrawableBackend) {
        a aVar = new a();
        this.f11712d = aVar;
        this.f11709a = bitmapFrameCache;
        this.f11710b = animatedDrawableBackend;
        this.f11711c = new d(animatedDrawableBackend, aVar);
    }

    @Override // b1.c
    public int d() {
        return this.f11710b.getHeight();
    }

    @Override // b1.c
    public void e(@h Rect bounds) {
        com.facebook.imagepipeline.animated.base.a g4 = this.f11710b.g(bounds);
        if (g4 != this.f11710b) {
            this.f11710b = g4;
            this.f11711c = new d(g4, this.f11712d);
        }
    }

    @Override // b1.c
    public int f() {
        return this.f11710b.getWidth();
    }

    @Override // b1.c
    public boolean g(int frameNumber, Bitmap targetBitmap) {
        try {
            this.f11711c.g(frameNumber, targetBitmap);
            return true;
        } catch (IllegalStateException e4) {
            p0.a.t(f11708e, e4, "Rendering of frame unsuccessful. Frame number: %d", Integer.valueOf(frameNumber));
            return false;
        }
    }
}
