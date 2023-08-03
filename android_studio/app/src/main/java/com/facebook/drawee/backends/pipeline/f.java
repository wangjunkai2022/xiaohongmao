package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.j;
import com.facebook.common.internal.n;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Set;

/* compiled from: PipelineDraweeControllerBuilder.java */
/* loaded from: classes.dex */
public class f extends AbstractDraweeControllerBuilder<f, ImageRequest, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> {

    /* renamed from: u  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.h f11120u;

    /* renamed from: v  reason: collision with root package name */
    private final h f11121v;
    @r7.h

    /* renamed from: w  reason: collision with root package name */
    private ImmutableList<n1.a> f11122w;
    @r7.h

    /* renamed from: x  reason: collision with root package name */
    private x0.e f11123x;
    @r7.h

    /* renamed from: y  reason: collision with root package name */
    private x0.i f11124y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PipelineDraweeControllerBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11125a;

        static {
            int[] iArr = new int[AbstractDraweeControllerBuilder.CacheLevel.values().length];
            f11125a = iArr;
            try {
                iArr[AbstractDraweeControllerBuilder.CacheLevel.FULL_FETCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11125a[AbstractDraweeControllerBuilder.CacheLevel.DISK_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11125a[AbstractDraweeControllerBuilder.CacheLevel.BITMAP_MEMORY_CACHE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public f(Context context, h pipelineDraweeControllerFactory, com.facebook.imagepipeline.core.h imagePipeline, Set<com.facebook.drawee.controller.c> boundControllerListeners, Set<i1.c> boundControllerListeners2) {
        super(context, boundControllerListeners, boundControllerListeners2);
        this.f11120u = imagePipeline;
        this.f11121v = pipelineDraweeControllerFactory;
    }

    public static ImageRequest.RequestLevel W(AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        int i4 = a.f11125a[cacheLevel.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE;
                }
                throw new RuntimeException("Cache level" + cacheLevel + "is not supported. ");
            }
            return ImageRequest.RequestLevel.DISK_CACHE;
        }
        return ImageRequest.RequestLevel.FULL_FETCH;
    }

    @r7.h
    private com.facebook.cache.common.c X() {
        ImageRequest t9 = t();
        com.facebook.imagepipeline.cache.g t10 = this.f11120u.t();
        if (t10 == null || t9 == null) {
            return null;
        }
        if (t9.m() != null) {
            return t10.c(t9, i());
        }
        return t10.a(t9, i());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* renamed from: Y */
    public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> n(z0.a controller, String controllerId, ImageRequest imageRequest, Object callerContext, AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        return this.f11120u.l(imageRequest, callerContext, W(cacheLevel), Z(controller), controllerId);
    }

    @r7.h
    protected q1.f Z(final z0.a controller) {
        if (controller instanceof e) {
            return ((e) controller).u0();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* renamed from: a0 */
    public e E() {
        e c10;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeControllerBuilder#obtainController");
        }
        try {
            z0.a w9 = w();
            String g4 = AbstractDraweeControllerBuilder.g();
            if (w9 instanceof e) {
                c10 = (e) w9;
            } else {
                c10 = this.f11121v.c();
            }
            c10.x0(F(c10, g4), g4, X(), i(), this.f11122w, this.f11123x);
            c10.y0(this.f11124y, this, n.f10985b);
            return c10;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public f b0(@r7.h ImmutableList<n1.a> customDrawableFactories) {
        this.f11122w = customDrawableFactories;
        return z();
    }

    public f c0(n1.a... drawableFactories) {
        j.i(drawableFactories);
        return b0(ImmutableList.of((Object[]) drawableFactories));
    }

    public f d0(n1.a drawableFactory) {
        j.i(drawableFactory);
        return b0(ImmutableList.of((Object[]) new n1.a[]{drawableFactory}));
    }

    public f e0(@r7.h x0.e imageOriginListener) {
        this.f11123x = imageOriginListener;
        return z();
    }

    public f f0(@r7.h x0.i imagePerfDataListener) {
        this.f11124y = imagePerfDataListener;
        return z();
    }

    @Override // z0.d
    /* renamed from: g0 */
    public f a(@r7.h Uri uri) {
        if (uri == null) {
            return (f) super.P(null);
        }
        return (f) super.P(ImageRequestBuilder.x(uri).N(com.facebook.imagepipeline.common.e.b()).a());
    }

    @Override // z0.d
    /* renamed from: h0 */
    public f b(@r7.h String uriString) {
        if (uriString != null && !uriString.isEmpty()) {
            return a(Uri.parse(uriString));
        }
        return (f) super.P(ImageRequest.c(uriString));
    }
}
