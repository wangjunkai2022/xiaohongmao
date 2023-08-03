package com.facebook.fresco.animation.bitmap.preparation;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import r7.h;

/* compiled from: DefaultBitmapFramePreparer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c implements b {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f11693f = c.class;

    /* renamed from: a  reason: collision with root package name */
    private final f f11694a;

    /* renamed from: b  reason: collision with root package name */
    private final b1.c f11695b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap.Config f11696c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f11697d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<Runnable> f11698e = new SparseArray<>();

    /* compiled from: DefaultBitmapFramePreparer.java */
    /* loaded from: classes.dex */
    private class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final b1.b f11699a;

        /* renamed from: b  reason: collision with root package name */
        private final com.facebook.fresco.animation.backend.a f11700b;

        /* renamed from: c  reason: collision with root package name */
        private final int f11701c;

        /* renamed from: d  reason: collision with root package name */
        private final int f11702d;

        public a(com.facebook.fresco.animation.backend.a animationBackend, b1.b bitmapFrameCache, int frameNumber, int hashCode) {
            this.f11700b = animationBackend;
            this.f11699a = bitmapFrameCache;
            this.f11701c = frameNumber;
            this.f11702d = hashCode;
        }

        private boolean a(int frameNumber, int frameType) {
            com.facebook.common.references.a<Bitmap> g4;
            int i4 = 2;
            try {
                if (frameType == 1) {
                    g4 = this.f11699a.g(frameNumber, this.f11700b.f(), this.f11700b.d());
                } else if (frameType != 2) {
                    return false;
                } else {
                    g4 = c.this.f11694a.e(this.f11700b.f(), this.f11700b.d(), c.this.f11696c);
                    i4 = -1;
                }
                boolean b10 = b(frameNumber, g4, frameType);
                com.facebook.common.references.a.k(g4);
                return (b10 || i4 == -1) ? b10 : a(frameNumber, i4);
            } catch (RuntimeException e4) {
                p0.a.l0(c.f11693f, "Failed to create frame bitmap", e4);
                return false;
            } finally {
                com.facebook.common.references.a.k(null);
            }
        }

        private boolean b(int frameNumber, @h com.facebook.common.references.a<Bitmap> bitmapReference, int frameType) {
            if (com.facebook.common.references.a.A(bitmapReference) && c.this.f11695b.g(frameNumber, bitmapReference.q())) {
                p0.a.V(c.f11693f, "Frame %d ready.", Integer.valueOf(this.f11701c));
                synchronized (c.this.f11698e) {
                    this.f11699a.c(this.f11701c, bitmapReference, frameType);
                }
                return true;
            }
            return false;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f11699a.h(this.f11701c)) {
                    p0.a.V(c.f11693f, "Frame %d is cached already.", Integer.valueOf(this.f11701c));
                    synchronized (c.this.f11698e) {
                        c.this.f11698e.remove(this.f11702d);
                    }
                    return;
                }
                if (a(this.f11701c, 1)) {
                    p0.a.V(c.f11693f, "Prepared frame frame %d.", Integer.valueOf(this.f11701c));
                } else {
                    p0.a.s(c.f11693f, "Could not prepare frame %d.", Integer.valueOf(this.f11701c));
                }
                synchronized (c.this.f11698e) {
                    c.this.f11698e.remove(this.f11702d);
                }
            } catch (Throwable th) {
                synchronized (c.this.f11698e) {
                    c.this.f11698e.remove(this.f11702d);
                    throw th;
                }
            }
        }
    }

    public c(f platformBitmapFactory, b1.c bitmapFrameRenderer, Bitmap.Config bitmapConfig, ExecutorService executorService) {
        this.f11694a = platformBitmapFactory;
        this.f11695b = bitmapFrameRenderer;
        this.f11696c = bitmapConfig;
        this.f11697d = executorService;
    }

    private static int g(com.facebook.fresco.animation.backend.a backend, int frameNumber) {
        return (backend.hashCode() * 31) + frameNumber;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.b
    public boolean a(b1.b bitmapFrameCache, com.facebook.fresco.animation.backend.a animationBackend, int frameNumber) {
        int g4 = g(animationBackend, frameNumber);
        synchronized (this.f11698e) {
            if (this.f11698e.get(g4) != null) {
                p0.a.V(f11693f, "Already scheduled decode job for frame %d", Integer.valueOf(frameNumber));
                return true;
            } else if (bitmapFrameCache.h(frameNumber)) {
                p0.a.V(f11693f, "Frame %d is cached already.", Integer.valueOf(frameNumber));
                return true;
            } else {
                a aVar = new a(animationBackend, bitmapFrameCache, frameNumber, g4);
                this.f11698e.put(g4, aVar);
                this.f11697d.execute(aVar);
                return true;
            }
        }
    }
}
