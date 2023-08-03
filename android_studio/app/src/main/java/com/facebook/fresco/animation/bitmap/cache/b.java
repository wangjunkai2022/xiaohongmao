package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import b1.b;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: FrescoFrameCache.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements b1.b {

    /* renamed from: e  reason: collision with root package name */
    private static final Class<?> f11684e = b.class;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.impl.c f11685a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f11686b;
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f11687c = new SparseArray<>();
    @h
    @s7.a("this")

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.common.references.a<com.facebook.imagepipeline.image.c> f11688d;

    public b(com.facebook.imagepipeline.animated.impl.c animatedFrameCache, boolean enableBitmapReusing) {
        this.f11685a = animatedFrameCache;
        this.f11686b = enableBitmapReusing;
    }

    @h
    @VisibleForTesting
    static com.facebook.common.references.a<Bitmap> a(@h final com.facebook.common.references.a<com.facebook.imagepipeline.image.c> closeableImage) {
        com.facebook.imagepipeline.image.d dVar;
        try {
            if (com.facebook.common.references.a.A(closeableImage) && (closeableImage.q() instanceof com.facebook.imagepipeline.image.d) && (dVar = (com.facebook.imagepipeline.image.d) closeableImage.q()) != null) {
                return dVar.p();
            }
            return null;
        } finally {
            com.facebook.common.references.a.k(closeableImage);
        }
    }

    @h
    private static com.facebook.common.references.a<com.facebook.imagepipeline.image.c> j(com.facebook.common.references.a<Bitmap> bitmapReference) {
        return com.facebook.common.references.a.D(new com.facebook.imagepipeline.image.d(bitmapReference, com.facebook.imagepipeline.image.h.f12520d, 0));
    }

    private static int k(@h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> imageReference) {
        if (com.facebook.common.references.a.A(imageReference)) {
            return l(imageReference.q());
        }
        return 0;
    }

    private static int l(@h com.facebook.imagepipeline.image.c image) {
        if (image instanceof com.facebook.imagepipeline.image.b) {
            return com.facebook.imageutils.a.g(((com.facebook.imagepipeline.image.b) image).k());
        }
        return 0;
    }

    private synchronized int m() {
        int i4;
        i4 = 0;
        for (int i10 = 0; i10 < this.f11687c.size(); i10++) {
            i4 += k(this.f11687c.valueAt(i10));
        }
        return i4;
    }

    private synchronized void n(int frameNumber) {
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f11687c.get(frameNumber);
        if (aVar != null) {
            this.f11687c.delete(frameNumber);
            com.facebook.common.references.a.k(aVar);
            p0.a.W(f11684e, "removePreparedReference(%d) removed. Pending frames: %s", Integer.valueOf(frameNumber), this.f11687c);
        }
    }

    @Override // b1.b
    public synchronized int b() {
        return k(this.f11688d) + m();
    }

    @Override // b1.b
    public synchronized void c(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType) {
        j.i(bitmapReference);
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> j4 = j(bitmapReference);
        if (j4 == null) {
            com.facebook.common.references.a.k(j4);
            return;
        }
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> a10 = this.f11685a.a(frameNumber, j4);
        if (com.facebook.common.references.a.A(a10)) {
            com.facebook.common.references.a.k(this.f11687c.get(frameNumber));
            this.f11687c.put(frameNumber, a10);
            p0.a.W(f11684e, "cachePreparedFrame(%d) cached. Pending frames: %s", Integer.valueOf(frameNumber), this.f11687c);
        }
        com.facebook.common.references.a.k(j4);
    }

    @Override // b1.b
    public synchronized void clear() {
        com.facebook.common.references.a.k(this.f11688d);
        this.f11688d = null;
        for (int i4 = 0; i4 < this.f11687c.size(); i4++) {
            com.facebook.common.references.a.k(this.f11687c.valueAt(i4));
        }
        this.f11687c.clear();
    }

    @Override // b1.b
    public void d(b.a frameCacheListener) {
    }

    @Override // b1.b
    public synchronized void e(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType) {
        j.i(bitmapReference);
        n(frameNumber);
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> j4 = j(bitmapReference);
        if (j4 != null) {
            com.facebook.common.references.a.k(this.f11688d);
            this.f11688d = this.f11685a.a(frameNumber, j4);
        }
        com.facebook.common.references.a.k(j4);
    }

    @Override // b1.b
    @h
    public synchronized com.facebook.common.references.a<Bitmap> f(int frameNumber) {
        return a(com.facebook.common.references.a.h(this.f11688d));
    }

    @Override // b1.b
    @h
    public synchronized com.facebook.common.references.a<Bitmap> g(int frameNumber, int width, int height) {
        if (this.f11686b) {
            return a(this.f11685a.d());
        }
        return null;
    }

    @Override // b1.b
    public synchronized boolean h(int frameNumber) {
        return this.f11685a.b(frameNumber);
    }

    @Override // b1.b
    @h
    public synchronized com.facebook.common.references.a<Bitmap> i(int frameNumber) {
        return a(this.f11685a.c(frameNumber));
    }
}
