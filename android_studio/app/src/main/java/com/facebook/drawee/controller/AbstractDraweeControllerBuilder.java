package com.facebook.drawee.controller;

import android.content.Context;
import android.graphics.drawable.Animatable;
import com.facebook.common.internal.i;
import com.facebook.common.internal.j;
import com.facebook.common.internal.m;
import com.facebook.datasource.g;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.infer.annotation.Nullsafe;
import i1.f;
import io.sentry.e3;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import r7.h;
import v1.u;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class AbstractDraweeControllerBuilder<BUILDER extends AbstractDraweeControllerBuilder<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements z0.d {

    /* renamed from: r  reason: collision with root package name */
    private static final c<Object> f11328r = new a();

    /* renamed from: s  reason: collision with root package name */
    private static final NullPointerException f11329s = new NullPointerException("No image request was specified!");

    /* renamed from: t  reason: collision with root package name */
    private static final AtomicLong f11330t = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    private final Context f11331a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<c> f11332b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<i1.c> f11333c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private Object f11334d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private REQUEST f11335e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private REQUEST f11336f;
    @h

    /* renamed from: g  reason: collision with root package name */
    private REQUEST[] f11337g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f11338h;
    @h

    /* renamed from: i  reason: collision with root package name */
    private m<com.facebook.datasource.d<IMAGE>> f11339i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private c<? super INFO> f11340j;
    @h

    /* renamed from: k  reason: collision with root package name */
    private f f11341k;
    @h

    /* renamed from: l  reason: collision with root package name */
    private d f11342l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f11343m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f11344n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f11345o;
    @h

    /* renamed from: p  reason: collision with root package name */
    private String f11346p;
    @h

    /* renamed from: q  reason: collision with root package name */
    private z0.a f11347q;

    /* loaded from: classes.dex */
    public enum CacheLevel {
        FULL_FETCH,
        DISK_CACHE,
        BITMAP_MEMORY_CACHE
    }

    /* loaded from: classes.dex */
    static class a extends com.facebook.drawee.controller.b<Object> {
        a() {
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void d(String id, @h Object info, @h Animatable anim) {
            if (anim != null) {
                anim.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements m<com.facebook.datasource.d<IMAGE>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z0.a f11349a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f11350b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f11351c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f11352d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ CacheLevel f11353e;

        b(final z0.a val$cacheLevel, final String val$callerContext, final Object val$imageRequest, final Object val$controllerId, final CacheLevel val$controller) {
            this.f11349a = val$cacheLevel;
            this.f11350b = val$callerContext;
            this.f11351c = val$imageRequest;
            this.f11352d = val$controllerId;
            this.f11353e = val$controller;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public com.facebook.datasource.d<IMAGE> get() {
            return AbstractDraweeControllerBuilder.this.n(this.f11349a, this.f11350b, this.f11351c, this.f11352d, this.f11353e);
        }

        public String toString() {
            return i.e(this).f(e3.b.f83149d, this.f11351c.toString()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDraweeControllerBuilder(Context context, Set<c> boundControllerListeners, Set<i1.c> boundControllerListeners2) {
        this.f11331a = context;
        this.f11332b = boundControllerListeners;
        this.f11333c = boundControllerListeners2;
        A();
    }

    private void A() {
        this.f11334d = null;
        this.f11335e = null;
        this.f11336f = null;
        this.f11337g = null;
        this.f11338h = true;
        this.f11340j = null;
        this.f11341k = null;
        this.f11342l = null;
        this.f11343m = false;
        this.f11344n = false;
        this.f11347q = null;
        this.f11346p = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String g() {
        return String.valueOf(f11330t.getAndIncrement());
    }

    protected void B(com.facebook.drawee.controller.a controller) {
        Set<c> set = this.f11332b;
        if (set != null) {
            for (c cVar : set) {
                controller.n(cVar);
            }
        }
        Set<i1.c> set2 = this.f11333c;
        if (set2 != null) {
            for (i1.c cVar2 : set2) {
                controller.o(cVar2);
            }
        }
        c<? super INFO> cVar3 = this.f11340j;
        if (cVar3 != null) {
            controller.n(cVar3);
        }
        if (this.f11344n) {
            controller.n(f11328r);
        }
    }

    protected void C(com.facebook.drawee.controller.a controller) {
        if (controller.x() == null) {
            controller.e0(com.facebook.drawee.gestures.a.c(this.f11331a));
        }
    }

    protected void D(com.facebook.drawee.controller.a controller) {
        if (this.f11343m) {
            controller.E().g(this.f11343m);
            C(controller);
        }
    }

    @u
    protected abstract com.facebook.drawee.controller.a E();

    /* JADX INFO: Access modifiers changed from: protected */
    public m<com.facebook.datasource.d<IMAGE>> F(final z0.a controller, final String controllerId) {
        m<com.facebook.datasource.d<IMAGE>> mVar = this.f11339i;
        if (mVar != null) {
            return mVar;
        }
        m<com.facebook.datasource.d<IMAGE>> mVar2 = null;
        REQUEST request = this.f11335e;
        if (request != null) {
            mVar2 = p(controller, controllerId, request);
        } else {
            REQUEST[] requestArr = this.f11337g;
            if (requestArr != null) {
                mVar2 = r(controller, controllerId, requestArr, this.f11338h);
            }
        }
        if (mVar2 != null && this.f11336f != null) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(mVar2);
            arrayList.add(p(controller, controllerId, this.f11336f));
            mVar2 = com.facebook.datasource.h.d(arrayList, false);
        }
        return mVar2 == null ? com.facebook.datasource.e.a(f11329s) : mVar2;
    }

    public BUILDER G() {
        A();
        return z();
    }

    public BUILDER H(boolean enabled) {
        this.f11344n = enabled;
        return z();
    }

    @Override // z0.d
    /* renamed from: I */
    public BUILDER d(Object callerContext) {
        this.f11334d = callerContext;
        return z();
    }

    public BUILDER J(String contentDescription) {
        this.f11346p = contentDescription;
        return z();
    }

    public BUILDER K(@h c<? super INFO> controllerListener) {
        this.f11340j = controllerListener;
        return z();
    }

    public BUILDER L(@h d controllerViewportVisibilityListener) {
        this.f11342l = controllerViewportVisibilityListener;
        return z();
    }

    public BUILDER M(@h m<com.facebook.datasource.d<IMAGE>> dataSourceSupplier) {
        this.f11339i = dataSourceSupplier;
        return z();
    }

    public BUILDER N(REQUEST[] firstAvailableImageRequests) {
        return O(firstAvailableImageRequests, true);
    }

    public BUILDER O(REQUEST[] firstAvailableImageRequests, boolean tryCacheOnlyFirst) {
        j.e(firstAvailableImageRequests == null || firstAvailableImageRequests.length > 0, "No requests specified!");
        this.f11337g = firstAvailableImageRequests;
        this.f11338h = tryCacheOnlyFirst;
        return z();
    }

    public BUILDER P(@h REQUEST imageRequest) {
        this.f11335e = imageRequest;
        return z();
    }

    public BUILDER Q(@h f loggingListener) {
        this.f11341k = loggingListener;
        return z();
    }

    public BUILDER R(REQUEST lowResImageRequest) {
        this.f11336f = lowResImageRequest;
        return z();
    }

    @Override // z0.d
    /* renamed from: S */
    public BUILDER c(@h z0.a oldController) {
        this.f11347q = oldController;
        return z();
    }

    public BUILDER T(boolean enabled) {
        this.f11345o = enabled;
        return z();
    }

    public BUILDER U(boolean enabled) {
        this.f11343m = enabled;
        return z();
    }

    protected void V() {
        boolean z9 = false;
        j.p(this.f11337g == null || this.f11335e == null, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.f11339i == null || (this.f11337g == null && this.f11335e == null && this.f11336f == null)) {
            z9 = true;
        }
        j.p(z9, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    @Override // z0.d
    /* renamed from: e */
    public com.facebook.drawee.controller.a build() {
        REQUEST request;
        V();
        if (this.f11335e == null && this.f11337g == null && (request = this.f11336f) != null) {
            this.f11335e = request;
            this.f11336f = null;
        }
        return f();
    }

    protected com.facebook.drawee.controller.a f() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("AbstractDraweeControllerBuilder#buildController");
        }
        com.facebook.drawee.controller.a E = E();
        E.g0(x());
        E.d(j());
        E.d0(m());
        D(E);
        B(E);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return E;
    }

    public boolean h() {
        return this.f11344n;
    }

    @h
    public Object i() {
        return this.f11334d;
    }

    @h
    public String j() {
        return this.f11346p;
    }

    protected Context k() {
        return this.f11331a;
    }

    @h
    public c<? super INFO> l() {
        return this.f11340j;
    }

    @h
    public d m() {
        return this.f11342l;
    }

    protected abstract com.facebook.datasource.d<IMAGE> n(final z0.a controller, final String controllerId, final REQUEST imageRequest, final Object callerContext, final CacheLevel cacheLevel);

    @h
    public m<com.facebook.datasource.d<IMAGE>> o() {
        return this.f11339i;
    }

    protected m<com.facebook.datasource.d<IMAGE>> p(final z0.a controller, String controllerId, REQUEST imageRequest) {
        return q(controller, controllerId, imageRequest, CacheLevel.FULL_FETCH);
    }

    protected m<com.facebook.datasource.d<IMAGE>> q(final z0.a controller, final String controllerId, final REQUEST imageRequest, final CacheLevel cacheLevel) {
        return new b(controller, controllerId, imageRequest, i(), cacheLevel);
    }

    protected m<com.facebook.datasource.d<IMAGE>> r(final z0.a controller, String controllerId, REQUEST[] imageRequests, boolean tryBitmapCacheOnlyFirst) {
        ArrayList arrayList = new ArrayList(imageRequests.length * 2);
        if (tryBitmapCacheOnlyFirst) {
            for (REQUEST request : imageRequests) {
                arrayList.add(q(controller, controllerId, request, CacheLevel.BITMAP_MEMORY_CACHE));
            }
        }
        for (REQUEST request2 : imageRequests) {
            arrayList.add(p(controller, controllerId, request2));
        }
        return g.b(arrayList);
    }

    @h
    public REQUEST[] s() {
        return this.f11337g;
    }

    @h
    public REQUEST t() {
        return this.f11335e;
    }

    @h
    public f u() {
        return this.f11341k;
    }

    @h
    public REQUEST v() {
        return this.f11336f;
    }

    @h
    public z0.a w() {
        return this.f11347q;
    }

    public boolean x() {
        return this.f11345o;
    }

    public boolean y() {
        return this.f11343m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final BUILDER z() {
        return this;
    }
}
