package com.facebook.imagepipeline.core;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.j;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.cache.v;
import com.facebook.imagepipeline.cache.y;
import com.facebook.imagepipeline.core.k;
import com.facebook.imagepipeline.memory.d0;
import com.facebook.imagepipeline.memory.e0;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.x;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import t0.b;

/* compiled from: ImagePipelineConfig.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class i implements j {
    private static c K = new c(null);
    private final com.facebook.cache.disk.c A;
    @r7.h
    private final com.facebook.imagepipeline.decoder.c B;
    private final k C;
    private final boolean D;
    @r7.h
    private final l0.a E;
    private final m1.a F;
    @r7.h
    private final u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> G;
    @r7.h
    private final u<com.facebook.cache.common.c, PooledByteBuffer> H;
    @r7.h
    private final com.facebook.common.executors.g I;
    private final com.facebook.imagepipeline.cache.b J;

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap.Config f12267a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.internal.m<v> f12268b;

    /* renamed from: c  reason: collision with root package name */
    private final u.a f12269c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private final j.b<com.facebook.cache.common.c> f12270d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f12271e;

    /* renamed from: f  reason: collision with root package name */
    private final Context f12272f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f12273g;

    /* renamed from: h  reason: collision with root package name */
    private final g f12274h;

    /* renamed from: i  reason: collision with root package name */
    private final com.facebook.common.internal.m<v> f12275i;

    /* renamed from: j  reason: collision with root package name */
    private final f f12276j;

    /* renamed from: k  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.q f12277k;
    @r7.h

    /* renamed from: l  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.b f12278l;
    @r7.h

    /* renamed from: m  reason: collision with root package name */
    private final s1.d f12279m;
    @r7.h

    /* renamed from: n  reason: collision with root package name */
    private final Integer f12280n;

    /* renamed from: o  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f12281o;

    /* renamed from: p  reason: collision with root package name */
    private final com.facebook.cache.disk.c f12282p;

    /* renamed from: q  reason: collision with root package name */
    private final com.facebook.common.memory.c f12283q;

    /* renamed from: r  reason: collision with root package name */
    private final int f12284r;

    /* renamed from: s  reason: collision with root package name */
    private final l0 f12285s;

    /* renamed from: t  reason: collision with root package name */
    private final int f12286t;
    @r7.h

    /* renamed from: u  reason: collision with root package name */
    private final com.facebook.imagepipeline.bitmaps.f f12287u;

    /* renamed from: v  reason: collision with root package name */
    private final e0 f12288v;

    /* renamed from: w  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.d f12289w;

    /* renamed from: x  reason: collision with root package name */
    private final Set<q1.f> f12290x;

    /* renamed from: y  reason: collision with root package name */
    private final Set<q1.e> f12291y;

    /* renamed from: z  reason: collision with root package name */
    private final boolean f12292z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipelineConfig.java */
    /* loaded from: classes.dex */
    public class a implements com.facebook.common.internal.m<Boolean> {
        a() {
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public Boolean get() {
            return Boolean.TRUE;
        }
    }

    /* compiled from: ImagePipelineConfig.java */
    /* loaded from: classes.dex */
    public static class b {
        @r7.h
        private com.facebook.imagepipeline.decoder.c A;
        private int B;
        private final k.b C;
        private boolean D;
        @r7.h
        private l0.a E;
        private m1.a F;
        @r7.h
        private u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> G;
        @r7.h
        private u<com.facebook.cache.common.c, PooledByteBuffer> H;
        @r7.h
        private com.facebook.common.executors.g I;
        @r7.h
        private com.facebook.imagepipeline.cache.b J;
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        private Bitmap.Config f12294a;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        private com.facebook.common.internal.m<v> f12295b;
        @r7.h

        /* renamed from: c  reason: collision with root package name */
        private j.b<com.facebook.cache.common.c> f12296c;
        @r7.h

        /* renamed from: d  reason: collision with root package name */
        private u.a f12297d;
        @r7.h

        /* renamed from: e  reason: collision with root package name */
        private com.facebook.imagepipeline.cache.g f12298e;

        /* renamed from: f  reason: collision with root package name */
        private final Context f12299f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f12300g;
        @r7.h

        /* renamed from: h  reason: collision with root package name */
        private com.facebook.common.internal.m<v> f12301h;
        @r7.h

        /* renamed from: i  reason: collision with root package name */
        private f f12302i;
        @r7.h

        /* renamed from: j  reason: collision with root package name */
        private com.facebook.imagepipeline.cache.q f12303j;
        @r7.h

        /* renamed from: k  reason: collision with root package name */
        private com.facebook.imagepipeline.decoder.b f12304k;
        @r7.h

        /* renamed from: l  reason: collision with root package name */
        private s1.d f12305l;
        @r7.h

        /* renamed from: m  reason: collision with root package name */
        private Integer f12306m;
        @r7.h

        /* renamed from: n  reason: collision with root package name */
        private com.facebook.common.internal.m<Boolean> f12307n;
        @r7.h

        /* renamed from: o  reason: collision with root package name */
        private com.facebook.cache.disk.c f12308o;
        @r7.h

        /* renamed from: p  reason: collision with root package name */
        private com.facebook.common.memory.c f12309p;
        @r7.h

        /* renamed from: q  reason: collision with root package name */
        private Integer f12310q;
        @r7.h

        /* renamed from: r  reason: collision with root package name */
        private l0 f12311r;
        @r7.h

        /* renamed from: s  reason: collision with root package name */
        private com.facebook.imagepipeline.bitmaps.f f12312s;
        @r7.h

        /* renamed from: t  reason: collision with root package name */
        private e0 f12313t;
        @r7.h

        /* renamed from: u  reason: collision with root package name */
        private com.facebook.imagepipeline.decoder.d f12314u;
        @r7.h

        /* renamed from: v  reason: collision with root package name */
        private Set<q1.f> f12315v;
        @r7.h

        /* renamed from: w  reason: collision with root package name */
        private Set<q1.e> f12316w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f12317x;
        @r7.h

        /* renamed from: y  reason: collision with root package name */
        private com.facebook.cache.disk.c f12318y;
        @r7.h

        /* renamed from: z  reason: collision with root package name */
        private g f12319z;

        /* synthetic */ b(Context context, a aVar) {
            this(context);
        }

        public i K() {
            return new i(this, null);
        }

        public k.b L() {
            return this.C;
        }

        @r7.h
        public com.facebook.imagepipeline.cache.b M() {
            return this.J;
        }

        @r7.h
        public Integer N() {
            return this.f12306m;
        }

        @r7.h
        public Integer O() {
            return this.f12310q;
        }

        public boolean P() {
            return this.D;
        }

        public boolean Q() {
            return this.f12300g;
        }

        public b R(@r7.h u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache) {
            this.G = bitmapMemoryCache;
            return this;
        }

        public b S(j.b<com.facebook.cache.common.c> bitmapMemoryCacheEntryStateObserver) {
            this.f12296c = bitmapMemoryCacheEntryStateObserver;
            return this;
        }

        public b T(@r7.h com.facebook.imagepipeline.cache.b bitmapMemoryCacheFactory) {
            this.J = bitmapMemoryCacheFactory;
            return this;
        }

        public b U(com.facebook.common.internal.m<v> bitmapMemoryCacheParamsSupplier) {
            this.f12295b = (com.facebook.common.internal.m) com.facebook.common.internal.j.i(bitmapMemoryCacheParamsSupplier);
            return this;
        }

        public b V(u.a trimStrategy) {
            this.f12297d = trimStrategy;
            return this;
        }

        public b W(Bitmap.Config config) {
            this.f12294a = config;
            return this;
        }

        public b X(com.facebook.imagepipeline.cache.g cacheKeyFactory) {
            this.f12298e = cacheKeyFactory;
            return this;
        }

        public b Y(l0.a callerContextVerifier) {
            this.E = callerContextVerifier;
            return this;
        }

        public b Z(m1.a closeableReferenceLeakTracker) {
            this.F = closeableReferenceLeakTracker;
            return this;
        }

        public b a0(boolean diskCacheEnabled) {
            this.D = diskCacheEnabled;
            return this;
        }

        public b b0(boolean downsampleEnabled) {
            this.f12300g = downsampleEnabled;
            return this;
        }

        public b c0(@r7.h u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache) {
            this.H = encodedMemoryCache;
            return this;
        }

        public b d0(com.facebook.common.internal.m<v> encodedMemoryCacheParamsSupplier) {
            this.f12301h = (com.facebook.common.internal.m) com.facebook.common.internal.j.i(encodedMemoryCacheParamsSupplier);
            return this;
        }

        public b e0(@r7.h com.facebook.common.executors.g serialExecutorService) {
            this.I = serialExecutorService;
            return this;
        }

        public b f0(f executorSupplier) {
            this.f12302i = executorSupplier;
            return this;
        }

        public b g0(g fileCacheFactory) {
            this.f12319z = fileCacheFactory;
            return this;
        }

        public b h0(int httpConnectionTimeoutMs) {
            this.B = httpConnectionTimeoutMs;
            return this;
        }

        public b i0(com.facebook.imagepipeline.cache.q imageCacheStatsTracker) {
            this.f12303j = imageCacheStatsTracker;
            return this;
        }

        public b j0(com.facebook.imagepipeline.decoder.b imageDecoder) {
            this.f12304k = imageDecoder;
            return this;
        }

        public b k0(com.facebook.imagepipeline.decoder.c imageDecoderConfig) {
            this.A = imageDecoderConfig;
            return this;
        }

        public b l0(s1.d imageTranscoderFactory) {
            this.f12305l = imageTranscoderFactory;
            return this;
        }

        public b m0(int imageTranscoderType) {
            this.f12306m = Integer.valueOf(imageTranscoderType);
            return this;
        }

        public b n0(com.facebook.common.internal.m<Boolean> isPrefetchEnabledSupplier) {
            this.f12307n = isPrefetchEnabledSupplier;
            return this;
        }

        public b o0(com.facebook.cache.disk.c mainDiskCacheConfig) {
            this.f12308o = mainDiskCacheConfig;
            return this;
        }

        public b p0(int memoryChunkType) {
            this.f12310q = Integer.valueOf(memoryChunkType);
            return this;
        }

        public b q0(com.facebook.common.memory.c memoryTrimmableRegistry) {
            this.f12309p = memoryTrimmableRegistry;
            return this;
        }

        public b r0(l0 networkFetcher) {
            this.f12311r = networkFetcher;
            return this;
        }

        public b s0(com.facebook.imagepipeline.bitmaps.f platformBitmapFactory) {
            this.f12312s = platformBitmapFactory;
            return this;
        }

        public b t0(e0 poolFactory) {
            this.f12313t = poolFactory;
            return this;
        }

        public b u0(com.facebook.imagepipeline.decoder.d progressiveJpegConfig) {
            this.f12314u = progressiveJpegConfig;
            return this;
        }

        public b v0(Set<q1.e> requestListeners) {
            this.f12316w = requestListeners;
            return this;
        }

        public b w0(Set<q1.f> requestListeners) {
            this.f12315v = requestListeners;
            return this;
        }

        public b x0(boolean resizeAndRotateEnabledForNetwork) {
            this.f12317x = resizeAndRotateEnabledForNetwork;
            return this;
        }

        public b y0(com.facebook.cache.disk.c smallImageDiskCacheConfig) {
            this.f12318y = smallImageDiskCacheConfig;
            return this;
        }

        private b(Context context) {
            this.f12300g = false;
            this.f12306m = null;
            this.f12310q = null;
            this.f12317x = true;
            this.B = -1;
            this.C = new k.b(this);
            this.D = true;
            this.F = new m1.b();
            this.f12299f = (Context) com.facebook.common.internal.j.i(context);
        }
    }

    /* compiled from: ImagePipelineConfig.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private boolean f12320a;

        /* synthetic */ c(a aVar) {
            this();
        }

        public boolean a() {
            return this.f12320a;
        }

        public void b(boolean progressiveRenderingEnabled) {
            this.f12320a = progressiveRenderingEnabled;
        }

        private c() {
            this.f12320a = false;
        }
    }

    /* synthetic */ i(b bVar, a aVar) {
        this(bVar);
    }

    public static c I() {
        return K;
    }

    private static com.facebook.cache.disk.c J(final Context context) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DiskCacheConfig.getDefaultMainDiskCacheConfig");
            }
            return com.facebook.cache.disk.c.n(context).n();
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    @r7.h
    private static s1.d K(final b builder) {
        if (builder.f12305l != null && builder.f12306m != null) {
            throw new IllegalStateException("You can't define a custom ImageTranscoderFactory and provide an ImageTranscoderType");
        }
        if (builder.f12305l != null) {
            return builder.f12305l;
        }
        return null;
    }

    private static int L(final b builder, final k imagePipelineExperiments) {
        if (builder.f12310q != null) {
            return builder.f12310q.intValue();
        }
        if (imagePipelineExperiments.g() != 2 || Build.VERSION.SDK_INT < 27) {
            if (imagePipelineExperiments.g() == 1) {
                return 1;
            }
            imagePipelineExperiments.g();
            return 0;
        }
        return 2;
    }

    public static b M(Context context) {
        return new b(context, null);
    }

    @VisibleForTesting
    static void N() {
        K = new c(null);
    }

    private static void O(final t0.b webpBitmapFactory, final k imagePipelineExperiments, final t0.a bitmapCreator) {
        t0.c.f93752d = webpBitmapFactory;
        b.a n9 = imagePipelineExperiments.n();
        if (n9 != null) {
            webpBitmapFactory.b(n9);
        }
        if (bitmapCreator != null) {
            webpBitmapFactory.e(bitmapCreator);
        }
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.imagepipeline.cache.g A() {
        return this.f12271e;
    }

    @Override // com.facebook.imagepipeline.core.j
    public boolean B() {
        return this.f12292z;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.imagepipeline.cache.q C() {
        return this.f12277k;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> D() {
        return this.G;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.common.memory.c E() {
        return this.f12283q;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public l0.a F() {
        return this.E;
    }

    @Override // com.facebook.imagepipeline.core.j
    public k G() {
        return this.C;
    }

    @Override // com.facebook.imagepipeline.core.j
    public f H() {
        return this.f12276j;
    }

    @Override // com.facebook.imagepipeline.core.j
    public Set<q1.e> a() {
        return Collections.unmodifiableSet(this.f12291y);
    }

    @Override // com.facebook.imagepipeline.core.j
    public Bitmap.Config b() {
        return this.f12267a;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.common.internal.m<Boolean> c() {
        return this.f12281o;
    }

    @Override // com.facebook.imagepipeline.core.j
    public l0 d() {
        return this.f12285s;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public u<com.facebook.cache.common.c, PooledByteBuffer> e() {
        return this.H;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.cache.disk.c f() {
        return this.f12282p;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public com.facebook.imagepipeline.bitmaps.f g() {
        return this.f12287u;
    }

    @Override // com.facebook.imagepipeline.core.j
    public Context getContext() {
        return this.f12272f;
    }

    @Override // com.facebook.imagepipeline.core.j
    public Set<q1.f> h() {
        return Collections.unmodifiableSet(this.f12290x);
    }

    @Override // com.facebook.imagepipeline.core.j
    public u.a i() {
        return this.f12269c;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.imagepipeline.decoder.d j() {
        return this.f12289w;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.cache.disk.c k() {
        return this.A;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public j.b<com.facebook.cache.common.c> l() {
        return this.f12270d;
    }

    @Override // com.facebook.imagepipeline.core.j
    public boolean m() {
        return this.f12273g;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public com.facebook.common.executors.g n() {
        return this.I;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public Integer o() {
        return this.f12280n;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public s1.d p() {
        return this.f12279m;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public com.facebook.imagepipeline.decoder.c q() {
        return this.B;
    }

    @Override // com.facebook.imagepipeline.core.j
    public boolean r() {
        return this.D;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.common.internal.m<v> s() {
        return this.f12268b;
    }

    @Override // com.facebook.imagepipeline.core.j
    @r7.h
    public com.facebook.imagepipeline.decoder.b t() {
        return this.f12278l;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.common.internal.m<v> u() {
        return this.f12275i;
    }

    @Override // com.facebook.imagepipeline.core.j
    public e0 v() {
        return this.f12288v;
    }

    @Override // com.facebook.imagepipeline.core.j
    public int w() {
        return this.f12284r;
    }

    @Override // com.facebook.imagepipeline.core.j
    public g x() {
        return this.f12274h;
    }

    @Override // com.facebook.imagepipeline.core.j
    public m1.a y() {
        return this.F;
    }

    @Override // com.facebook.imagepipeline.core.j
    public com.facebook.imagepipeline.cache.b z() {
        return this.J;
    }

    private i(b builder) {
        com.facebook.common.internal.m<v> mVar;
        com.facebook.imagepipeline.cache.g gVar;
        com.facebook.imagepipeline.cache.q qVar;
        com.facebook.cache.disk.c cVar;
        com.facebook.common.memory.c cVar2;
        e0 e0Var;
        t0.b j4;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig()");
        }
        k t9 = builder.C.t();
        this.C = t9;
        if (builder.f12295b == null) {
            mVar = new com.facebook.imagepipeline.cache.l((ActivityManager) com.facebook.common.internal.j.i(builder.f12299f.getSystemService("activity")));
        } else {
            mVar = builder.f12295b;
        }
        this.f12268b = mVar;
        this.f12269c = builder.f12297d == null ? new com.facebook.imagepipeline.cache.d() : builder.f12297d;
        this.f12270d = builder.f12296c;
        this.f12267a = builder.f12294a == null ? Bitmap.Config.ARGB_8888 : builder.f12294a;
        if (builder.f12298e == null) {
            gVar = com.facebook.imagepipeline.cache.m.f();
        } else {
            gVar = builder.f12298e;
        }
        this.f12271e = gVar;
        this.f12272f = (Context) com.facebook.common.internal.j.i(builder.f12299f);
        this.f12274h = builder.f12319z == null ? new com.facebook.imagepipeline.core.c(new e()) : builder.f12319z;
        this.f12273g = builder.f12300g;
        this.f12275i = builder.f12301h == null ? new com.facebook.imagepipeline.cache.n() : builder.f12301h;
        if (builder.f12303j == null) {
            qVar = y.o();
        } else {
            qVar = builder.f12303j;
        }
        this.f12277k = qVar;
        this.f12278l = builder.f12304k;
        this.f12279m = K(builder);
        this.f12280n = builder.f12306m;
        this.f12281o = builder.f12307n == null ? new a() : builder.f12307n;
        if (builder.f12308o == null) {
            cVar = J(builder.f12299f);
        } else {
            cVar = builder.f12308o;
        }
        this.f12282p = cVar;
        if (builder.f12309p == null) {
            cVar2 = com.facebook.common.memory.d.c();
        } else {
            cVar2 = builder.f12309p;
        }
        this.f12283q = cVar2;
        this.f12284r = L(builder, t9);
        int i4 = builder.B < 0 ? 30000 : builder.B;
        this.f12286t = i4;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig->mNetworkFetcher");
        }
        this.f12285s = builder.f12311r == null ? new x(i4) : builder.f12311r;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        this.f12287u = builder.f12312s;
        if (builder.f12313t == null) {
            e0Var = new e0(d0.n().m());
        } else {
            e0Var = builder.f12313t;
        }
        this.f12288v = e0Var;
        this.f12289w = builder.f12314u == null ? new com.facebook.imagepipeline.decoder.f() : builder.f12314u;
        this.f12290x = builder.f12315v == null ? new HashSet<>() : builder.f12315v;
        this.f12291y = builder.f12316w == null ? new HashSet<>() : builder.f12316w;
        this.f12292z = builder.f12317x;
        this.A = builder.f12318y != null ? builder.f12318y : cVar;
        this.B = builder.A;
        this.f12276j = builder.f12302i == null ? new com.facebook.imagepipeline.core.b(e0Var.e()) : builder.f12302i;
        this.D = builder.D;
        this.E = builder.E;
        this.F = builder.F;
        this.G = builder.G;
        this.J = builder.J == null ? new com.facebook.imagepipeline.cache.h() : builder.J;
        this.H = builder.H;
        this.I = builder.I;
        t0.b m9 = t9.m();
        if (m9 != null) {
            O(m9, t9, new com.facebook.imagepipeline.bitmaps.d(v()));
        } else if (t9.z() && t0.c.f93749a && (j4 = t0.c.j()) != null) {
            O(j4, t9, new com.facebook.imagepipeline.bitmaps.d(v()));
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }
}
