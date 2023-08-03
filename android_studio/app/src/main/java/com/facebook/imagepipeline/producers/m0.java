package com.facebook.imagepipeline.producers;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PartialDiskCacheProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class m0 implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f13077f = "PartialDiskCacheProducer";

    /* renamed from: g  reason: collision with root package name */
    public static final String f13078g = "cached_value_found";

    /* renamed from: h  reason: collision with root package name */
    public static final String f13079h = "encodedImageSize";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13080a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13081b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.common.memory.g f13082c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.memory.a f13083d;

    /* renamed from: e  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13084e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes.dex */
    public class a implements bolts.g<com.facebook.imagepipeline.image.e, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0 f13085a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s0 f13086b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l f13087c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f13088d;

        a(final u0 val$partialImageCacheKey, final s0 val$consumer, final l val$producerContext, final com.facebook.cache.common.c val$listener) {
            this.f13085a = val$partialImageCacheKey;
            this.f13086b = val$consumer;
            this.f13087c = val$producerContext;
            this.f13088d = val$listener;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(bolts.h<com.facebook.imagepipeline.image.e> task) throws Exception {
            if (m0.g(task)) {
                this.f13085a.c(this.f13086b, m0.f13077f, null);
                this.f13087c.b();
            } else if (task.J()) {
                this.f13085a.k(this.f13086b, m0.f13077f, task.E(), null);
                m0.this.i(this.f13087c, this.f13086b, this.f13088d, null);
            } else {
                com.facebook.imagepipeline.image.e F = task.F();
                if (F != null) {
                    u0 u0Var = this.f13085a;
                    s0 s0Var = this.f13086b;
                    u0Var.j(s0Var, m0.f13077f, m0.f(u0Var, s0Var, true, F.H()));
                    com.facebook.imagepipeline.common.a e4 = com.facebook.imagepipeline.common.a.e(F.H() - 1);
                    F.n0(e4);
                    int H = F.H();
                    ImageRequest c10 = this.f13086b.c();
                    if (e4.a(c10.e())) {
                        this.f13086b.h("disk", "partial");
                        this.f13085a.b(this.f13086b, m0.f13077f, true);
                        this.f13087c.c(F, 9);
                    } else {
                        this.f13087c.c(F, 8);
                        m0.this.i(this.f13087c, new z0(ImageRequestBuilder.d(c10).z(com.facebook.imagepipeline.common.a.b(H - 1)).a(), this.f13086b), this.f13088d, F);
                    }
                } else {
                    u0 u0Var2 = this.f13085a;
                    s0 s0Var2 = this.f13086b;
                    u0Var2.j(s0Var2, m0.f13077f, m0.f(u0Var2, s0Var2, false, 0));
                    m0.this.i(this.f13087c, this.f13086b, this.f13088d, F);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes.dex */
    public class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f13090a;

        b(final AtomicBoolean val$isCancelled) {
            this.f13090a = val$isCancelled;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            this.f13090a.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes.dex */
    public static class c extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: o  reason: collision with root package name */
        private static final int f13092o = 16384;

        /* renamed from: i  reason: collision with root package name */
        private final com.facebook.imagepipeline.cache.f f13093i;

        /* renamed from: j  reason: collision with root package name */
        private final com.facebook.cache.common.c f13094j;

        /* renamed from: k  reason: collision with root package name */
        private final com.facebook.common.memory.g f13095k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.common.memory.a f13096l;
        @r7.h

        /* renamed from: m  reason: collision with root package name */
        private final com.facebook.imagepipeline.image.e f13097m;

        /* renamed from: n  reason: collision with root package name */
        private final boolean f13098n;

        /* synthetic */ c(l lVar, com.facebook.imagepipeline.cache.f fVar, com.facebook.cache.common.c cVar, com.facebook.common.memory.g gVar, com.facebook.common.memory.a aVar, com.facebook.imagepipeline.image.e eVar, boolean z9, a aVar2) {
            this(lVar, fVar, cVar, gVar, aVar, eVar, z9);
        }

        private void s(InputStream from, OutputStream to, int length) throws IOException {
            byte[] bArr = this.f13096l.get(16384);
            int i4 = length;
            while (i4 > 0) {
                try {
                    int read = from.read(bArr, 0, Math.min(16384, i4));
                    if (read < 0) {
                        break;
                    } else if (read > 0) {
                        to.write(bArr, 0, read);
                        i4 -= read;
                    }
                } finally {
                    this.f13096l.release(bArr);
                }
            }
            if (i4 > 0) {
                throw new IOException(String.format(null, "Failed to read %d bytes - finished %d short", Integer.valueOf(length), Integer.valueOf(i4)));
            }
        }

        private com.facebook.common.memory.i t(com.facebook.imagepipeline.image.e initialData, com.facebook.imagepipeline.image.e remainingData) throws IOException {
            int i4 = ((com.facebook.imagepipeline.common.a) com.facebook.common.internal.j.i(remainingData.k())).f12171a;
            com.facebook.common.memory.i f10 = this.f13095k.f(remainingData.H() + i4);
            s(initialData.D(), f10, i4);
            s(remainingData.D(), f10, remainingData.H());
            return f10;
        }

        private void v(com.facebook.common.memory.i pooledOutputStream) {
            com.facebook.imagepipeline.image.e eVar;
            Throwable th;
            com.facebook.common.references.a D = com.facebook.common.references.a.D(pooledOutputStream.a());
            try {
                eVar = new com.facebook.imagepipeline.image.e(D);
            } catch (Throwable th2) {
                eVar = null;
                th = th2;
            }
            try {
                eVar.d0();
                r().c(eVar, 1);
                com.facebook.imagepipeline.image.e.d(eVar);
                com.facebook.common.references.a.k(D);
            } catch (Throwable th3) {
                th = th3;
                com.facebook.imagepipeline.image.e.d(eVar);
                com.facebook.common.references.a.k(D);
                throw th;
            }
        }

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: u */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            if (com.facebook.imagepipeline.producers.b.g(status)) {
                return;
            }
            if (this.f13097m != null && newResult != null && newResult.k() != null) {
                try {
                    try {
                        v(t(this.f13097m, newResult));
                    } catch (IOException e4) {
                        p0.a.v(m0.f13077f, "Error while merging image data", e4);
                        r().a(e4);
                    }
                    this.f13093i.w(this.f13094j);
                } finally {
                    newResult.close();
                    this.f13097m.close();
                }
            } else if (this.f13098n && com.facebook.imagepipeline.producers.b.o(status, 8) && com.facebook.imagepipeline.producers.b.f(status) && newResult != null && newResult.y() != com.facebook.imageformat.c.f11810c) {
                this.f13093i.u(this.f13094j, newResult);
                r().c(newResult, status);
            } else {
                r().c(newResult, status);
            }
        }

        private c(final l<com.facebook.imagepipeline.image.e> consumer, final com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, final com.facebook.cache.common.c partialImageCacheKey, final com.facebook.common.memory.g pooledByteBufferFactory, final com.facebook.common.memory.a byteArrayPool, @r7.h final com.facebook.imagepipeline.image.e partialEncodedImageFromCache, final boolean isDiskCacheEnabledForWrite) {
            super(consumer);
            this.f13093i = defaultBufferedDiskCache;
            this.f13094j = partialImageCacheKey;
            this.f13095k = pooledByteBufferFactory;
            this.f13096l = byteArrayPool;
            this.f13097m = partialEncodedImageFromCache;
            this.f13098n = isDiskCacheEnabledForWrite;
        }
    }

    public m0(com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.a byteArrayPool, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f13080a = defaultBufferedDiskCache;
        this.f13081b = cacheKeyFactory;
        this.f13082c = pooledByteBufferFactory;
        this.f13083d = byteArrayPool;
        this.f13084e = inputProducer;
    }

    private static Uri e(ImageRequest imageRequest) {
        return imageRequest.w().buildUpon().appendQueryParameter("fresco_partial", "true").build();
    }

    @r7.h
    @VisibleForTesting
    static Map<String, String> f(final u0 listener, final s0 producerContext, final boolean valueFound, final int sizeInBytes) {
        if (listener.f(producerContext, f13077f)) {
            if (valueFound) {
                return ImmutableMap.of("cached_value_found", String.valueOf(valueFound), "encodedImageSize", String.valueOf(sizeInBytes));
            }
            return ImmutableMap.of("cached_value_found", String.valueOf(valueFound));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g(bolts.h<?> task) {
        return task.H() || (task.J() && (task.E() instanceof CancellationException));
    }

    private bolts.g<com.facebook.imagepipeline.image.e, Void> h(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext, final com.facebook.cache.common.c partialImageCacheKey) {
        return new a(producerContext.k(), producerContext, consumer, partialImageCacheKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(l<com.facebook.imagepipeline.image.e> consumerOfPartialDiskCacheProducer, s0 producerContext, com.facebook.cache.common.c partialImageCacheKey, @r7.h com.facebook.imagepipeline.image.e partialResultFromCache) {
        this.f13084e.b(new c(consumerOfPartialDiskCacheProducer, this.f13080a, partialImageCacheKey, this.f13082c, this.f13083d, partialResultFromCache, producerContext.c().z(32), null), producerContext);
    }

    private void j(final AtomicBoolean isCancelled, s0 producerContext) {
        producerContext.f(new b(isCancelled));
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        ImageRequest c10 = producerContext.c();
        boolean z9 = producerContext.c().z(16);
        u0 k10 = producerContext.k();
        k10.d(producerContext, f13077f);
        com.facebook.cache.common.c b10 = this.f13081b.b(c10, e(c10), producerContext.d());
        if (!z9) {
            k10.j(producerContext, f13077f, f(k10, producerContext, false, 0));
            i(consumer, producerContext, b10, null);
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f13080a.q(b10, atomicBoolean).q(h(consumer, producerContext, b10));
        j(atomicBoolean, producerContext);
    }
}
