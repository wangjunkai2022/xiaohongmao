package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.producers.d1;
import com.facebook.imagepipeline.producers.h1;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.t;
import com.facebook.imagepipeline.producers.x0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ProducerSequenceFactory.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class r {
    @Nullable
    @VisibleForTesting
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> A;
    @Nullable
    @VisibleForTesting
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> B;
    @Nullable
    @VisibleForTesting
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> C;
    @Nullable
    @VisibleForTesting
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> D;
    @Nullable
    @VisibleForTesting
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> E;
    @Nullable
    @VisibleForTesting
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> F;
    @VisibleForTesting
    Map<q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>, q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> G = new HashMap();
    @VisibleForTesting
    Map<q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>, q0<Void>> H = new HashMap();
    @VisibleForTesting
    Map<q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>, q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>>> I = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f12429a;

    /* renamed from: b  reason: collision with root package name */
    private final q f12430b;

    /* renamed from: c  reason: collision with root package name */
    private final l0 f12431c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f12432d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f12433e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f12434f;

    /* renamed from: g  reason: collision with root package name */
    private final d1 f12435g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f12436h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f12437i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f12438j;

    /* renamed from: k  reason: collision with root package name */
    private final s1.d f12439k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f12440l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f12441m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f12442n;
    @Nullable
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12443o;
    @Nullable
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    q0<com.facebook.imagepipeline.image.e> f12444p;
    @Nullable
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    q0<com.facebook.imagepipeline.image.e> f12445q;
    @Nullable
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    q0<com.facebook.imagepipeline.image.e> f12446r;
    @Nullable
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    q0<com.facebook.common.references.a<PooledByteBuffer>> f12447s;
    @Nullable
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    q0<com.facebook.common.references.a<PooledByteBuffer>> f12448t;
    @Nullable
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    q0<com.facebook.common.references.a<PooledByteBuffer>> f12449u;
    @Nullable
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    q0<Void> f12450v;
    @Nullable
    @VisibleForTesting

    /* renamed from: w  reason: collision with root package name */
    q0<Void> f12451w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private q0<com.facebook.imagepipeline.image.e> f12452x;
    @Nullable
    @VisibleForTesting

    /* renamed from: y  reason: collision with root package name */
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12453y;
    @Nullable
    @VisibleForTesting

    /* renamed from: z  reason: collision with root package name */
    q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f12454z;

    public r(ContentResolver contentResolver, q producerFactory, l0 networkFetcher, boolean resizeAndRotateEnabledForNetwork, boolean webpSupportEnabled, d1 threadHandoffProducerQueue, boolean downSampleEnabled, boolean useBitmapPrepareToDraw, boolean partialImageCachingEnabled, boolean diskCacheEnabled, s1.d imageTranscoderFactory, boolean isEncodedMemoryCacheProbingEnabled, boolean isDiskCacheProbingEnabled, boolean allowDelay) {
        this.f12429a = contentResolver;
        this.f12430b = producerFactory;
        this.f12431c = networkFetcher;
        this.f12432d = resizeAndRotateEnabledForNetwork;
        this.f12433e = webpSupportEnabled;
        this.f12435g = threadHandoffProducerQueue;
        this.f12436h = downSampleEnabled;
        this.f12437i = useBitmapPrepareToDraw;
        this.f12434f = partialImageCachingEnabled;
        this.f12438j = diskCacheEnabled;
        this.f12439k = imageTranscoderFactory;
        this.f12440l = isEncodedMemoryCacheProbingEnabled;
        this.f12441m = isDiskCacheProbingEnabled;
        this.f12442n = allowDelay;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> A() {
        if (this.F == null) {
            this.F = E(this.f12430b.C());
        }
        return this.F;
    }

    private static String B(Uri uri) {
        String valueOf = String.valueOf(uri);
        if (valueOf.length() > 30) {
            return valueOf.substring(0, 30) + "...";
        }
        return valueOf;
    }

    private q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> C(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> b10 = this.f12430b.b(this.f12430b.d(this.f12430b.e(inputProducer)), this.f12435g);
        if (!this.f12440l && !this.f12441m) {
            return this.f12430b.c(b10);
        }
        return this.f12430b.g(this.f12430b.c(b10));
    }

    private q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> D(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#newBitmapCacheGetToDecodeSequence");
        }
        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> C = C(this.f12430b.j(inputProducer));
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return C;
    }

    private q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> E(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return F(inputProducer, new h1[]{this.f12430b.t()});
    }

    private q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> F(q0<com.facebook.imagepipeline.image.e> inputProducer, h1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return D(J(H(inputProducer), thumbnailProducers));
    }

    private q0<com.facebook.imagepipeline.image.e> G(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        com.facebook.imagepipeline.producers.r m9;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#newDiskCacheSequence");
        }
        if (this.f12434f) {
            m9 = this.f12430b.m(this.f12430b.z(inputProducer));
        } else {
            m9 = this.f12430b.m(inputProducer);
        }
        com.facebook.imagepipeline.producers.q l10 = this.f12430b.l(m9);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return l10;
    }

    private q0<com.facebook.imagepipeline.image.e> H(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        if (t0.c.f93749a && (!this.f12433e || t0.c.f93752d == null)) {
            inputProducer = this.f12430b.H(inputProducer);
        }
        if (this.f12438j) {
            inputProducer = G(inputProducer);
        }
        t o9 = this.f12430b.o(inputProducer);
        if (this.f12441m) {
            return this.f12430b.n(this.f12430b.p(o9));
        }
        return this.f12430b.n(o9);
    }

    private q0<com.facebook.imagepipeline.image.e> I(h1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return this.f12430b.D(this.f12430b.G(thumbnailProducers), true, this.f12439k);
    }

    private q0<com.facebook.imagepipeline.image.e> J(q0<com.facebook.imagepipeline.image.e> inputProducer, h1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return q.h(I(thumbnailProducers), this.f12430b.F(this.f12430b.D(q.a(inputProducer), true, this.f12439k)));
    }

    private static void K(ImageRequest imageRequest) {
        com.facebook.common.internal.j.i(imageRequest);
        com.facebook.common.internal.j.d(Boolean.valueOf(imageRequest.l().getValue() <= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()));
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> a() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalContentUriFetchToEncodeMemorySequence");
        }
        if (this.f12445q == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalContentUriFetchToEncodeMemorySequence:init");
            }
            this.f12445q = this.f12430b.b(H(this.f12430b.r()), this.f12435g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12445q;
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> b() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence");
        }
        if (this.f12444p == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence:init");
            }
            this.f12444p = this.f12430b.b(H(this.f12430b.u()), this.f12435g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12444p;
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> c() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence");
        }
        if (this.f12446r == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence:init");
            }
            this.f12446r = this.f12430b.b(f(), this.f12435g);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12446r;
    }

    private q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> d(ImageRequest imageRequest) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getBasicDecodedImageSequence");
            }
            com.facebook.common.internal.j.i(imageRequest);
            Uri w9 = imageRequest.w();
            com.facebook.common.internal.j.j(w9, "Uri is null.");
            int x9 = imageRequest.x();
            if (x9 != 0) {
                switch (x9) {
                    case 2:
                        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> v9 = v();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return v9;
                    case 3:
                        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> t9 = t();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return t9;
                    case 4:
                        if (imageRequest.j() && Build.VERSION.SDK_INT >= 29) {
                            q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> q9 = q();
                            if (com.facebook.imagepipeline.systrace.b.e()) {
                                com.facebook.imagepipeline.systrace.b.c();
                            }
                            return q9;
                        } else if (q0.a.f(this.f12429a.getType(w9))) {
                            q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> v10 = v();
                            if (com.facebook.imagepipeline.systrace.b.e()) {
                                com.facebook.imagepipeline.systrace.b.c();
                            }
                            return v10;
                        } else {
                            q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> p9 = p();
                            if (com.facebook.imagepipeline.systrace.b.e()) {
                                com.facebook.imagepipeline.systrace.b.c();
                            }
                            return p9;
                        }
                    case 5:
                        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> n9 = n();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return n9;
                    case 6:
                        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> u9 = u();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return u9;
                    case 7:
                        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> g4 = g();
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                        }
                        return g4;
                    case 8:
                        return A();
                    default:
                        throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + B(w9));
                }
            }
            q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> x10 = x();
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            return x10;
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> e(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> q0Var;
        q0Var = this.I.get(inputProducer);
        if (q0Var == null) {
            q0Var = this.f12430b.f(inputProducer);
            this.I.put(inputProducer, q0Var);
        }
        return q0Var;
    }

    private synchronized q0<com.facebook.imagepipeline.image.e> f() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence");
        }
        if (this.f12452x == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence:init");
            }
            com.facebook.imagepipeline.producers.a a10 = q.a((q0) com.facebook.common.internal.j.i(H(this.f12430b.y(this.f12431c))));
            this.f12452x = a10;
            this.f12452x = this.f12430b.D(a10, this.f12432d && !this.f12436h, this.f12439k);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12452x;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> g() {
        if (this.D == null) {
            q0<com.facebook.imagepipeline.image.e> i4 = this.f12430b.i();
            if (t0.c.f93749a && (!this.f12433e || t0.c.f93752d == null)) {
                i4 = this.f12430b.H(i4);
            }
            this.D = D(this.f12430b.D(q.a(i4), true, this.f12439k));
        }
        return this.D;
    }

    private synchronized q0<Void> i(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<Void> q0Var;
        q0Var = this.H.get(inputProducer);
        if (q0Var == null) {
            q0Var = this.f12430b.E(inputProducer);
            this.H.put(inputProducer, q0Var);
        }
        return q0Var;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> k(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        return this.f12430b.k(inputProducer);
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> n() {
        if (this.C == null) {
            this.C = E(this.f12430b.q());
        }
        return this.C;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> p() {
        if (this.A == null) {
            this.A = F(this.f12430b.r(), new h1[]{this.f12430b.s(), this.f12430b.t()});
        }
        return this.A;
    }

    @RequiresApi(29)
    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> q() {
        if (this.E == null) {
            this.E = C(this.f12430b.w());
        }
        return this.E;
    }

    private synchronized q0<Void> s() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence");
        }
        if (this.f12450v == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence:init");
            }
            this.f12450v = this.f12430b.E(b());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12450v;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> t() {
        if (this.f12453y == null) {
            this.f12453y = E(this.f12430b.u());
        }
        return this.f12453y;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> u() {
        if (this.B == null) {
            this.B = E(this.f12430b.v());
        }
        return this.B;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> v() {
        if (this.f12454z == null) {
            this.f12454z = C(this.f12430b.x());
        }
        return this.f12454z;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> x() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchSequence");
        }
        if (this.f12443o == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchSequence:init");
            }
            this.f12443o = D(f());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12443o;
    }

    private synchronized q0<Void> y() {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence");
        }
        if (this.f12451w == null) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence:init");
            }
            this.f12451w = this.f12430b.E(c());
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return this.f12451w;
    }

    private synchronized q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> z(q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer) {
        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> q0Var;
        q0Var = this.G.get(inputProducer);
        if (q0Var == null) {
            q0Var = this.f12430b.A(this.f12430b.B(inputProducer));
            this.G.put(inputProducer, q0Var);
        }
        return q0Var;
    }

    public q0<Void> h(ImageRequest imageRequest) {
        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> d4 = d(imageRequest);
        if (this.f12437i) {
            d4 = e(d4);
        }
        return i(d4);
    }

    public q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> j(ImageRequest imageRequest) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getDecodedImageProducerSequence");
        }
        q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> d4 = d(imageRequest);
        if (imageRequest.m() != null) {
            d4 = z(d4);
        }
        if (this.f12437i) {
            d4 = e(d4);
        }
        if (this.f12442n && imageRequest.h() > 0) {
            d4 = k(d4);
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return d4;
    }

    public q0<Void> l(ImageRequest imageRequest) {
        K(imageRequest);
        int x9 = imageRequest.x();
        if (x9 != 0) {
            if (x9 != 2 && x9 != 3) {
                Uri w9 = imageRequest.w();
                throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + B(w9));
            }
            return s();
        }
        return y();
    }

    public q0<com.facebook.common.references.a<PooledByteBuffer>> m(ImageRequest imageRequest) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getEncodedImageProducerSequence");
            }
            K(imageRequest);
            Uri w9 = imageRequest.w();
            int x9 = imageRequest.x();
            if (x9 == 0) {
                q0<com.facebook.common.references.a<PooledByteBuffer>> w10 = w();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return w10;
            } else if (x9 == 2 || x9 == 3) {
                q0<com.facebook.common.references.a<PooledByteBuffer>> r9 = r();
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
                return r9;
            } else if (x9 == 4) {
                return o();
            } else {
                throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + B(w9));
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public q0<com.facebook.common.references.a<PooledByteBuffer>> o() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalContentUriFetchEncodedImageProducerSequence");
            }
            if (this.f12448t == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalContentUriFetchEncodedImageProducerSequence:init");
                }
                this.f12448t = new x0(a());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f12448t;
    }

    public q0<com.facebook.common.references.a<PooledByteBuffer>> r() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchEncodedImageProducerSequence");
            }
            if (this.f12447s == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getLocalFileFetchEncodedImageProducerSequence:init");
                }
                this.f12447s = new x0(b());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f12447s;
    }

    public q0<com.facebook.common.references.a<PooledByteBuffer>> w() {
        synchronized (this) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchEncodedImageProducerSequence");
            }
            if (this.f12449u == null) {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("ProducerSequenceFactory#getNetworkFetchEncodedImageProducerSequence:init");
                }
                this.f12449u = new x0(c());
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
        return this.f12449u;
    }
}
