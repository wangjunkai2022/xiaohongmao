package com.facebook.imagepipeline.core;

import android.net.Uri;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.d1;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.z;
import com.facebook.imagepipeline.producers.z0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ImagePipeline.java */
@s7.d
/* loaded from: classes.dex */
public class h {

    /* renamed from: p  reason: collision with root package name */
    private static final CancellationException f12225p = new CancellationException("Prefetching is not enabled");

    /* renamed from: a  reason: collision with root package name */
    private final r f12226a;

    /* renamed from: b  reason: collision with root package name */
    private final q1.f f12227b;

    /* renamed from: c  reason: collision with root package name */
    private final q1.e f12228c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f12229d;

    /* renamed from: e  reason: collision with root package name */
    private final u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12230e;

    /* renamed from: f  reason: collision with root package name */
    private final u<com.facebook.cache.common.c, PooledByteBuffer> f12231f;

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f12232g;

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f12233h;

    /* renamed from: i  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f12234i;

    /* renamed from: j  reason: collision with root package name */
    private final d1 f12235j;

    /* renamed from: k  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f12236k;

    /* renamed from: l  reason: collision with root package name */
    private AtomicLong f12237l = new AtomicLong();

    /* renamed from: m  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f12238m;
    @r7.h

    /* renamed from: n  reason: collision with root package name */
    private final l0.a f12239n;

    /* renamed from: o  reason: collision with root package name */
    private final j f12240o;

    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    class a implements com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12241a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f12242b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f12243c;

        a(final ImageRequest val$requestLevel, final Object val$callerContext, final ImageRequest.RequestLevel val$imageRequest) {
            this.f12241a = val$requestLevel;
            this.f12242b = val$callerContext;
            this.f12243c = val$imageRequest;
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> get() {
            return h.this.j(this.f12241a, this.f12242b, this.f12243c);
        }

        public String toString() {
            return com.facebook.common.internal.i.e(this).f("uri", this.f12241a.w()).toString();
        }
    }

    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    class b implements com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12245a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f12246b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f12247c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ q1.f f12248d;

        b(final ImageRequest val$requestListener, final Object val$requestLevel, final ImageRequest.RequestLevel val$callerContext, final q1.f val$imageRequest) {
            this.f12245a = val$requestListener;
            this.f12246b = val$requestLevel;
            this.f12247c = val$callerContext;
            this.f12248d = val$imageRequest;
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> get() {
            return h.this.k(this.f12245a, this.f12246b, this.f12247c, this.f12248d);
        }

        public String toString() {
            return com.facebook.common.internal.i.e(this).f("uri", this.f12245a.w()).toString();
        }
    }

    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    class c implements com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12250a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f12251b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageRequest.RequestLevel f12252c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ q1.f f12253d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f12254e;

        c(final ImageRequest val$uiComponentId, final Object val$requestListener, final ImageRequest.RequestLevel val$requestLevel, final q1.f val$callerContext, final String val$imageRequest) {
            this.f12250a = val$uiComponentId;
            this.f12251b = val$requestListener;
            this.f12252c = val$requestLevel;
            this.f12253d = val$callerContext;
            this.f12254e = val$imageRequest;
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> get() {
            return h.this.l(this.f12250a, this.f12251b, this.f12252c, this.f12253d, this.f12254e);
        }

        public String toString() {
            return com.facebook.common.internal.i.e(this).f("uri", this.f12250a.w()).toString();
        }
    }

    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    class d implements com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<PooledByteBuffer>>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12256a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f12257b;

        d(final ImageRequest val$callerContext, final Object val$imageRequest) {
            this.f12256a = val$callerContext;
            this.f12257b = val$imageRequest;
        }

        @Override // com.facebook.common.internal.m
        /* renamed from: a */
        public com.facebook.datasource.d<com.facebook.common.references.a<PooledByteBuffer>> get() {
            return h.this.n(this.f12256a, this.f12257b);
        }

