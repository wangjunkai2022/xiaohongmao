package com.facebook.imagepipeline.core;

import android.content.Context;
import android.os.Build;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.s;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.producers.d1;
import com.facebook.imagepipeline.producers.e1;
import com.facebook.imagepipeline.producers.v;

/* compiled from: ImagePipelineFactory.java */
@s7.c
/* loaded from: classes.dex */
public class l {

    /* renamed from: t  reason: collision with root package name */
    private static final Class<?> f12373t = l.class;

    /* renamed from: u  reason: collision with root package name */
    private static l f12374u;

    /* renamed from: v  reason: collision with root package name */
    private static boolean f12375v;

    /* renamed from: w  reason: collision with root package name */
    private static h f12376w;

    /* renamed from: a  reason: collision with root package name */
    private final d1 f12377a;

    /* renamed from: b  reason: collision with root package name */
    private final j f12378b;

    /* renamed from: c  reason: collision with root package name */
    private final a f12379c;

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12380d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.r<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12381e;

    /* renamed from: f  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.j<com.facebook.cache.common.c, PooledByteBuffer> f12382f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.r<com.facebook.cache.common.c, PooledByteBuffer> f12383g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.f f12384h;
    @r7.h

    /* renamed from: i  reason: collision with root package name */
    private com.facebook.cache.disk.i f12385i;
    @r7.h

    /* renamed from: j  reason: collision with root package name */
    private com.facebook.imagepipeline.decoder.b f12386j;
    @r7.h

    /* renamed from: k  reason: collision with root package name */
    private h f12387k;
    @r7.h

    /* renamed from: l  reason: collision with root package name */
    private s1.d f12388l;
    @r7.h

    /* renamed from: m  reason: collision with root package name */
    private q f12389m;
    @r7.h

    /* renamed from: n  reason: collision with root package name */
    private r f12390n;
    @r7.h

    /* renamed from: o  reason: collision with root package name */
    private com.facebook.imagepipeline.cache.f f12391o;
    @r7.h

    /* renamed from: p  reason: collision with root package name */
    private com.facebook.cache.disk.i f12392p;
    @r7.h

    /* renamed from: q  reason: collision with root package name */
    private com.facebook.imagepipeline.bitmaps.f f12393q;
    @r7.h

    /* renamed from: r  reason: collision with root package name */
    private com.facebook.imagepipeline.platform.d f12394r;
    @r7.h

    /* renamed from: s  reason: collision with root package name */
    private com.facebook.imagepipeline.animated.factory.a f12395s;

    public l(j config) {
        d1 e1Var;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig()");
        }
        j jVar = (j) com.facebook.common.internal.j.i(config);
        this.f12378b = jVar;
        if (jVar.G().u()) {
            e1Var = new v(config.H().a());
        } else {
            e1Var = new e1(config.H().a());
        }
        this.f12377a = e1Var;
        com.facebook.common.references.a.J(config.G().b());
        this.f12379c = new a(config.y());
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public static synchronized void A() {
        synchronized (l.class) {
            l lVar = f12374u;
            if (lVar != null) {
                lVar.e().k(com.facebook.common.internal.a.b());
                f12374u.h().k(com.facebook.common.internal.a.b());
                f12374u = null;
            }
        }
    }

    private h a() {
        return new h(r(), this.f12378b.h(), this.f12378b.a(), this.f12378b.c(), e(), h(), m(), s(), this.f12378b.A(), this.f12377a, this.f12378b.G().i(), this.f12378b.G().w(), this.f12378b.F(), this.f12378b);
    }

    @r7.h
    private com.facebook.imagepipeline.animated.factory.a c() {
        if (this.f12395s == null) {
            this.f12395s = com.facebook.imagepipeline.animated.factory.b.a(o(), this.f12378b.H(), d(), this.f12378b.G().C(), this.f12378b.n());
        }
        return this.f12395s;
    }

    private com.facebook.imagepipeline.decoder.b i() {
        com.facebook.imagepipeline.decoder.b bVar;
        if (this.f12386j == null) {
            if (this.f12378b.t() != null) {
                this.f12386j = this.f12378b.t();
            } else {
                com.facebook.imagepipeline.animated.factory.a c10 = c();
                com.facebook.imagepipeline.decoder.b bVar2 = null;
                if (c10 != null) {
                    bVar2 = c10.c();
                    bVar = c10.b();
                } else {
                    bVar = null;
                }
                if (this.f12378b.q() == null) {
                    this.f12386j = new com.facebook.imagepipeline.decoder.a(bVar2, bVar, p());
                } else {
                    this.f12386j = new com.facebook.imagepipeline.decoder.a(bVar2, bVar, p(), this.f12378b.q().a());
                    com.facebook.imageformat.d.e().g(this.f12378b.q().b());
                }
            }
        }
        return this.f12386j;
    }

    private s1.d k() {
        if (this.f12388l == null) {
            if (this.f12378b.p() == null && this.f12378b.o() == null && this.f12378b.G().x()) {
                this.f12388l = new s1.h(this.f12378b.G().f());
            } else {
                this.f12388l = new s1.f(this.f12378b.G().f(), this.f12378b.G().l(), this.f12378b.p(), this.f12378b.o(), this.f12378b.G().t());
            }
        }
        return this.f12388l;
    }

    public static l l() {
        return (l) com.facebook.common.internal.j.j(f12374u, "ImagePipelineFactory was not initialized!");
    }

