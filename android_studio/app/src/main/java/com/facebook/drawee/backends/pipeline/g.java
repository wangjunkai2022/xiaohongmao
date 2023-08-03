package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import com.facebook.common.internal.m;
import com.facebook.imagepipeline.core.l;
import java.util.Set;

/* compiled from: PipelineDraweeControllerBuilderSupplier.java */
/* loaded from: classes.dex */
public class g implements m<f> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11126a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.h f11127b;

    /* renamed from: c  reason: collision with root package name */
    private final h f11128c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<com.facebook.drawee.controller.c> f11129d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<i1.c> f11130e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private final x0.i f11131f;

    public g(Context context) {
        this(context, null);
    }

    @Override // com.facebook.common.internal.m
    /* renamed from: a */
    public f get() {
        return new f(this.f11126a, this.f11128c, this.f11127b, this.f11129d, this.f11130e).f0(this.f11131f);
    }

    public g(Context context, @r7.h c draweeConfig) {
        this(context, l.l(), draweeConfig);
    }

    public g(Context context, l imagePipelineFactory, @r7.h c draweeConfig) {
        this(context, imagePipelineFactory, null, null, draweeConfig);
    }

    public g(Context context, l imagePipelineFactory, Set<com.facebook.drawee.controller.c> boundControllerListeners, Set<i1.c> boundControllerListeners2, @r7.h c draweeConfig) {
        this.f11126a = context;
        com.facebook.imagepipeline.core.h j4 = imagePipelineFactory.j();
        this.f11127b = j4;
        if (draweeConfig != null && draweeConfig.d() != null) {
            this.f11128c = draweeConfig.d();
        } else {
            this.f11128c = new h();
        }
        this.f11128c.a(context.getResources(), com.facebook.drawee.components.a.b(), imagePipelineFactory.b(context), com.facebook.common.executors.i.f(), j4.r(), draweeConfig != null ? draweeConfig.a() : null, draweeConfig != null ? draweeConfig.b() : null);
        this.f11129d = boundControllerListeners;
        this.f11130e = boundControllerListeners2;
        this.f11131f = draweeConfig != null ? draweeConfig.c() : null;
    }
}