        public String toString() {
            return com.facebook.common.internal.i.e(this).f("uri", this.f12256a.w()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    public class e implements com.facebook.common.internal.k<com.facebook.cache.common.c> {
        e() {
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public boolean apply(com.facebook.cache.common.c key) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    public class f implements bolts.g<Boolean, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.datasource.j f12260a;

        f(final com.facebook.datasource.j val$dataSource) {
            this.f12260a = val$dataSource;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(bolts.h<Boolean> task) throws Exception {
            this.f12260a.z(Boolean.valueOf((task.H() || task.J() || !task.F().booleanValue()) ? false : true));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    public class g implements bolts.g<Boolean, bolts.h<Boolean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f12262a;

        g(final com.facebook.cache.common.c val$cacheKey) {
            this.f12262a = val$cacheKey;
        }

        @Override // bolts.g
        /* renamed from: b */
        public bolts.h<Boolean> a(bolts.h<Boolean> task) throws Exception {
            if (!task.H() && !task.J() && task.F().booleanValue()) {
                return bolts.h.D(Boolean.TRUE);
            }
            return h.this.f12233h.l(this.f12262a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* renamed from: com.facebook.imagepipeline.core.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0101h implements com.facebook.common.internal.k<com.facebook.cache.common.c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f12264a;

        C0101h(final Uri val$uri) {
            this.f12264a = val$uri;
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public boolean apply(com.facebook.cache.common.c key) {
            return key.b(this.f12264a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImagePipeline.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class i {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12266a;

        static {
            int[] iArr = new int[ImageRequest.CacheChoice.values().length];
            f12266a = iArr;
            try {
                iArr[ImageRequest.CacheChoice.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12266a[ImageRequest.CacheChoice.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public h(r producerSequenceFactory, Set<q1.f> requestListeners, Set<q1.e> requestListener2s, com.facebook.common.internal.m<Boolean> isPrefetchEnabledSupplier, u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.f mainBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, d1 threadHandoffProducerQueue, com.facebook.common.internal.m<Boolean> suppressBitmapPrefetchingSupplier, com.facebook.common.internal.m<Boolean> lazyDataSource, @r7.h l0.a callerContextVerifier, j config) {
        this.f12226a = producerSequenceFactory;
        this.f12227b = new q1.d(requestListeners);
        this.f12228c = new q1.c(requestListener2s);
        this.f12229d = isPrefetchEnabledSupplier;
        this.f12230e = bitmapMemoryCache;
        this.f12231f = encodedMemoryCache;
        this.f12232g = mainBufferedDiskCache;
        this.f12233h = smallImageBufferedDiskCache;
        this.f12234i = cacheKeyFactory;
        this.f12235j = threadHandoffProducerQueue;
        this.f12236k = suppressBitmapPrefetchingSupplier;
        this.f12238m = lazyDataSource;
        this.f12239n = callerContextVerifier;
        this.f12240o = config;
    }

    private com.facebook.common.internal.k<com.facebook.cache.common.c> R(final Uri uri) {
        return new C0101h(uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private <T> com.facebook.datasource.d<com.facebook.common.references.a<T>> e0(com.facebook.imagepipeline.producers.q0<com.facebook.common.references.a<T>> r15, com.facebook.imagepipeline.request.ImageRequest r16, com.facebook.imagepipeline.request.ImageRequest.RequestLevel r17, @r7.h java.lang.Object r18, @r7.h q1.f r19, @r7.h java.lang.String r20) {
        /*
            r14 = this;
            r1 = r14
            boolean r0 = com.facebook.imagepipeline.systrace.b.e()
            if (r0 == 0) goto Lc
            java.lang.String r0 = "ImagePipeline#submitFetchRequest"
            com.facebook.imagepipeline.systrace.b.a(r0)
        Lc:
            com.facebook.imagepipeline.producers.z r0 = new com.facebook.imagepipeline.producers.z
            r3 = r16
            r2 = r19
            q1.f r2 = r14.C(r3, r2)
            q1.e r4 = r1.f12228c
            r0.<init>(r2, r4)
            l0.a r2 = r1.f12239n
            r4 = 0
            r7 = r18
            if (r2 == 0) goto L25
            r2.a(r7, r4)
        L25:
            com.facebook.imagepipeline.request.ImageRequest$RequestLevel r2 = r16.l()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            r5 = r17
            com.facebook.imagepipeline.request.ImageRequest$RequestLevel r8 = com.facebook.imagepipeline.request.ImageRequest.RequestLevel.getMax(r2, r5)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            com.facebook.imagepipeline.producers.z0 r13 = new com.facebook.imagepipeline.producers.z0     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            java.lang.String r5 = r14.q()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            r9 = 0
            boolean r2 = r16.q()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            if (r2 != 0) goto L49
            android.net.Uri r2 = r16.w()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            boolean r2 = com.facebook.common.util.f.n(r2)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            if (r2 != 0) goto L47
            goto L49
        L47:
            r10 = 0
            goto L4b
        L49:
            r2 = 1
            r10 = 1
        L4b:
            com.facebook.imagepipeline.common.Priority r11 = r16.p()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            com.facebook.imagepipeline.core.j r12 = r1.f12240o     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            r2 = r13
            r3 = r16
            r4 = r5
            r5 = r20
            r6 = r0
            r7 = r18
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            r2 = r15
            com.facebook.datasource.d r0 = com.facebook.imagepipeline.datasource.e.J(r15, r13, r0)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L6e
            boolean r2 = com.facebook.imagepipeline.systrace.b.e()
            if (r2 == 0) goto L6b
            com.facebook.imagepipeline.systrace.b.c()
        L6b:
            return r0
        L6c:
            r0 = move-exception
            goto L7d
        L6e:
            r0 = move-exception
            com.facebook.datasource.d r0 = com.facebook.datasource.e.c(r0)     // Catch: java.lang.Throwable -> L6c
            boolean r2 = com.facebook.imagepipeline.systrace.b.e()
            if (r2 == 0) goto L7c
            com.facebook.imagepipeline.systrace.b.c()
        L7c:
            return r0
        L7d:
            boolean r2 = com.facebook.imagepipeline.systrace.b.e()
            if (r2 == 0) goto L86
            com.facebook.imagepipeline.systrace.b.c()
        L86:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.core.h.e0(com.facebook.imagepipeline.producers.q0, com.facebook.imagepipeline.request.ImageRequest, com.facebook.imagepipeline.request.ImageRequest$RequestLevel, java.lang.Object, q1.f, java.lang.String):com.facebook.datasource.d");
    }

    private com.facebook.datasource.d<Void> f0(q0<Void> producerSequence, ImageRequest imageRequest, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit, @r7.h Object callerContext, Priority priority, @r7.h q1.f requestListener) {
        z zVar = new z(C(imageRequest, requestListener), this.f12228c);
        l0.a aVar = this.f12239n;
        if (aVar != null) {
            aVar.a(callerContext, true);
        }
        try {
            return com.facebook.imagepipeline.datasource.g.I(producerSequence, new z0(imageRequest, q(), zVar, callerContext, ImageRequest.RequestLevel.getMax(imageRequest.l(), lowestPermittedRequestLevelOnSubmit), true, false, priority, this.f12240o), zVar);
        } catch (Exception e4) {
            return com.facebook.datasource.e.c(e4);
        }
    }

    public com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<PooledByteBuffer>>> A(final ImageRequest imageRequest, @r7.h final Object callerContext) {
        return new d(imageRequest, callerContext);
    }

    public r B() {
        return this.f12226a;
    }

    public q1.f C(ImageRequest imageRequest, @r7.h q1.f requestListener) {
        if (requestListener == null) {
            if (imageRequest.r() == null) {
                return this.f12227b;
            }
            return new q1.d(this.f12227b, imageRequest.r());
        } else if (imageRequest.r() == null) {
            return new q1.d(this.f12227b, requestListener);
        } else {
            return new q1.d(this.f12227b, requestListener, imageRequest.r());
        }
    }

    public long D() {
        return this.f12232g.s() + this.f12233h.s();
    }

    public boolean E(@r7.h com.facebook.cache.common.c cacheKey) {
        u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> uVar = this.f12230e;
        if (uVar == null || cacheKey == null) {
            return false;
        }
        return uVar.contains(cacheKey);
    }

    public boolean F(final Uri uri) {
        if (uri == null) {
            return false;
        }
        return this.f12230e.l(R(uri));
    }

    public boolean G(final ImageRequest imageRequest) {
        if (imageRequest == null) {
            return false;
        }
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = this.f12230e.get(this.f12234i.a(imageRequest, null));
        try {
            return com.facebook.common.references.a.A(aVar);
        } finally {
            com.facebook.common.references.a.k(aVar);
        }
    }

    public com.facebook.datasource.d<Boolean> H(final Uri uri) {
        return I(ImageRequest.b(uri));
    }

    public com.facebook.datasource.d<Boolean> I(final ImageRequest imageRequest) {
        com.facebook.cache.common.c d4 = this.f12234i.d(imageRequest, null);
        com.facebook.datasource.j y9 = com.facebook.datasource.j.y();
        this.f12232g.l(d4).u(new g(d4)).q(new f(y9));
        return y9;
    }

    public boolean J(final Uri uri) {
        return K(uri, ImageRequest.CacheChoice.SMALL) || K(uri, ImageRequest.CacheChoice.DEFAULT);
    }

    public boolean K(final Uri uri, final ImageRequest.CacheChoice cacheChoice) {
        return L(ImageRequestBuilder.x(uri).A(cacheChoice).a());
    }

    public boolean L(final ImageRequest imageRequest) {
        com.facebook.cache.common.c d4 = this.f12234i.d(imageRequest, null);
        int i4 = i.f12266a[imageRequest.f().ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return false;
            }
            return this.f12233h.o(d4);
        }
        return this.f12232g.o(d4);
    }

    public boolean M(final Uri uri) {
        if (uri == null) {
            return false;
        }
        return this.f12231f.l(R(uri));
    }

    public boolean N(final ImageRequest imageRequest) {
        if (imageRequest == null) {
            return false;
        }
        com.facebook.common.references.a<PooledByteBuffer> aVar = this.f12231f.get(this.f12234i.d(imageRequest, null));
        try {
            return com.facebook.common.references.a.A(aVar);
        } finally {
            com.facebook.common.references.a.k(aVar);
        }
    }

    public com.facebook.common.internal.m<Boolean> O() {
        return this.f12238m;
    }

    public boolean P() {
        return this.f12235j.e();
    }

    public void Q() {
        this.f12235j.a();
    }

    public com.facebook.datasource.d<Void> S(ImageRequest imageRequest, @r7.h Object callerContext) {
        return T(imageRequest, callerContext, null);
    }

    public com.facebook.datasource.d<Void> T(ImageRequest imageRequest, @r7.h Object callerContext, @r7.h q1.f requestListener) {
        boolean booleanValue;
        q0<Void> h4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ImagePipeline#prefetchToBitmapCache");
            }
            if (!this.f12229d.get().booleanValue()) {
                com.facebook.datasource.d<Void> c10 = com.facebook.datasource.e.c(f12225p);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return c10;
            }
            try {
                Boolean E = imageRequest.E();
                if (E != null) {
                    booleanValue = !E.booleanValue();
                } else {
                    booleanValue = this.f12236k.get().booleanValue();
                }
                if (booleanValue) {
                    h4 = this.f12226a.l(imageRequest);
                } else {
                    h4 = this.f12226a.h(imageRequest);
                }
                com.facebook.datasource.d<Void> f02 = f0(h4, imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, Priority.MEDIUM, requestListener);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return f02;
            } catch (Exception e4) {
                com.facebook.datasource.d<Void> c11 = com.facebook.datasource.e.c(e4);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return c11;
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public com.facebook.datasource.d<Void> U(ImageRequest imageRequest, @r7.h Object callerContext) {
        return V(imageRequest, callerContext, Priority.MEDIUM);
    }

    public com.facebook.datasource.d<Void> V(ImageRequest imageRequest, @r7.h Object callerContext, Priority priority) {
        return W(imageRequest, callerContext, priority, null);
    }

    public com.facebook.datasource.d<Void> W(ImageRequest imageRequest, @r7.h Object callerContext, Priority priority, @r7.h q1.f requestListener) {
        if (!this.f12229d.get().booleanValue()) {
            return com.facebook.datasource.e.c(f12225p);
        }
        try {
            return f0(this.f12226a.l(imageRequest), imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, priority, requestListener);
        } catch (Exception e4) {
            return com.facebook.datasource.e.c(e4);
        }
    }

    public com.facebook.datasource.d<Void> X(ImageRequest imageRequest, @r7.h Object callerContext, @r7.h q1.f requestListener) {
        return W(imageRequest, callerContext, Priority.MEDIUM, requestListener);
    }

    public com.facebook.datasource.d<Void> Y(ImageRequest imageRequest, @r7.h Object callerContext) {
        return Z(imageRequest, callerContext, Priority.MEDIUM);
    }

    public com.facebook.datasource.d<Void> Z(ImageRequest imageRequest, @r7.h Object callerContext, Priority priority) {
        return a0(imageRequest, callerContext, priority, null);
    }

    public com.facebook.datasource.d<Void> a0(ImageRequest imageRequest, @r7.h Object callerContext, Priority priority, @r7.h q1.f requestListener) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ImagePipeline#prefetchToEncodedCache");
            }
            if (!this.f12229d.get().booleanValue()) {
                com.facebook.datasource.d<Void> c10 = com.facebook.datasource.e.c(f12225p);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return c10;
            }
            try {
                com.facebook.datasource.d<Void> f02 = f0(this.f12226a.l(imageRequest), imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, priority, requestListener);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return f02;
            } catch (Exception e4) {
                com.facebook.datasource.d<Void> c11 = com.facebook.datasource.e.c(e4);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return c11;
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public void b() {
        d();
        c();
    }

    public com.facebook.datasource.d<Void> b0(ImageRequest imageRequest, @r7.h Object callerContext, @r7.h q1.f requestListener) {
        return a0(imageRequest, callerContext, Priority.MEDIUM, requestListener);
    }

    public void c() {
        this.f12232g.k();
        this.f12233h.k();
    }

    public void c0() {
        this.f12235j.d();
    }

    public void d() {
        e eVar = new e();
        this.f12230e.k(eVar);
        this.f12231f.k(eVar);
    }

    public <T> com.facebook.datasource.d<com.facebook.common.references.a<T>> d0(q0<com.facebook.common.references.a<T>> producerSequence, z0 settableProducerContext, q1.f requestListener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipeline#submitFetchRequest");
        }
        try {
            try {
                com.facebook.datasource.d<com.facebook.common.references.a<T>> J = com.facebook.imagepipeline.datasource.e.J(producerSequence, settableProducerContext, new z(requestListener, this.f12228c));
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return J;
            } catch (Exception e4) {
                com.facebook.datasource.d<com.facebook.common.references.a<T>> c10 = com.facebook.datasource.e.c(e4);
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return c10;
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public void e(final Uri uri) {
        h(uri);
        f(uri);
    }

    public void f(final Uri uri) {
        g(ImageRequest.b(uri));
    }

    public void g(final ImageRequest imageRequest) {
        com.facebook.cache.common.c d4 = this.f12234i.d(imageRequest, null);
        this.f12232g.w(d4);
        this.f12233h.w(d4);
    }

    public void h(final Uri uri) {
        com.facebook.common.internal.k<com.facebook.cache.common.c> R = R(uri);
        this.f12230e.k(R);
        this.f12231f.k(R);
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> i(ImageRequest imageRequest, @r7.h Object callerContext) {
        return j(imageRequest, callerContext, ImageRequest.RequestLevel.FULL_FETCH);
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> j(ImageRequest imageRequest, @r7.h Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit) {
        return k(imageRequest, callerContext, lowestPermittedRequestLevelOnSubmit, null);
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> k(ImageRequest imageRequest, @r7.h Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit, @r7.h q1.f requestListener) {
        return l(imageRequest, callerContext, lowestPermittedRequestLevelOnSubmit, requestListener, null);
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> l(ImageRequest imageRequest, @r7.h Object callerContext, ImageRequest.RequestLevel lowestPermittedRequestLevelOnSubmit, @r7.h q1.f requestListener, @r7.h String uiComponentId) {
        try {
            return e0(this.f12226a.j(imageRequest), imageRequest, lowestPermittedRequestLevelOnSubmit, callerContext, requestListener, uiComponentId);
        } catch (Exception e4) {
            return com.facebook.datasource.e.c(e4);
        }
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> m(ImageRequest imageRequest, @r7.h Object callerContext, @r7.h q1.f requestListener) {
        return k(imageRequest, callerContext, ImageRequest.RequestLevel.FULL_FETCH, requestListener);
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<PooledByteBuffer>> n(ImageRequest imageRequest, @r7.h Object callerContext) {
        return o(imageRequest, callerContext, null);
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<PooledByteBuffer>> o(ImageRequest imageRequest, @r7.h Object callerContext, @r7.h q1.f requestListener) {
        com.facebook.common.internal.j.i(imageRequest.w());
        try {
            q0<com.facebook.common.references.a<PooledByteBuffer>> m9 = this.f12226a.m(imageRequest);
            if (imageRequest.s() != null) {
                imageRequest = ImageRequestBuilder.d(imageRequest).L(null).a();
            }
            return e0(m9, imageRequest, ImageRequest.RequestLevel.FULL_FETCH, callerContext, requestListener, null);
        } catch (Exception e4) {
            return com.facebook.datasource.e.c(e4);
        }
    }

    public com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> p(ImageRequest imageRequest, @r7.h Object callerContext) {
        return j(imageRequest, callerContext, ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE);
    }

    public String q() {
        return String.valueOf(this.f12237l.getAndIncrement());
    }

    public u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> r() {
        return this.f12230e;
    }

    @r7.h
    public com.facebook.cache.common.c s(@r7.h ImageRequest imageRequest, @r7.h Object callerContext) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipeline#getCacheKey");
        }
        com.facebook.imagepipeline.cache.g gVar = this.f12234i;
        com.facebook.cache.common.c cVar = null;
        if (gVar != null && imageRequest != null) {
            if (imageRequest.m() != null) {
                cVar = gVar.c(imageRequest, callerContext);
            } else {
                cVar = gVar.a(imageRequest, callerContext);
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return cVar;
    }

    public com.facebook.imagepipeline.cache.g t() {
        return this.f12234i;
    }

    @r7.h
    public com.facebook.common.references.a<com.facebook.imagepipeline.image.c> u(@r7.h com.facebook.cache.common.c cacheKey) {
        u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> uVar = this.f12230e;
        if (uVar == null || cacheKey == null) {
            return null;
        }
        com.facebook.common.references.a<com.facebook.imagepipeline.image.c> aVar = uVar.get(cacheKey);
        if (aVar == null || aVar.q().a().a()) {
            return aVar;
        }
        aVar.close();
        return null;
    }

    public q1.f v(@r7.h q1.f listener) {
        if (listener == null) {
            return this.f12227b;
        }
        return new q1.d(this.f12227b, listener);
    }

    public j w() {
        return this.f12240o;
    }

    public com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> x(final ImageRequest imageRequest, @r7.h final Object callerContext, final ImageRequest.RequestLevel requestLevel) {
        return new a(imageRequest, callerContext, requestLevel);
    }

    public com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> y(final ImageRequest imageRequest, @r7.h final Object callerContext, final ImageRequest.RequestLevel requestLevel, @r7.h final q1.f requestListener) {
        return new b(imageRequest, callerContext, requestLevel, requestListener);
    }

    public com.facebook.common.internal.m<com.facebook.datasource.d<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> z(final ImageRequest imageRequest, @r7.h final Object callerContext, final ImageRequest.RequestLevel requestLevel, @r7.h final q1.f requestListener, @r7.h final String uiComponentId) {
        return new c(imageRequest, callerContext, requestLevel, requestListener, uiComponentId);
    }
}
