package com.facebook.fresco.animation.factory;

import android.content.Context;
import android.graphics.Rect;
import com.facebook.common.executors.g;
import com.facebook.common.executors.i;
import com.facebook.common.internal.m;
import com.facebook.common.internal.n;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.cache.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ExecutorService;
import r7.h;

@com.facebook.common.internal.e
@s7.c
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class AnimatedFactoryV2Impl implements com.facebook.imagepipeline.animated.factory.a {

    /* renamed from: j  reason: collision with root package name */
    private static final int f11742j = 3;

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f11743a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.f f11744b;

    /* renamed from: c  reason: collision with root package name */
    private final j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f11745c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f11746d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.factory.d f11747e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.impl.b f11748f;
    @h

    /* renamed from: g  reason: collision with root package name */
    private l1.a f11749g;
    @h

    /* renamed from: h  reason: collision with root package name */
    private n1.a f11750h;
    @h

    /* renamed from: i  reason: collision with root package name */
    private g f11751i;

    /* loaded from: classes.dex */
    class a implements com.facebook.imagepipeline.decoder.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e encodedImage, int length, com.facebook.imagepipeline.image.j qualityInfo, com.facebook.imagepipeline.common.b options) {
            return AnimatedFactoryV2Impl.this.k().a(encodedImage, options, options.f12181h);
        }
    }

    /* loaded from: classes.dex */
    class b implements com.facebook.imagepipeline.decoder.b {
        b() {
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e encodedImage, int length, com.facebook.imagepipeline.image.j qualityInfo, com.facebook.imagepipeline.common.b options) {
            return AnimatedFactoryV2Impl.this.k().b(encodedImage, options, options.f12181h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements m<Integer> {
        c() {
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public Integer get() {
            return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements m<Integer> {
        d() {
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public Integer get() {
            return 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements com.facebook.imagepipeline.animated.impl.b {
        e() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.b
        public com.facebook.imagepipeline.animated.base.a a(com.facebook.imagepipeline.animated.base.f animatedImageResult, @h Rect bounds) {
            return new com.facebook.imagepipeline.animated.impl.a(AnimatedFactoryV2Impl.this.j(), animatedImageResult, bounds, AnimatedFactoryV2Impl.this.f11746d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements com.facebook.imagepipeline.animated.impl.b {
        f() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.b
        public com.facebook.imagepipeline.animated.base.a a(com.facebook.imagepipeline.animated.base.f imageResult, @h Rect bounds) {
            return new com.facebook.imagepipeline.animated.impl.a(AnimatedFactoryV2Impl.this.j(), imageResult, bounds, AnimatedFactoryV2Impl.this.f11746d);
        }
    }

    @com.facebook.common.internal.e
    public AnimatedFactoryV2Impl(com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, com.facebook.imagepipeline.core.f executorSupplier, j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> backingCache, boolean downscaleFrameToDrawableDimensions, g serialExecutorServiceForFramePreparing) {
        this.f11743a = platformBitmapFactory;
        this.f11744b = executorSupplier;
        this.f11745c = backingCache;
        this.f11746d = downscaleFrameToDrawableDimensions;
        this.f11751i = serialExecutorServiceForFramePreparing;
    }

    private com.facebook.imagepipeline.animated.factory.d g() {
        return new com.facebook.imagepipeline.animated.factory.e(new f(), this.f11743a);
    }

    private com.facebook.fresco.animation.factory.a h() {
        c cVar = new c();
        ExecutorService executorService = this.f11751i;
        if (executorService == null) {
            executorService = new com.facebook.common.executors.c(this.f11744b.d());
        }
        d dVar = new d();
        m<Boolean> mVar = n.f10985b;
        return new com.facebook.fresco.animation.factory.a(i(), i.f(), executorService, RealtimeSinceBootClock.get(), this.f11743a, this.f11745c, cVar, dVar, mVar);
    }

    private com.facebook.imagepipeline.animated.impl.b i() {
        if (this.f11748f == null) {
            this.f11748f = new e();
        }
        return this.f11748f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public l1.a j() {
        if (this.f11749g == null) {
            this.f11749g = new l1.a();
        }
        return this.f11749g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.animated.factory.d k() {
        if (this.f11747e == null) {
            this.f11747e = g();
        }
        return this.f11747e;
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    @h
    public n1.a a(@h Context context) {
        if (this.f11750h == null) {
            this.f11750h = h();
        }
        return this.f11750h;
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    public com.facebook.imagepipeline.decoder.b b() {
        return new b();
    }

    @Override // com.facebook.imagepipeline.animated.factory.a
    public com.facebook.imagepipeline.decoder.b c() {
        return new a();
    }
}
