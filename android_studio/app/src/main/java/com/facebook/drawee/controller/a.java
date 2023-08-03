package com.facebook.drawee.controller;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.MotionEvent;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.j;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.components.a;
import com.facebook.drawee.gestures.a;
import com.facebook.imagepipeline.producers.s0;
import i1.c;
import i1.f;
import i1.i;
import java.util.Map;
import java.util.concurrent.Executor;
import r7.h;
import v1.u;

/* compiled from: AbstractDraweeController.java */
@s7.c
/* loaded from: classes.dex */
public abstract class a<T, INFO> implements z0.a, a.InterfaceC0088a, a.InterfaceC0091a {

    /* renamed from: x  reason: collision with root package name */
    private static final Map<String, Object> f11355x = ImmutableMap.of("component_tag", "drawee");

    /* renamed from: y  reason: collision with root package name */
    private static final Map<String, Object> f11356y = ImmutableMap.of("origin", "memory_bitmap", s0.a.f13225g0, "shortcut");

    /* renamed from: z  reason: collision with root package name */
    private static final Class<?> f11357z = a.class;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.drawee.components.a f11359b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f11360c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.drawee.components.c f11361d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.drawee.gestures.a f11362e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private d f11363f;
    @h

    /* renamed from: g  reason: collision with root package name */
    protected com.facebook.drawee.controller.c<INFO> f11364g;
    @h

    /* renamed from: i  reason: collision with root package name */
    protected f f11366i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private z0.c f11367j;
    @h

    /* renamed from: k  reason: collision with root package name */
    private Drawable f11368k;

    /* renamed from: l  reason: collision with root package name */
    private String f11369l;

    /* renamed from: m  reason: collision with root package name */
    private Object f11370m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f11371n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f11372o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f11373p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f11374q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f11375r;
    @h

    /* renamed from: s  reason: collision with root package name */
    private String f11376s;
    @h

    /* renamed from: t  reason: collision with root package name */
    private com.facebook.datasource.d<T> f11377t;
    @h

    /* renamed from: u  reason: collision with root package name */
    private T f11378u;
    @h

    /* renamed from: w  reason: collision with root package name */
    protected Drawable f11380w;

    /* renamed from: a  reason: collision with root package name */
    private final DraweeEventTracker f11358a = DraweeEventTracker.b();

    /* renamed from: h  reason: collision with root package name */
    protected i1.e<INFO> f11365h = new i1.e<>();

    /* renamed from: v  reason: collision with root package name */
    private boolean f11379v = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDraweeController.java */
    /* renamed from: com.facebook.drawee.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0089a implements i {
        C0089a() {
        }

        @Override // i1.i
        public void a() {
            a aVar = a.this;
            f fVar = aVar.f11366i;
            if (fVar != null) {
                fVar.b(aVar.f11369l);
            }
        }

        @Override // i1.i
        public void b() {
        }

        @Override // i1.i
        public void c() {
            a aVar = a.this;
            f fVar = aVar.f11366i;
            if (fVar != null) {
                fVar.a(aVar.f11369l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDraweeController.java */
    /* loaded from: classes.dex */
    public class b extends com.facebook.datasource.c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11382a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f11383b;

        b(final String val$wasImmediate, final boolean val$id) {
            this.f11382a = val$wasImmediate;
            this.f11383b = val$id;
        }

        @Override // com.facebook.datasource.c, com.facebook.datasource.f
        public void d(com.facebook.datasource.d<T> dataSource) {
            boolean b10 = dataSource.b();
            a.this.Q(this.f11382a, dataSource, dataSource.getProgress(), b10);
        }

        @Override // com.facebook.datasource.c
        public void e(com.facebook.datasource.d<T> dataSource) {
            a.this.N(this.f11382a, dataSource, dataSource.e(), true);
        }

