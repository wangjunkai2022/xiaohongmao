package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.m;
import com.facebook.imagepipeline.cache.u;
import java.util.concurrent.Executor;

/* compiled from: PipelineDraweeControllerFactory.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private Resources f11132a;

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.drawee.components.a f11133b;

    /* renamed from: c  reason: collision with root package name */
    private n1.a f11134c;

    /* renamed from: d  reason: collision with root package name */
    private Executor f11135d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f11136e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private ImmutableList<n1.a> f11137f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private m<Boolean> f11138g;

    public void a(Resources resources, com.facebook.drawee.components.a deferredReleaser, n1.a animatedDrawableFactory, Executor uiThreadExecutor, u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, @r7.h ImmutableList<n1.a> drawableFactories, @r7.h m<Boolean> debugOverlayEnabledSupplier) {
        this.f11132a = resources;
        this.f11133b = deferredReleaser;
        this.f11134c = animatedDrawableFactory;
        this.f11135d = uiThreadExecutor;
        this.f11136e = memoryCache;
        this.f11137f = drawableFactories;
        this.f11138g = debugOverlayEnabledSupplier;
    }

    protected e b(Resources resources, com.facebook.drawee.components.a deferredReleaser, n1.a animatedDrawableFactory, Executor uiThreadExecutor, @r7.h u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, @r7.h ImmutableList<n1.a> drawableFactories) {
        return new e(resources, deferredReleaser, animatedDrawableFactory, uiThreadExecutor, memoryCache, drawableFactories);
    }

    public e c() {
        e b10 = b(this.f11132a, this.f11133b, this.f11134c, this.f11135d, this.f11136e, this.f11137f);
        m<Boolean> mVar = this.f11138g;
        if (mVar != null) {
            b10.H0(mVar.get().booleanValue());
        }
        return b10;
    }
}
