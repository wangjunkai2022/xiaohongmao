package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.m;
import com.facebook.common.time.AwakeTimeSinceBootClock;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import x0.j;

/* compiled from: PipelineDraweeController.java */
/* loaded from: classes.dex */
public class e extends com.facebook.drawee.controller.a<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> {
    private static final Class<?> P = e.class;
    private final Resources A;
    private final n1.a B;
    @r7.h
    private final ImmutableList<n1.a> C;
    @r7.h
    private final u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> D;
    private com.facebook.cache.common.c E;
    private m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> F;
    private boolean G;
    @r7.h
    private ImmutableList<n1.a> H;
    @r7.h
    private j I;
    @r7.h
    @s7.a("this")
    private Set<q1.f> J;
    @r7.h
    @s7.a("this")
    private x0.e K;
    private w0.b L;
    @r7.h
    private ImageRequest M;
    @r7.h
    private ImageRequest[] N;
    @r7.h
    private ImageRequest O;

    public e(Resources resources, com.facebook.drawee.components.a deferredReleaser, n1.a animatedDrawableFactory, Executor uiThreadExecutor, @r7.h u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> memoryCache, @r7.h ImmutableList<n1.a> globalDrawableFactories) {
        super(deferredReleaser, uiThreadExecutor, null, null);
        this.A = resources;
        this.B = new b(resources, animatedDrawableFactory);
        this.C = globalDrawableFactories;
        this.D = memoryCache;
    }

    private void A0(@r7.h com.facebook.imagepipeline.image.c image) {
        if (this.G) {
            if (u() == null) {
                com.facebook.drawee.debug.a aVar = new com.facebook.drawee.debug.a();
                y0.a aVar2 = new y0.a(aVar);
                this.L = new w0.b();
                n(aVar2);
                c0(aVar);
            }
            if (this.K == null) {
                l0(this.L);
            }
            if (u() instanceof com.facebook.drawee.debug.a) {
                I0(image, (com.facebook.drawee.debug.a) u());
            }
        }
    }

    private void w0(m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> dataSourceSupplier) {
        this.F = dataSourceSupplier;
        A0(null);
    }

    @r7.h
    private Drawable z0(@r7.h ImmutableList<n1.a> drawableFactories, com.facebook.imagepipeline.image.c closeableImage) {
        Drawable b10;
        if (drawableFactories == null) {
            return null;
        }
        Iterator<n1.a> it = drawableFactories.iterator();
        while (it.hasNext()) {
            n1.a next = it.next();
            if (next.a(closeableImage) && (b10 = next.b(closeableImage)) != null) {
                return b10;
            }
        }
        return null;
    }

