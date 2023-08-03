package com.facebook.fresco.animation.factory;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.common.internal.m;
import com.facebook.imagepipeline.animated.base.d;
import com.facebook.imagepipeline.animated.impl.b;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.imagepipeline.cache.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import r7.h;
import s0.c;

/* compiled from: ExperimentalBitmapAnimationDrawableFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a implements n1.a {

    /* renamed from: j  reason: collision with root package name */
    public static final int f11758j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static final int f11759k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f11760l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f11761m = 3;

    /* renamed from: a  reason: collision with root package name */
    private final b f11762a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f11763b;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f11764c;

    /* renamed from: d  reason: collision with root package name */
    private final c f11765d;

    /* renamed from: e  reason: collision with root package name */
    private final f f11766e;

    /* renamed from: f  reason: collision with root package name */
    private final j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f11767f;

    /* renamed from: g  reason: collision with root package name */
    private final m<Integer> f11768g;

    /* renamed from: h  reason: collision with root package name */
    private final m<Integer> f11769h;

    /* renamed from: i  reason: collision with root package name */
    private final m<Boolean> f11770i;

    public a(b animatedDrawableBackendProvider, ScheduledExecutorService scheduledExecutorServiceForUiThread, ExecutorService executorServiceForFramePreparing, c monotonicClock, f platformBitmapFactory, j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache, m<Integer> cachingStrategySupplier, m<Integer> numberOfFramesToPrepareSupplier, m<Boolean> useDeepEqualsForCacheKey) {
        this.f11762a = animatedDrawableBackendProvider;
        this.f11763b = scheduledExecutorServiceForUiThread;
        this.f11764c = executorServiceForFramePreparing;
        this.f11765d = monotonicClock;
        this.f11766e = platformBitmapFactory;
        this.f11767f = backingCache;
        this.f11768g = cachingStrategySupplier;
        this.f11769h = numberOfFramesToPrepareSupplier;
        this.f11770i = useDeepEqualsForCacheKey;
    }

    private com.facebook.imagepipeline.animated.base.a c(com.facebook.imagepipeline.animated.base.f animatedImageResult) {
        d f10 = animatedImageResult.f();
        return this.f11762a.a(animatedImageResult, new Rect(0, 0, f10.getWidth(), f10.getHeight()));
    }

    private com.facebook.imagepipeline.animated.impl.c d(final com.facebook.imagepipeline.animated.base.f animatedImageResult) {
        return new com.facebook.imagepipeline.animated.impl.c(new com.facebook.fresco.animation.bitmap.cache.a(animatedImageResult.hashCode(), this.f11770i.get().booleanValue()), this.f11767f);
    }

    private com.facebook.fresco.animation.backend.a e(com.facebook.imagepipeline.animated.base.f animatedImageResult, @h Bitmap.Config animatedBitmapConig) {
        com.facebook.fresco.animation.bitmap.preparation.d dVar;
        com.facebook.fresco.animation.bitmap.preparation.b bVar;
        com.facebook.imagepipeline.animated.base.a c10 = c(animatedImageResult);
        b1.b f10 = f(animatedImageResult);
        com.facebook.fresco.animation.bitmap.wrapper.b bVar2 = new com.facebook.fresco.animation.bitmap.wrapper.b(f10, c10);
        int intValue = this.f11769h.get().intValue();
        if (intValue > 0) {
            com.facebook.fresco.animation.bitmap.preparation.d dVar2 = new com.facebook.fresco.animation.bitmap.preparation.d(intValue);
            bVar = g(bVar2, animatedBitmapConig);
            dVar = dVar2;
        } else {
            dVar = null;
            bVar = null;
        }
        return com.facebook.fresco.animation.backend.c.s(new b1.a(this.f11766e, f10, new com.facebook.fresco.animation.bitmap.wrapper.a(c10), bVar2, dVar, bVar), this.f11765d, this.f11763b);
    }

    private b1.b f(com.facebook.imagepipeline.animated.base.f animatedImageResult) {
        int intValue = this.f11768g.get().intValue();
        if (intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3) {
                    return new com.facebook.fresco.animation.bitmap.cache.d();
                }
                return new com.facebook.fresco.animation.bitmap.cache.c();
            }
            return new com.facebook.fresco.animation.bitmap.cache.b(d(animatedImageResult), false);
        }
        return new com.facebook.fresco.animation.bitmap.cache.b(d(animatedImageResult), true);
    }

    private com.facebook.fresco.animation.bitmap.preparation.b g(b1.c bitmapFrameRenderer, @h Bitmap.Config animatedBitmapConig) {
        f fVar = this.f11766e;
        if (animatedBitmapConig == null) {
            animatedBitmapConig = Bitmap.Config.ARGB_8888;
        }
        return new com.facebook.fresco.animation.bitmap.preparation.c(fVar, bitmapFrameRenderer, animatedBitmapConig, this.f11764c);
    }

    @Override // n1.a
    public boolean a(com.facebook.imagepipeline.image.c image) {
        return image instanceof com.facebook.imagepipeline.image.a;
    }

    @Override // n1.a
    /* renamed from: h */
    public com.facebook.fresco.animation.drawable.a b(com.facebook.imagepipeline.image.c image) {
        com.facebook.imagepipeline.image.a aVar = (com.facebook.imagepipeline.image.a) image;
        d k10 = aVar.k();
        return new com.facebook.fresco.animation.drawable.a(e((com.facebook.imagepipeline.animated.base.f) com.facebook.common.internal.j.i(aVar.p()), k10 != null ? k10.h() : null));
    }
}