    private q q() {
        if (this.f12389m == null) {
            this.f12389m = this.f12378b.G().h().a(this.f12378b.getContext(), this.f12378b.v().l(), i(), this.f12378b.j(), this.f12378b.m(), this.f12378b.B(), this.f12378b.G().p(), this.f12378b.H(), this.f12378b.v().i(this.f12378b.w()), this.f12378b.v().j(), e(), h(), m(), s(), this.f12378b.A(), o(), this.f12378b.G().e(), this.f12378b.G().d(), this.f12378b.G().c(), this.f12378b.G().f(), f(), this.f12378b.G().E(), this.f12378b.G().j());
        }
        return this.f12389m;
    }

    private r r() {
        boolean z9 = Build.VERSION.SDK_INT >= 24 && this.f12378b.G().k();
        if (this.f12390n == null) {
            this.f12390n = new r(this.f12378b.getContext().getApplicationContext().getContentResolver(), q(), this.f12378b.d(), this.f12378b.B(), this.f12378b.G().z(), this.f12377a, this.f12378b.m(), z9, this.f12378b.G().y(), this.f12378b.r(), k(), this.f12378b.G().s(), this.f12378b.G().q(), this.f12378b.G().a());
        }
        return this.f12390n;
    }

    private com.facebook.imagepipeline.cache.f s() {
        if (this.f12391o == null) {
            this.f12391o = new com.facebook.imagepipeline.cache.f(t(), this.f12378b.v().i(this.f12378b.w()), this.f12378b.v().j(), this.f12378b.H().f(), this.f12378b.H().b(), this.f12378b.C());
        }
        return this.f12391o;
    }

    public static synchronized boolean u() {
        boolean z9;
        synchronized (l.class) {
            z9 = f12374u != null;
        }
        return z9;
    }

    public static synchronized void v(Context context) {
        synchronized (l.class) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ImagePipelineFactory#initialize");
            }
            w(i.M(context).K());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public static synchronized void w(j imagePipelineConfig) {
        synchronized (l.class) {
            if (f12374u != null) {
                p0.a.k0(f12373t, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior.");
            }
            f12374u = new l(imagePipelineConfig);
        }
    }

    public static synchronized void x(j imagePipelineConfig, boolean forceSinglePipelineInstance) {
        synchronized (l.class) {
            if (f12374u != null) {
                p0.a.k0(f12373t, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior.");
            }
            f12375v = forceSinglePipelineInstance;
            f12374u = new l(imagePipelineConfig);
        }
    }

    public static void z(l newInstance) {
        f12374u = newInstance;
    }

    @r7.h
    public n1.a b(@r7.h Context context) {
        com.facebook.imagepipeline.animated.factory.a c10 = c();
        if (c10 == null) {
            return null;
        }
        return c10.a(context);
    }

    public com.facebook.imagepipeline.cache.j<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> d() {
        if (this.f12380d == null) {
            this.f12380d = this.f12378b.z().a(this.f12378b.s(), this.f12378b.E(), this.f12378b.i(), this.f12378b.G().F(), this.f12378b.G().D(), this.f12378b.l());
        }
        return this.f12380d;
    }

    public com.facebook.imagepipeline.cache.r<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> e() {
        if (this.f12381e == null) {
            this.f12381e = s.a(d(), this.f12378b.C());
        }
        return this.f12381e;
    }

    public a f() {
        return this.f12379c;
    }

    public com.facebook.imagepipeline.cache.j<com.facebook.cache.common.c, PooledByteBuffer> g() {
        if (this.f12382f == null) {
            this.f12382f = com.facebook.imagepipeline.cache.o.a(this.f12378b.u(), this.f12378b.E());
        }
        return this.f12382f;
    }

    public com.facebook.imagepipeline.cache.r<com.facebook.cache.common.c, PooledByteBuffer> h() {
        u<com.facebook.cache.common.c, PooledByteBuffer> g4;
        if (this.f12383g == null) {
            if (this.f12378b.e() != null) {
                g4 = this.f12378b.e();
            } else {
                g4 = g();
            }
            this.f12383g = com.facebook.imagepipeline.cache.p.a(g4, this.f12378b.C());
        }
        return this.f12383g;
    }

    public h j() {
        if (f12375v) {
            if (f12376w == null) {
                h a10 = a();
                f12376w = a10;
                this.f12387k = a10;
            }
            return f12376w;
        }
        if (this.f12387k == null) {
            this.f12387k = a();
        }
        return this.f12387k;
    }

    public com.facebook.imagepipeline.cache.f m() {
        if (this.f12384h == null) {
            this.f12384h = new com.facebook.imagepipeline.cache.f(n(), this.f12378b.v().i(this.f12378b.w()), this.f12378b.v().j(), this.f12378b.H().f(), this.f12378b.H().b(), this.f12378b.C());
        }
        return this.f12384h;
    }

    public com.facebook.cache.disk.i n() {
        if (this.f12385i == null) {
            this.f12385i = this.f12378b.x().a(this.f12378b.f());
        }
        return this.f12385i;
    }

    public com.facebook.imagepipeline.bitmaps.f o() {
        if (this.f12393q == null) {
            this.f12393q = com.facebook.imagepipeline.bitmaps.g.a(this.f12378b.v(), p(), f());
        }
        return this.f12393q;
    }

    public com.facebook.imagepipeline.platform.d p() {
        if (this.f12394r == null) {
            this.f12394r = com.facebook.imagepipeline.platform.e.a(this.f12378b.v(), this.f12378b.G().v());
        }
        return this.f12394r;
    }

    public com.facebook.cache.disk.i t() {
        if (this.f12392p == null) {
            this.f12392p = this.f12378b.x().a(this.f12378b.k());
        }
        return this.f12392p;
    }

    @r7.h
    public String y() {
        return com.facebook.common.internal.i.f("ImagePipelineFactory").f("bitmapCountingMemoryCache", this.f12380d.i()).f("encodedCountingMemoryCache", this.f12382f.i()).toString();
    }
}