    @Override // com.facebook.drawee.controller.a
    @r7.h
    /* renamed from: B0 */
    public Map<String, Object> M(com.facebook.imagepipeline.image.g info) {
        if (info == null) {
            return null;
        }
        return info.getExtras();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: C0 */
    public void O(String id, com.facebook.common.references.a<com.facebook.imagepipeline.image.c> cachedImage) {
        super.O(id, cachedImage);
        synchronized (this) {
            x0.e eVar = this.K;
            if (eVar != null) {
                eVar.a(id, 6, true, "PipelineDraweeController");
            }
        }
    }

    @Override // com.facebook.drawee.controller.a
    @r7.h
    protected Uri D() {
        return i1.g.a(this.M, this.O, this.N, ImageRequest.f13318y);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: D0 */
    public void T(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> image) {
        com.facebook.common.references.a.k(image);
    }

    public synchronized void E0(x0.e imageOriginListener) {
        x0.e eVar = this.K;
        if (eVar instanceof x0.a) {
            ((x0.a) eVar).c(imageOriginListener);
            return;
        }
        if (eVar == imageOriginListener) {
            this.K = null;
        }
    }

    public synchronized void F0(q1.f requestListener) {
        Set<q1.f> set = this.J;
        if (set == null) {
            return;
        }
        set.remove(requestListener);
    }

    public void G0(@r7.h ImmutableList<n1.a> customDrawableFactories) {
        this.H = customDrawableFactories;
    }

    public void H0(boolean drawDebugOverlay) {
        this.G = drawDebugOverlay;
    }

    protected void I0(@r7.h com.facebook.imagepipeline.image.c image, com.facebook.drawee.debug.a debugOverlay) {
        r a10;
        debugOverlay.k(y());
        z0.b f10 = f();
        s.c cVar = null;
        if (f10 != null && (a10 = s.a(f10.d())) != null) {
            cVar = a10.C();
        }
        debugOverlay.s(cVar);
        int b10 = this.L.b();
        debugOverlay.q(x0.g.b(b10), w0.a.a(b10));
        if (image != null) {
            debugOverlay.l(image.getWidth(), image.getHeight());
            debugOverlay.p(image.b());
            return;
        }
        debugOverlay.i();
    }

    @Override // com.facebook.drawee.controller.a
    protected void R(@r7.h Drawable drawable) {
        if (drawable instanceof u0.a) {
            ((u0.a) drawable).d();
        }
    }

    @Override // z0.a
    public boolean b(@r7.h z0.a other) {
        com.facebook.cache.common.c cVar = this.E;
        if (cVar == null || !(other instanceof e)) {
            return false;
        }
        return com.facebook.common.internal.i.a(cVar, ((e) other).p0());
    }

    @Override // com.facebook.drawee.controller.a, z0.a
    public void i(@r7.h z0.b hierarchy) {
        super.i(hierarchy);
        A0(null);
    }

    public synchronized void l0(x0.e imageOriginListener) {
        x0.e eVar = this.K;
        if (eVar instanceof x0.a) {
            ((x0.a) eVar).b(imageOriginListener);
        } else if (eVar != null) {
            this.K = new x0.a(eVar, imageOriginListener);
        } else {
            this.K = imageOriginListener;
        }
    }

    public synchronized void m0(q1.f requestListener) {
        if (this.J == null) {
            this.J = new HashSet();
        }
        this.J.add(requestListener);
    }

    protected void n0() {
        synchronized (this) {
            this.K = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: o0 */
    public Drawable p(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> image) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#createDrawable");
            }
            com.facebook.common.internal.j.o(com.facebook.common.references.a.A(image));
            com.facebook.imagepipeline.image.c q9 = image.q();
            A0(q9);
            Drawable z02 = z0(this.H, q9);
            if (z02 != null) {
                return z02;
            }
            Drawable z03 = z0(this.C, q9);
            if (z03 != null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return z03;
            }
            Drawable b10 = this.B.b(q9);
            if (b10 != null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return b10;
            }
            throw new UnsupportedOperationException("Unrecognized image class: " + q9);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected com.facebook.cache.common.c p0() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    @r7.h
    /* renamed from: q0 */
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> q() {
        com.facebook.cache.common.c cVar;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#getCachedImage");
        }
        try {
            u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> uVar = this.D;
            if (uVar != null && (cVar = this.E) != null) {
                com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = uVar.get(cVar);
                if (aVar != null && !aVar.q().a().a()) {
                    aVar.close();
                    return null;
                }
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return aVar;
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return null;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    protected m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> r0() {
        return this.F;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: s0 */
    public int A(@r7.h com.facebook.common.references.a<com.facebook.imagepipeline.image.c> image) {
        if (image != null) {
            return image.s();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.a
    /* renamed from: t0 */
    public com.facebook.imagepipeline.image.g B(com.facebook.common.references.a<com.facebook.imagepipeline.image.c> image) {
        com.facebook.common.internal.j.o(com.facebook.common.references.a.A(image));
        return image.q();
    }

    @Override // com.facebook.drawee.controller.a
    public String toString() {
        return com.facebook.common.internal.i.e(this).f("super", super.toString()).f("dataSourceSupplier", this.F).toString();
    }

    @r7.h
    public synchronized q1.f u0() {
        x0.f fVar = this.K != null ? new x0.f(y(), this.K) : null;
        Set<q1.f> set = this.J;
        if (set != null) {
            q1.d dVar = new q1.d(set);
            if (fVar != null) {
                dVar.l(fVar);
            }
            return dVar;
        }
        return fVar;
    }

    @Override // com.facebook.drawee.controller.a
    protected com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> v() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#getDataSource");
        }
        if (p0.a.R(2)) {
            p0.a.V(P, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> dVar = this.F.get();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return dVar;
    }

    protected Resources v0() {
        return this.A;
    }

    public void x0(m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> dataSourceSupplier, String id, com.facebook.cache.common.c cacheKey, Object callerContext, @r7.h ImmutableList<n1.a> customDrawableFactories, @r7.h x0.e imageOriginListener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("PipelineDraweeController#initialize");
        }
        super.G(id, callerContext);
        w0(dataSourceSupplier);
        this.E = cacheKey;
        G0(customDrawableFactories);
        n0();
        A0(null);
        l0(imageOriginListener);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void y0(@r7.h x0.i imagePerfDataListener, AbstractDraweeControllerBuilder<f, ImageRequest, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> builder, m<Boolean> asyncLogging) {
        j jVar = this.I;
        if (jVar != null) {
            jVar.g();
        }
        if (imagePerfDataListener != null) {
            if (this.I == null) {
                this.I = new j(AwakeTimeSinceBootClock.get(), this, asyncLogging);
            }
            this.I.c(imagePerfDataListener);
            this.I.h(true);
            this.I.j(builder);
        }
        this.M = builder.t();
        this.N = builder.s();
        this.O = builder.v();
    }
}
