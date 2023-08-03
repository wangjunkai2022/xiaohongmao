package com.facebook.imagepipeline.core;

import android.content.Context;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.core.i;
import com.facebook.infer.annotation.Nullsafe;
import t0.b;

/* compiled from: ImagePipelineExperiments.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class k {
    private final int A;
    private final boolean B;
    private final boolean C;
    private final boolean D;
    private final boolean E;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f12321a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final b.a f12322b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f12323c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private final t0.b f12324d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f12325e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f12326f;

    /* renamed from: g  reason: collision with root package name */
    private final int f12327g;

    /* renamed from: h  reason: collision with root package name */
    private final int f12328h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f12329i;

    /* renamed from: j  reason: collision with root package name */
    private final int f12330j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f12331k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f12332l;

    /* renamed from: m  reason: collision with root package name */
    private final d f12333m;
    @r7.h

    /* renamed from: n  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f12334n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f12335o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f12336p;

    /* renamed from: q  reason: collision with root package name */
    private final int f12337q;

    /* renamed from: r  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f12338r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f12339s;

    /* renamed from: t  reason: collision with root package name */
    private final long f12340t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f12341u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f12342v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f12343w;

    /* renamed from: x  reason: collision with root package name */
    private final boolean f12344x;

    /* renamed from: y  reason: collision with root package name */
    private final boolean f12345y;

    /* renamed from: z  reason: collision with root package name */
    private final boolean f12346z;

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final i.b f12347a;
        @r7.h

        /* renamed from: c  reason: collision with root package name */
        private b.a f12349c;
        @r7.h

        /* renamed from: e  reason: collision with root package name */
        private t0.b f12351e;
        @r7.h

        /* renamed from: n  reason: collision with root package name */
        private d f12360n;
        @r7.h

        /* renamed from: o  reason: collision with root package name */
        public com.facebook.common.internal.m<Boolean> f12361o;

        /* renamed from: p  reason: collision with root package name */
        public boolean f12362p;

        /* renamed from: q  reason: collision with root package name */
        public boolean f12363q;

        /* renamed from: r  reason: collision with root package name */
        public int f12364r;

        /* renamed from: t  reason: collision with root package name */
        public boolean f12366t;

        /* renamed from: v  reason: collision with root package name */
        private boolean f12368v;

        /* renamed from: w  reason: collision with root package name */
        public boolean f12369w;

        /* renamed from: b  reason: collision with root package name */
        private boolean f12348b = false;

        /* renamed from: d  reason: collision with root package name */
        private boolean f12350d = false;

        /* renamed from: f  reason: collision with root package name */
        private boolean f12352f = false;

        /* renamed from: g  reason: collision with root package name */
        private boolean f12353g = false;

        /* renamed from: h  reason: collision with root package name */
        private int f12354h = 0;

        /* renamed from: i  reason: collision with root package name */
        private int f12355i = 0;

        /* renamed from: j  reason: collision with root package name */
        public boolean f12356j = false;

        /* renamed from: k  reason: collision with root package name */
        private int f12357k = 2048;

        /* renamed from: l  reason: collision with root package name */
        private boolean f12358l = false;

        /* renamed from: m  reason: collision with root package name */
        private boolean f12359m = false;

        /* renamed from: s  reason: collision with root package name */
        public com.facebook.common.internal.m<Boolean> f12365s = com.facebook.common.internal.n.a(Boolean.FALSE);

        /* renamed from: u  reason: collision with root package name */
        public long f12367u = 0;

        /* renamed from: x  reason: collision with root package name */
        public boolean f12370x = true;

        /* renamed from: y  reason: collision with root package name */
        public boolean f12371y = true;

        /* renamed from: z  reason: collision with root package name */
        private boolean f12372z = false;
        private boolean A = false;
        private int B = 20;
        private boolean C = false;
        private boolean D = false;
        private boolean E = false;
        public boolean F = false;

        public b(i.b configBuilder) {
            this.f12347a = configBuilder;
        }

        public i.b A(boolean encodedCacheEnabled) {
            this.f12370x = encodedCacheEnabled;
            return this.f12347a;
        }

        public i.b B(boolean ensureTranscoderLibraryLoaded) {
            this.f12371y = ensureTranscoderLibraryLoaded;
            return this.f12347a;
        }

        public i.b C(long MemoryType) {
            this.f12367u = MemoryType;
            return this.f12347a;
        }

        public i.b D(boolean experimentalThreadHandoffQueueEnabled) {
            this.f12366t = experimentalThreadHandoffQueueEnabled;
            return this.f12347a;
        }

        public i.b E(boolean gingerbreadDecoderEnabled) {
            this.f12362p = gingerbreadDecoderEnabled;
            return this.f12347a;
        }

        public i.b F(boolean handOffOnUiThreadOnly) {
            this.D = handOffOnUiThreadOnly;
            return this.f12347a;
        }

        public i.b G(boolean shouldIgnoreCacheSizeMismatch) {
            this.F = shouldIgnoreCacheSizeMismatch;
            return this.f12347a;
        }

        public i.b H(boolean isDiskCacheProbingEnabled) {
            this.A = isDiskCacheProbingEnabled;
            return this.f12347a;
        }

        public i.b I(boolean isEncodedMemoryCacheProbingEnabled) {
            this.f12372z = isEncodedMemoryCacheProbingEnabled;
            return this.f12347a;
        }

        public i.b J(boolean keepCancelledFetchAsLowPriority) {
            this.f12368v = keepCancelledFetchAsLowPriority;
            return this.f12347a;
        }

        public i.b K(com.facebook.common.internal.m<Boolean> lazyDataSource) {
            this.f12361o = lazyDataSource;
            return this.f12347a;
        }

        public i.b L(int maxBitmapSize) {
            this.f12357k = maxBitmapSize;
            return this.f12347a;
        }

        public i.b M(boolean nativeCodeDisabled) {
            this.f12358l = nativeCodeDisabled;
            return this.f12347a;
        }

        public i.b N(boolean partialImageCachingEnabled) {
            this.f12359m = partialImageCachingEnabled;
            return this.f12347a;
        }

        public i.b O(d producerFactoryMethod) {
            this.f12360n = producerFactoryMethod;
            return this.f12347a;
        }

        public i.b P(boolean downscaleFrameToDrawableDimensions) {
            this.f12363q = downscaleFrameToDrawableDimensions;
            return this.f12347a;
        }

        public i.b Q(boolean shouldStoreCacheEntrySize) {
            this.E = shouldStoreCacheEntrySize;
            return this.f12347a;
        }

        public i.b R(com.facebook.common.internal.m<Boolean> suppressBitmapPrefetchingSupplier) {
            this.f12365s = suppressBitmapPrefetchingSupplier;
            return this.f12347a;
        }

        public i.b S(int trackedKeysSize) {
            this.B = trackedKeysSize;
            return this.f12347a;
        }

        public i.b T(boolean useDownsamplingRatioForResizing) {
            this.f12352f = useDownsamplingRatioForResizing;
            return this.f12347a;
        }

        public i.b U(t0.b webpBitmapFactory) {
            this.f12351e = webpBitmapFactory;
            return this.f12347a;
        }

        public i.b V(b.a webpErrorLogger) {
            this.f12349c = webpErrorLogger;
            return this.f12347a;
        }

        public i.b W(boolean webpSupportEnabled) {
            this.f12348b = webpSupportEnabled;
            return this.f12347a;
        }

        public k t() {
            return new k(this);
        }

        public boolean u() {
            return this.f12359m;
        }

        public i.b v(boolean allowDelay) {
            this.C = allowDelay;
            return this.f12347a;
        }

        public i.b w(int bitmapCloseableRefType) {
            this.f12364r = bitmapCloseableRefType;
            return this.f12347a;
        }

        public i.b x(boolean useBitmapPrepareToDraw, int minBitmapSizeBytes, int maxBitmapSizeBytes, boolean preparePrefetch) {
            this.f12353g = useBitmapPrepareToDraw;
            this.f12354h = minBitmapSizeBytes;
            this.f12355i = maxBitmapSizeBytes;
            this.f12356j = preparePrefetch;
            return this.f12347a;
        }

        public i.b y(boolean decodeCancellationEnabled) {
            this.f12350d = decodeCancellationEnabled;
            return this.f12347a;
        }

        public i.b z(boolean downsampleIfLargeBitmap) {
            this.f12369w = downsampleIfLargeBitmap;
            return this.f12347a;
        }
    }

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes.dex */
    public static class c implements d {
        @Override // com.facebook.imagepipeline.core.k.d
        public q a(Context context, com.facebook.common.memory.a byteArrayPool, com.facebook.imagepipeline.decoder.b imageDecoder, com.facebook.imagepipeline.decoder.d progressiveJpegConfig, boolean downsampleEnabled, boolean resizeAndRotateEnabledForNetwork, boolean decodeCancellationEnabled, f executorSupplier, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.j pooledByteStreams, u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, int bitmapPrepareToDrawMinSizeBytes, int bitmapPrepareToDrawMaxSizeBytes, boolean bitmapPrepareToDrawForPrefetch, int maxBitmapSize, com.facebook.imagepipeline.core.a closeableReferenceFactory, boolean keepCancelledFetchAsLowPriority, int trackedKeysSize) {
            return new q(context, byteArrayPool, imageDecoder, progressiveJpegConfig, downsampleEnabled, resizeAndRotateEnabledForNetwork, decodeCancellationEnabled, executorSupplier, pooledByteBufferFactory, bitmapMemoryCache, encodedMemoryCache, defaultBufferedDiskCache, smallImageBufferedDiskCache, cacheKeyFactory, platformBitmapFactory, bitmapPrepareToDrawMinSizeBytes, bitmapPrepareToDrawMaxSizeBytes, bitmapPrepareToDrawForPrefetch, maxBitmapSize, closeableReferenceFactory, keepCancelledFetchAsLowPriority, trackedKeysSize);
        }
    }

    /* compiled from: ImagePipelineExperiments.java */
    /* loaded from: classes.dex */
    public interface d {
        q a(Context context, com.facebook.common.memory.a byteArrayPool, com.facebook.imagepipeline.decoder.b imageDecoder, com.facebook.imagepipeline.decoder.d progressiveJpegConfig, boolean downsampleEnabled, boolean resizeAndRotateEnabledForNetwork, boolean decodeCancellationEnabled, f executorSupplier, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.j pooledByteStreams, u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, int bitmapPrepareToDrawMinSizeBytes, int bitmapPrepareToDrawMaxSizeBytes, boolean bitmapPrepareToDrawForPrefetch, int maxBitmapSize, com.facebook.imagepipeline.core.a closeableReferenceFactory, boolean keepCancelledFetchAsLowPriority, int trackedKeysSize);
    }

    public static b A(i.b configBuilder) {
        return new b(configBuilder);
    }

    public boolean B() {
        return this.f12342v;
    }

    public boolean C() {
        return this.f12336p;
    }

    public boolean D() {
        return this.E;
    }

    public boolean E() {
        return this.f12341u;
    }

    public boolean F() {
        return this.D;
    }

    public boolean a() {
        return this.B;
    }

    public int b() {
        return this.f12337q;
    }

    public boolean c() {
        return this.f12329i;
    }

    public int d() {
        return this.f12328h;
    }

    public int e() {
        return this.f12327g;
    }

    public int f() {
        return this.f12330j;
    }

    public long g() {
        return this.f12340t;
    }

    public d h() {
        return this.f12333m;
    }

    public com.facebook.common.internal.m<Boolean> i() {
        return this.f12338r;
    }

    public int j() {
        return this.A;
    }

    public boolean k() {
        return this.f12326f;
    }

    public boolean l() {
        return this.f12325e;
    }

    @r7.h
    public t0.b m() {
        return this.f12324d;
    }

    @r7.h
    public b.a n() {
        return this.f12322b;
    }

    public boolean o() {
        return this.C;
    }

    public boolean p() {
        return this.f12323c;
    }

    public boolean q() {
        return this.f12346z;
    }

    public boolean r() {
        return this.f12343w;
    }

    public boolean s() {
        return this.f12345y;
    }

    public boolean t() {
        return this.f12344x;
    }

    public boolean u() {
        return this.f12339s;
    }

    public boolean v() {
        return this.f12335o;
    }

    @r7.h
    public com.facebook.common.internal.m<Boolean> w() {
        return this.f12334n;
    }

    public boolean x() {
        return this.f12331k;
    }

    public boolean y() {
        return this.f12332l;
    }

    public boolean z() {
        return this.f12321a;
    }

    private k(b builder) {
        this.f12321a = builder.f12348b;
        this.f12322b = builder.f12349c;
        this.f12323c = builder.f12350d;
        this.f12324d = builder.f12351e;
        this.f12325e = builder.f12352f;
        this.f12326f = builder.f12353g;
        this.f12327g = builder.f12354h;
        this.f12328h = builder.f12355i;
        this.f12329i = builder.f12356j;
        this.f12330j = builder.f12357k;
        this.f12331k = builder.f12358l;
        this.f12332l = builder.f12359m;
        if (builder.f12360n == null) {
            this.f12333m = new c();
        } else {
            this.f12333m = builder.f12360n;
        }
        this.f12334n = builder.f12361o;
        this.f12335o = builder.f12362p;
        this.f12336p = builder.f12363q;
        this.f12337q = builder.f12364r;
        this.f12338r = builder.f12365s;
        this.f12339s = builder.f12366t;
        this.f12340t = builder.f12367u;
        this.f12341u = builder.f12368v;
        this.f12342v = builder.f12369w;
        this.f12343w = builder.f12370x;
        this.f12344x = builder.f12371y;
        this.f12345y = builder.f12372z;
        this.f12346z = builder.A;
        this.A = builder.B;
        this.B = builder.C;
        this.C = builder.D;
        this.D = builder.E;
        this.E = builder.F;
    }
}
