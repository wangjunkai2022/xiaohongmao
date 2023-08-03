package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import androidx.annotation.RequiresApi;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.producers.LocalExifThumbnailProducer;
import com.facebook.imagepipeline.producers.b0;
import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.c0;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.d0;
import com.facebook.imagepipeline.producers.d1;
import com.facebook.imagepipeline.producers.f0;
import com.facebook.imagepipeline.producers.f1;
import com.facebook.imagepipeline.producers.g0;
import com.facebook.imagepipeline.producers.g1;
import com.facebook.imagepipeline.producers.h0;
import com.facebook.imagepipeline.producers.h1;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.j1;
import com.facebook.imagepipeline.producers.k0;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.m0;
import com.facebook.imagepipeline.producers.n0;
import com.facebook.imagepipeline.producers.o0;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.s;
import com.facebook.imagepipeline.producers.t;
import com.facebook.imagepipeline.producers.w0;
import com.facebook.imagepipeline.producers.y0;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ProducerFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class q {

    /* renamed from: z  reason: collision with root package name */
    private static final int f12403z = 5;

    /* renamed from: a  reason: collision with root package name */
    protected ContentResolver f12404a;

    /* renamed from: b  reason: collision with root package name */
    protected Resources f12405b;

    /* renamed from: c  reason: collision with root package name */
    protected AssetManager f12406c;

    /* renamed from: d  reason: collision with root package name */
    protected final com.facebook.common.memory.a f12407d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.facebook.imagepipeline.decoder.b f12408e;

    /* renamed from: f  reason: collision with root package name */
    protected final com.facebook.imagepipeline.decoder.d f12409f;

    /* renamed from: g  reason: collision with root package name */
    protected final boolean f12410g;

    /* renamed from: h  reason: collision with root package name */
    protected final boolean f12411h;

    /* renamed from: i  reason: collision with root package name */
    protected final boolean f12412i;

    /* renamed from: j  reason: collision with root package name */
    protected final f f12413j;

    /* renamed from: k  reason: collision with root package name */
    protected final com.facebook.common.memory.g f12414k;

    /* renamed from: l  reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.f f12415l;

    /* renamed from: m  reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.f f12416m;

    /* renamed from: n  reason: collision with root package name */
    protected final u<com.facebook.cache.common.c, PooledByteBuffer> f12417n;

    /* renamed from: o  reason: collision with root package name */
    protected final u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f12418o;

    /* renamed from: p  reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.g f12419p;

    /* renamed from: q  reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f12420q;

    /* renamed from: r  reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.e<com.facebook.cache.common.c> f12421r;

    /* renamed from: s  reason: collision with root package name */
    protected final com.facebook.imagepipeline.bitmaps.f f12422s;

    /* renamed from: t  reason: collision with root package name */
    protected final int f12423t;

    /* renamed from: u  reason: collision with root package name */
    protected final int f12424u;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f12425v;

    /* renamed from: w  reason: collision with root package name */
    protected final a f12426w;

    /* renamed from: x  reason: collision with root package name */
    protected final int f12427x;

    /* renamed from: y  reason: collision with root package name */
    protected final boolean f12428y;

    public q(Context context, com.facebook.common.memory.a byteArrayPool, com.facebook.imagepipeline.decoder.b imageDecoder, com.facebook.imagepipeline.decoder.d progressiveJpegConfig, boolean downsampleEnabled, boolean resizeAndRotateEnabledForNetwork, boolean decodeCancellationEnabled, f executorSupplier, com.facebook.common.memory.g pooledByteBufferFactory, u<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, u<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, int bitmapPrepareToDrawMinSizeBytes, int bitmapPrepareToDrawMaxSizeBytes, boolean bitmapPrepareToDrawForPrefetch, int maxBitmapSize, a closeableReferenceFactory, boolean keepCancelledFetchAsLowPriority, int trackedKeysSize) {
        this.f12404a = context.getApplicationContext().getContentResolver();
        this.f12405b = context.getApplicationContext().getResources();
        this.f12406c = context.getApplicationContext().getAssets();
        this.f12407d = byteArrayPool;
        this.f12408e = imageDecoder;
        this.f12409f = progressiveJpegConfig;
        this.f12410g = downsampleEnabled;
        this.f12411h = resizeAndRotateEnabledForNetwork;
        this.f12412i = decodeCancellationEnabled;
        this.f12413j = executorSupplier;
        this.f12414k = pooledByteBufferFactory;
        this.f12418o = bitmapMemoryCache;
        this.f12417n = encodedMemoryCache;
        this.f12415l = defaultBufferedDiskCache;
        this.f12416m = smallImageBufferedDiskCache;
        this.f12419p = cacheKeyFactory;
        this.f12422s = platformBitmapFactory;
        this.f12420q = new com.facebook.imagepipeline.cache.e<>(trackedKeysSize);
        this.f12421r = new com.facebook.imagepipeline.cache.e<>(trackedKeysSize);
        this.f12423t = bitmapPrepareToDrawMinSizeBytes;
        this.f12424u = bitmapPrepareToDrawMaxSizeBytes;
        this.f12425v = bitmapPrepareToDrawForPrefetch;
        this.f12427x = maxBitmapSize;
        this.f12426w = closeableReferenceFactory;
        this.f12428y = keepCancelledFetchAsLowPriority;
    }

    public static com.facebook.imagepipeline.producers.a a(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.a(inputProducer);
    }

    public static com.facebook.imagepipeline.producers.k h(q0<com.facebook.imagepipeline.image.e> inputProducer1, q0<com.facebook.imagepipeline.image.e> inputProducer2) {
        return new com.facebook.imagepipeline.producers.k(inputProducer1, inputProducer2);
    }

    public n0 A(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new n0(this.f12418o, this.f12419p, inputProducer);
    }

    public o0 B(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new o0(inputProducer, this.f12422s, this.f12413j.e());
    }

    public w0 C() {
        return new w0(this.f12413j.f(), this.f12414k, this.f12404a);
    }

    public y0 D(q0<com.facebook.imagepipeline.image.e> inputProducer, final boolean isResizingEnabled, s1.d imageTranscoderFactory) {
        return new y0(this.f12413j.e(), this.f12414k, inputProducer, isResizingEnabled, imageTranscoderFactory);
    }

    public <T> b1<T> E(q0<T> inputProducer) {
        return new b1<>(inputProducer);
    }

    public <T> f1<T> F(q0<T> inputProducer) {
        return new f1<>(5, this.f12413j.a(), inputProducer);
    }

    public g1 G(h1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return new g1(thumbnailProducers);
    }

    public j1 H(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new j1(this.f12413j.e(), this.f12414k, inputProducer);
    }

    public <T> q0<T> b(q0<T> inputProducer, d1 inputThreadHandoffProducerQueue) {
        return new c1(inputProducer, inputThreadHandoffProducerQueue);
    }

    public com.facebook.imagepipeline.producers.f c(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.f(this.f12418o, this.f12419p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.g d(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.g(this.f12419p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.h e(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.h(this.f12418o, this.f12419p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.i f(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.i(inputProducer, this.f12423t, this.f12424u, this.f12425v);
    }

    public com.facebook.imagepipeline.producers.j g(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.j(this.f12417n, this.f12415l, this.f12416m, this.f12419p, this.f12420q, this.f12421r, inputProducer);
    }

    public com.facebook.imagepipeline.producers.m i() {
        return new com.facebook.imagepipeline.producers.m(this.f12414k);
    }

    public com.facebook.imagepipeline.producers.n j(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.n(this.f12407d, this.f12413j.d(), this.f12408e, this.f12409f, this.f12410g, this.f12411h, this.f12412i, inputProducer, this.f12427x, this.f12426w, null, com.facebook.common.internal.n.f10985b);
    }

    public com.facebook.imagepipeline.producers.o k(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.o(inputProducer, this.f12413j.c());
    }

    public com.facebook.imagepipeline.producers.q l(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.q(this.f12415l, this.f12416m, this.f12419p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.r m(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.r(this.f12415l, this.f12416m, this.f12419p, inputProducer);
    }

    public s n(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new s(this.f12419p, this.f12428y, inputProducer);
    }

    public t o(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new t(this.f12417n, this.f12419p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.u p(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.u(this.f12415l, this.f12416m, this.f12419p, this.f12420q, this.f12421r, inputProducer);
    }

    public b0 q() {
        return new b0(this.f12413j.f(), this.f12414k, this.f12406c);
    }

    public c0 r() {
        return new c0(this.f12413j.f(), this.f12414k, this.f12404a);
    }

    public d0 s() {
        return new d0(this.f12413j.f(), this.f12414k, this.f12404a);
    }

    public LocalExifThumbnailProducer t() {
        return new LocalExifThumbnailProducer(this.f12413j.g(), this.f12414k, this.f12404a);
    }

    public f0 u() {
        return new f0(this.f12413j.f(), this.f12414k);
    }

    public g0 v() {
        return new g0(this.f12413j.f(), this.f12414k, this.f12405b);
    }

    @RequiresApi(29)
    public h0 w() {
        return new h0(this.f12413j.e(), this.f12404a);
    }

    public i0 x() {
        return new i0(this.f12413j.f(), this.f12404a);
    }

    public q0<com.facebook.imagepipeline.image.e> y(l0 networkFetcher) {
        return new k0(this.f12414k, this.f12407d, networkFetcher);
    }

    public m0 z(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new m0(this.f12415l, this.f12419p, this.f12414k, this.f12407d, inputProducer);
    }
}
