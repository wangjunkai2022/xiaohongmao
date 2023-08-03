package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableSet;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.image.EncodedImageOrigin;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: BaseProducerContext.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d implements s0 {

    /* renamed from: o  reason: collision with root package name */
    private static final String f12920o = "default";

    /* renamed from: p  reason: collision with root package name */
    public static final Set<String> f12921p = ImmutableSet.of((Object[]) new String[]{"id", s0.a.f13226h0});

    /* renamed from: a  reason: collision with root package name */
    private final ImageRequest f12922a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12923b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private final String f12924c;

    /* renamed from: d  reason: collision with root package name */
    private final u0 f12925d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f12926e;

    /* renamed from: f  reason: collision with root package name */
    private final ImageRequest.RequestLevel f12927f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Object> f12928g;
    @s7.a("this")

    /* renamed from: h  reason: collision with root package name */
    private boolean f12929h;
    @s7.a("this")

    /* renamed from: i  reason: collision with root package name */
    private Priority f12930i;
    @s7.a("this")

    /* renamed from: j  reason: collision with root package name */
    private boolean f12931j;
    @s7.a("this")

    /* renamed from: k  reason: collision with root package name */
    private boolean f12932k;
    @s7.a("this")

    /* renamed from: l  reason: collision with root package name */
    private final List<t0> f12933l;

    /* renamed from: m  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.j f12934m;

    /* renamed from: n  reason: collision with root package name */
    private EncodedImageOrigin f12935n;

    public d(ImageRequest imageRequest, String id, u0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.j imagePipelineConfig) {
        this(imageRequest, id, null, producerListener, callerContext, lowestPermittedRequestLevel, isPrefetch, isIntermediateResultExpected, priority, imagePipelineConfig);
    }

    public static void a(@r7.h List<t0> callbacks) {
        if (callbacks == null) {
            return;
        }
        for (t0 t0Var : callbacks) {
            t0Var.b();
        }
    }

    public static void b(@r7.h List<t0> callbacks) {
        if (callbacks == null) {
            return;
        }
        for (t0 t0Var : callbacks) {
            t0Var.a();
        }
    }

    public static void t(@r7.h List<t0> callbacks) {
        if (callbacks == null) {
            return;
        }
        for (t0 t0Var : callbacks) {
            t0Var.d();
        }
    }

    public static void u(@r7.h List<t0> callbacks) {
        if (callbacks == null) {
            return;
        }
        for (t0 t0Var : callbacks) {
            t0Var.c();
        }
    }

    @r7.h
    public synchronized List<t0> A(Priority priority) {
        if (priority == this.f12930i) {
            return null;
        }
        this.f12930i = priority;
        return new ArrayList(this.f12933l);
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public ImageRequest c() {
        return this.f12922a;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public Object d() {
        return this.f12926e;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public void e(String key, @r7.h Object value) {
        if (f12921p.contains(key)) {
            return;
        }
        this.f12928g.put(key, value);
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public void f(t0 callbacks) {
        boolean z9;
        synchronized (this) {
            this.f12933l.add(callbacks);
            z9 = this.f12932k;
        }
        if (z9) {
            callbacks.b();
        }
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public com.facebook.imagepipeline.core.j g() {
        return this.f12934m;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public Map<String, Object> getExtras() {
        return this.f12928g;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public String getId() {
        return this.f12923b;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public synchronized Priority getPriority() {
        return this.f12930i;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public void h(@r7.h String origin, @r7.h String subcategory) {
        this.f12928g.put("origin", origin);
        this.f12928g.put(s0.a.f13225g0, subcategory);
    }

    @Override // com.facebook.imagepipeline.producers.s0
    @r7.h
    public String i() {
        return this.f12924c;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public void j(@r7.h String origin) {
        h(origin, "default");
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public u0 k() {
        return this.f12925d;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public synchronized boolean l() {
        return this.f12931j;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    @r7.h
    public <E> E m(String key, @r7.h E valueIfNotFound) {
        E e4 = (E) this.f12928g.get(key);
        return e4 == null ? valueIfNotFound : e4;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public EncodedImageOrigin n() {
        return this.f12935n;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public void o(EncodedImageOrigin encodedImageOrigin) {
        this.f12935n = encodedImageOrigin;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public void p(@r7.h Map<String, ?> extras) {
        if (extras == null) {
            return;
        }
        for (Map.Entry<String, ?> entry : extras.entrySet()) {
            e(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public synchronized boolean q() {
        return this.f12929h;
    }

    @Override // com.facebook.imagepipeline.producers.s0
    @r7.h
    public <T> T r(String key) {
        return (T) this.f12928g.get(key);
    }

    @Override // com.facebook.imagepipeline.producers.s0
    public ImageRequest.RequestLevel s() {
        return this.f12927f;
    }

    public void v() {
        a(w());
    }

    @r7.h
    public synchronized List<t0> w() {
        if (this.f12932k) {
            return null;
        }
        this.f12932k = true;
        return new ArrayList(this.f12933l);
    }

    public synchronized boolean x() {
        return this.f12932k;
    }

    @r7.h
    public synchronized List<t0> y(boolean isIntermediateResultExpected) {
        if (isIntermediateResultExpected == this.f12931j) {
            return null;
        }
        this.f12931j = isIntermediateResultExpected;
        return new ArrayList(this.f12933l);
    }

    @r7.h
    public synchronized List<t0> z(boolean isPrefetch) {
        if (isPrefetch == this.f12929h) {
            return null;
        }
        this.f12929h = isPrefetch;
        return new ArrayList(this.f12933l);
    }

    public d(ImageRequest imageRequest, String id, @r7.h String uiComponentId, u0 producerListener, Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevel, boolean isPrefetch, boolean isIntermediateResultExpected, Priority priority, com.facebook.imagepipeline.core.j imagePipelineConfig) {
        this.f12935n = EncodedImageOrigin.NOT_SET;
        this.f12922a = imageRequest;
        this.f12923b = id;
        HashMap hashMap = new HashMap();
        this.f12928g = hashMap;
        hashMap.put("id", id);
        hashMap.put(s0.a.f13226h0, imageRequest == null ? "null-request" : imageRequest.w());
        this.f12924c = uiComponentId;
        this.f12925d = producerListener;
        this.f12926e = callerContext;
        this.f12927f = lowestPermittedRequestLevel;
        this.f12929h = isPrefetch;
        this.f12930i = priority;
        this.f12931j = isIntermediateResultExpected;
        this.f12932k = false;
        this.f12933l = new ArrayList();
        this.f12934m = imagePipelineConfig;
    }
}