        @Override // com.facebook.datasource.c
        public void f(com.facebook.datasource.d<T> dataSource) {
            boolean b10 = dataSource.b();
            boolean g4 = dataSource.g();
            float progress = dataSource.getProgress();
            T a10 = dataSource.a();
            if (a10 != null) {
                a.this.P(this.f11382a, dataSource, a10, progress, b10, this.f11383b, g4);
            } else if (b10) {
                a.this.N(this.f11382a, dataSource, new NullPointerException(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractDraweeController.java */
    /* loaded from: classes.dex */
    public static class c<INFO> extends e<INFO> {
        private c() {
        }

        public static <INFO> c<INFO> n(com.facebook.drawee.controller.c<? super INFO> listener1, com.facebook.drawee.controller.c<? super INFO> listener2) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#createInternal");
            }
            c<INFO> cVar = new c<>();
            cVar.g(listener1);
            cVar.g(listener2);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return cVar;
        }
    }

    public a(com.facebook.drawee.components.a deferredReleaser, Executor uiThreadImmediateExecutor, String id, Object callerContext) {
        this.f11359b = deferredReleaser;
        this.f11360c = uiThreadImmediateExecutor;
        F(id, callerContext);
    }

    private synchronized void F(String id, Object callerContext) {
        com.facebook.drawee.components.a aVar;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#init");
        }
        this.f11358a.c(DraweeEventTracker.Event.ON_INIT_CONTROLLER);
        if (!this.f11379v && (aVar = this.f11359b) != null) {
            aVar.a(this);
        }
        this.f11371n = false;
        this.f11373p = false;
        S();
        this.f11375r = false;
        com.facebook.drawee.components.c cVar = this.f11361d;
        if (cVar != null) {
            cVar.a();
        }
        com.facebook.drawee.gestures.a aVar2 = this.f11362e;
        if (aVar2 != null) {
            aVar2.a();
            this.f11362e.f(this);
        }
        com.facebook.drawee.controller.c<INFO> cVar2 = this.f11364g;
        if (cVar2 instanceof c) {
            ((c) cVar2).h();
        } else {
            this.f11364g = null;
        }
        this.f11363f = null;
        z0.c cVar3 = this.f11367j;
        if (cVar3 != null) {
            cVar3.reset();
            this.f11367j.f(null);
            this.f11367j = null;
        }
        this.f11368k = null;
        if (p0.a.R(2)) {
            p0.a.X(f11357z, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.f11369l, id);
        }
        this.f11369l = id;
        this.f11370m = callerContext;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        if (this.f11366i != null) {
            h0();
        }
    }

    private boolean H(String id, com.facebook.datasource.d<T> dataSource) {
        if (dataSource == null && this.f11377t == null) {
            return true;
        }
        return id.equals(this.f11369l) && dataSource == this.f11377t && this.f11372o;
    }

    private void I(String messageAndMethod, Throwable throwable) {
        if (p0.a.R(2)) {
            p0.a.Y(f11357z, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.f11369l, messageAndMethod, throwable);
        }
    }

    private void J(String messageAndMethod, T image) {
        if (p0.a.R(2)) {
            p0.a.a0(f11357z, "controller %x %s: %s: image: %s %x", Integer.valueOf(System.identityHashCode(this)), this.f11369l, messageAndMethod, z(image), Integer.valueOf(A(image)));
        }
    }

    private c.a K(@h com.facebook.datasource.d<T> datasource, @h INFO info, @h Uri mainUri) {
        return L(datasource == null ? null : datasource.getExtras(), M(info), mainUri);
    }

    private c.a L(@h Map<String, Object> datasourceExtras, @h Map<String, Object> imageExtras, @h Uri mainUri) {
        String str;
        PointF pointF;
        z0.c cVar = this.f11367j;
        if (cVar instanceof com.facebook.drawee.generic.a) {
            com.facebook.drawee.generic.a aVar = (com.facebook.drawee.generic.a) cVar;
            String valueOf = String.valueOf(aVar.n());
            pointF = aVar.m();
            str = valueOf;
        } else {
            str = null;
            pointF = null;
        }
        return g1.a.a(f11355x, f11356y, datasourceExtras, w(), str, pointF, imageExtras, r(), mainUri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(String id, com.facebook.datasource.d<T> dataSource, Throwable throwable, boolean isFinished) {
        Drawable drawable;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onFailureInternal");
        }
        if (!H(id, dataSource)) {
            I("ignore_old_datasource @ onFailure", throwable);
            dataSource.close();
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        this.f11358a.c(isFinished ? DraweeEventTracker.Event.ON_DATASOURCE_FAILURE : DraweeEventTracker.Event.ON_DATASOURCE_FAILURE_INT);
        if (isFinished) {
            I("final_failed @ onFailure", throwable);
            this.f11377t = null;
            this.f11374q = true;
            z0.c cVar = this.f11367j;
            if (cVar != null) {
                if (this.f11375r && (drawable = this.f11380w) != null) {
                    cVar.e(drawable, 1.0f, true);
                } else if (j0()) {
                    cVar.a(throwable);
                } else {
                    cVar.b(throwable);
                }
            }
            W(throwable, dataSource);
        } else {
            I("intermediate_failed @ onFailure", throwable);
            X(throwable);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(String id, com.facebook.datasource.d<T> dataSource, @h T image, float progress, boolean isFinished, boolean wasImmediate, boolean deliverTempResult) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onNewResultInternal");
            }
            if (!H(id, dataSource)) {
                J("ignore_old_datasource @ onNewResult", image);
                T(image);
                dataSource.close();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                    return;
                }
                return;
            }
            this.f11358a.c(isFinished ? DraweeEventTracker.Event.ON_DATASOURCE_RESULT : DraweeEventTracker.Event.ON_DATASOURCE_RESULT_INT);
            try {
                Drawable p9 = p(image);
                T t9 = this.f11378u;
                Drawable drawable = this.f11380w;
                this.f11378u = image;
                this.f11380w = p9;
                if (isFinished) {
                    J("set_final_result @ onNewResult", image);
                    this.f11377t = null;
                    this.f11367j.e(p9, 1.0f, wasImmediate);
                    b0(id, image, dataSource);
                } else if (deliverTempResult) {
                    J("set_temporary_result @ onNewResult", image);
                    this.f11367j.e(p9, 1.0f, wasImmediate);
                    b0(id, image, dataSource);
                } else {
                    J("set_intermediate_result @ onNewResult", image);
                    this.f11367j.e(p9, progress, wasImmediate);
                    Y(id, image);
                }
                if (drawable != null && drawable != p9) {
                    R(drawable);
                }
                if (t9 != null && t9 != image) {
                    J("release_previous_result @ onNewResult", t9);
                    T(t9);
                }
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } catch (Exception e4) {
                J("drawable_failed @ onNewResult", image);
                T(image);
                N(id, dataSource, e4, isFinished);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(String id, com.facebook.datasource.d<T> dataSource, float progress, boolean isFinished) {
        if (!H(id, dataSource)) {
            I("ignore_old_datasource @ onProgress", null);
            dataSource.close();
        } else if (isFinished) {
        } else {
            this.f11367j.c(progress, false);
        }
    }

    private void S() {
        Map<String, Object> map;
        boolean z9 = this.f11372o;
        this.f11372o = false;
        this.f11374q = false;
        com.facebook.datasource.d<T> dVar = this.f11377t;
        Map<String, Object> map2 = null;
        if (dVar != null) {
            map = dVar.getExtras();
            this.f11377t.close();
            this.f11377t = null;
        } else {
            map = null;
        }
        Drawable drawable = this.f11380w;
        if (drawable != null) {
            R(drawable);
        }
        if (this.f11376s != null) {
            this.f11376s = null;
        }
        this.f11380w = null;
        T t9 = this.f11378u;
        if (t9 != null) {
            Map<String, Object> M = M(B(t9));
            J("release", this.f11378u);
            T(this.f11378u);
            this.f11378u = null;
            map2 = M;
        }
        if (z9) {
            Z(map, map2);
        }
    }

    private void W(Throwable throwable, @h com.facebook.datasource.d<T> dataSource) {
        c.a K = K(dataSource, null, null);
        s().b(this.f11369l, throwable);
        t().d(this.f11369l, throwable, K);
    }

    private void X(Throwable throwable) {
        s().f(this.f11369l, throwable);
        t().h(this.f11369l);
    }

    private void Y(String id, @h T image) {
        INFO B = B(image);
        s().a(id, B);
        t().a(id, B);
    }

    private void Z(@h Map<String, Object> datasourceExtras, @h Map<String, Object> imageExtras) {
        s().c(this.f11369l);
        t().k(this.f11369l, L(datasourceExtras, imageExtras, null));
    }

    private void b0(String id, @h T image, @h com.facebook.datasource.d<T> dataSource) {
        INFO B = B(image);
        s().d(id, B, g());
        t().b(id, B, K(dataSource, B, null));
    }

    private void h0() {
        z0.c cVar = this.f11367j;
        if (cVar instanceof com.facebook.drawee.generic.a) {
            ((com.facebook.drawee.generic.a) cVar).H(new C0089a());
        }
    }

    private boolean j0() {
        com.facebook.drawee.components.c cVar;
        return this.f11374q && (cVar = this.f11361d) != null && cVar.h();
    }

    @h
    private Rect w() {
        z0.c cVar = this.f11367j;
        if (cVar == null) {
            return null;
        }
        return cVar.getBounds();
    }

    protected int A(@h T image) {
        return System.identityHashCode(image);
    }

    @h
    protected abstract INFO B(T image);

    @h
    protected f C() {
        return this.f11366i;
    }

    @h
    protected Uri D() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @u
    public com.facebook.drawee.components.c E() {
        if (this.f11361d == null) {
            this.f11361d = new com.facebook.drawee.components.c();
        }
        return this.f11361d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G(String id, Object callerContext) {
        F(id, callerContext);
        this.f11379v = false;
    }

    @h
    public abstract Map<String, Object> M(INFO info);

    /* JADX INFO: Access modifiers changed from: protected */
    public void O(String id, T cachedImage) {
    }

    protected abstract void R(@h Drawable drawable);

    protected abstract void T(@h T image);

    public void U(com.facebook.drawee.controller.c<? super INFO> controllerListener) {
        j.i(controllerListener);
        com.facebook.drawee.controller.c<INFO> cVar = this.f11364g;
        if (cVar instanceof c) {
            ((c) cVar).m(controllerListener);
        } else if (cVar == controllerListener) {
            this.f11364g = null;
        }
    }

    public void V(i1.c<INFO> controllerListener2) {
        this.f11365h.A(controllerListener2);
    }

    @Override // com.facebook.drawee.gestures.a.InterfaceC0091a
    public boolean a() {
        if (p0.a.R(2)) {
            p0.a.W(f11357z, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.f11369l);
        }
        if (j0()) {
            this.f11361d.d();
            this.f11367j.reset();
            k0();
            return true;
        }
        return false;
    }

    protected void a0(com.facebook.datasource.d<T> dataSource, @h INFO info) {
        s().e(this.f11369l, this.f11370m);
        t().i(this.f11369l, this.f11370m, K(dataSource, info, D()));
    }

    @Override // z0.a
    public void c() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onAttach");
        }
        if (p0.a.R(2)) {
            p0.a.X(f11357z, "controller %x %s: onAttach: %s", Integer.valueOf(System.identityHashCode(this)), this.f11369l, this.f11372o ? "request already submitted" : "request needs submit");
        }
        this.f11358a.c(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        j.i(this.f11367j);
        this.f11359b.a(this);
        this.f11371n = true;
        if (!this.f11372o) {
            k0();
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c0(@h Drawable controllerOverlay) {
        this.f11368k = controllerOverlay;
        z0.c cVar = this.f11367j;
        if (cVar != null) {
            cVar.f(controllerOverlay);
        }
    }

    @Override // z0.a
    public void d(@h String contentDescription) {
        this.f11376s = contentDescription;
    }

    public void d0(@h d controllerViewportVisibilityListener) {
        this.f11363f = controllerViewportVisibilityListener;
    }

    @Override // z0.a
    public void e() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#onDetach");
        }
        if (p0.a.R(2)) {
            p0.a.W(f11357z, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.f11369l);
        }
        this.f11358a.c(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
        this.f11371n = false;
        this.f11359b.d(this);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e0(@h com.facebook.drawee.gestures.a gestureDetector) {
        this.f11362e = gestureDetector;
        if (gestureDetector != null) {
            gestureDetector.f(this);
        }
    }

    @Override // z0.a
    @h
    public z0.b f() {
        return this.f11367j;
    }

    public void f0(final f loggingListener) {
        this.f11366i = loggingListener;
    }

    @Override // z0.a
    @h
    public Animatable g() {
        Drawable drawable = this.f11380w;
        if (drawable instanceof Animatable) {
            return (Animatable) drawable;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g0(boolean enabled) {
        this.f11375r = enabled;
    }

    @Override // z0.a
    @h
    public String getContentDescription() {
        return this.f11376s;
    }

    @Override // z0.a
    public void h(boolean isVisibleInViewportHint) {
        d dVar = this.f11363f;
        if (dVar != null) {
            if (isVisibleInViewportHint && !this.f11373p) {
                dVar.b(this.f11369l);
            } else if (!isVisibleInViewportHint && this.f11373p) {
                dVar.a(this.f11369l);
            }
        }
        this.f11373p = isVisibleInViewportHint;
    }

    @Override // z0.a
    public void i(@h z0.b hierarchy) {
        if (p0.a.R(2)) {
            p0.a.X(f11357z, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.f11369l, hierarchy);
        }
        this.f11358a.c(hierarchy != null ? DraweeEventTracker.Event.ON_SET_HIERARCHY : DraweeEventTracker.Event.ON_CLEAR_HIERARCHY);
        if (this.f11372o) {
            this.f11359b.a(this);
            release();
        }
        z0.c cVar = this.f11367j;
        if (cVar != null) {
            cVar.f(null);
            this.f11367j = null;
        }
        if (hierarchy != null) {
            j.d(Boolean.valueOf(hierarchy instanceof z0.c));
            z0.c cVar2 = (z0.c) hierarchy;
            this.f11367j = cVar2;
            cVar2.f(this.f11368k);
        }
        if (this.f11366i != null) {
            h0();
        }
    }

    protected boolean i0() {
        return j0();
    }

    protected void k0() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#submitRequest");
        }
        T q9 = q();
        if (q9 != null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("AbstractDraweeController#submitRequest->cache");
            }
            this.f11377t = null;
            this.f11372o = true;
            this.f11374q = false;
            this.f11358a.c(DraweeEventTracker.Event.ON_SUBMIT_CACHE_HIT);
            a0(this.f11377t, B(q9));
            O(this.f11369l, q9);
            P(this.f11369l, this.f11377t, q9, 1.0f, true, true, true);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        this.f11358a.c(DraweeEventTracker.Event.ON_DATASOURCE_SUBMIT);
        this.f11367j.c(0.0f, true);
        this.f11372o = true;
        this.f11374q = false;
        com.facebook.datasource.d<T> v9 = v();
        this.f11377t = v9;
        a0(v9, null);
        if (p0.a.R(2)) {
            p0.a.X(f11357z, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.f11369l, Integer.valueOf(System.identityHashCode(this.f11377t)));
        }
        this.f11377t.f(new b(this.f11369l, this.f11377t.d()), this.f11360c);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void n(com.facebook.drawee.controller.c<? super INFO> controllerListener) {
        j.i(controllerListener);
        com.facebook.drawee.controller.c<INFO> cVar = this.f11364g;
        if (cVar instanceof c) {
            ((c) cVar).g(controllerListener);
        } else if (cVar != null) {
            this.f11364g = c.n(cVar, controllerListener);
        } else {
            this.f11364g = controllerListener;
        }
    }

    public void o(i1.c<INFO> controllerListener2) {
        this.f11365h.r(controllerListener2);
    }

    @Override // z0.a
    public boolean onTouchEvent(MotionEvent event) {
        if (p0.a.R(2)) {
            p0.a.X(f11357z, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.f11369l, event);
        }
        com.facebook.drawee.gestures.a aVar = this.f11362e;
        if (aVar == null) {
            return false;
        }
        if (aVar.b() || i0()) {
            this.f11362e.d(event);
            return true;
        }
        return false;
    }

    protected abstract Drawable p(T image);

    @h
    protected T q() {
        return null;
    }

    public Object r() {
        return this.f11370m;
    }

    @Override // com.facebook.drawee.components.a.InterfaceC0088a
    public void release() {
        this.f11358a.c(DraweeEventTracker.Event.ON_RELEASE_CONTROLLER);
        com.facebook.drawee.components.c cVar = this.f11361d;
        if (cVar != null) {
            cVar.e();
        }
        com.facebook.drawee.gestures.a aVar = this.f11362e;
        if (aVar != null) {
            aVar.e();
        }
        z0.c cVar2 = this.f11367j;
        if (cVar2 != null) {
            cVar2.reset();
        }
        S();
    }

    protected com.facebook.drawee.controller.c<INFO> s() {
        com.facebook.drawee.controller.c<INFO> cVar = this.f11364g;
        return cVar == null ? com.facebook.drawee.controller.b.g() : cVar;
    }

    protected i1.c<INFO> t() {
        return this.f11365h;
    }

    public String toString() {
        return com.facebook.common.internal.i.e(this).g("isAttached", this.f11371n).g("isRequestSubmitted", this.f11372o).g("hasFetchFailed", this.f11374q).d("fetchedImage", A(this.f11378u)).f("events", this.f11358a.toString()).toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public Drawable u() {
        return this.f11368k;
    }

    protected abstract com.facebook.datasource.d<T> v();

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public com.facebook.drawee.gestures.a x() {
        return this.f11362e;
    }

    public String y() {
        return this.f11369l;
    }

    protected String z(@h T image) {
        return image != null ? image.getClass().getSimpleName() : "<null>";
    }
}
