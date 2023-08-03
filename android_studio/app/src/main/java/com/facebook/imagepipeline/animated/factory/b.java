package com.facebook.imagepipeline.animated.factory;

import com.facebook.common.executors.g;
import com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.imagepipeline.cache.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import r7.h;

/* compiled from: AnimatedFactoryProvider.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f11846a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private static a f11847b;

    @h
    public static a a(f platformBitmapFactory, com.facebook.imagepipeline.core.f executorSupplier, j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache, boolean downscaleFrameToDrawableDimensions, @h ExecutorService serialExecutorService) {
        if (!f11846a) {
            try {
                f11847b = (a) AnimatedFactoryV2Impl.class.getConstructor(f.class, com.facebook.imagepipeline.core.f.class, j.class, Boolean.TYPE, g.class).newInstance(platformBitmapFactory, executorSupplier, backingCache, Boolean.valueOf(downscaleFrameToDrawableDimensions), serialExecutorService);
            } catch (Throwable unused) {
            }
            if (f11847b != null) {
                f11846a = true;
            }
        }
        return f11847b;
    }
}
