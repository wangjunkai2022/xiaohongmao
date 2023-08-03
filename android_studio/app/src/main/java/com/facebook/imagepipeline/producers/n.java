package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.util.ExceptionWithNoStacktrace;
import com.facebook.imagepipeline.producers.a0;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.protocol.y;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: DecodeProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class n implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: m  reason: collision with root package name */
    public static final String f13099m = "DecodeProducer";

    /* renamed from: n  reason: collision with root package name */
    private static final int f13100n = 104857600;

    /* renamed from: o  reason: collision with root package name */
    public static final String f13101o = "bitmapSize";

    /* renamed from: p  reason: collision with root package name */
    public static final String f13102p = "hasGoodQuality";

    /* renamed from: q  reason: collision with root package name */
    public static final String f13103q = "isFinal";

    /* renamed from: r  reason: collision with root package name */
    public static final String f13104r = "imageFormat";

    /* renamed from: s  reason: collision with root package name */
    public static final String f13105s = "byteCount";

    /* renamed from: t  reason: collision with root package name */
    public static final String f13106t = "encodedImageSize";

    /* renamed from: u  reason: collision with root package name */
    public static final String f13107u = "requestedImageSize";

    /* renamed from: v  reason: collision with root package name */
    public static final String f13108v = "sampleSize";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.memory.a f13109a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f13110b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.b f13111c;

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.imagepipeline.decoder.d f13112d;

    /* renamed from: e  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13113e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f13114f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f13115g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f13116h;

    /* renamed from: i  reason: collision with root package name */
    private final int f13117i;

    /* renamed from: j  reason: collision with root package name */
    private final com.facebook.imagepipeline.core.a f13118j;
    @r7.h

    /* renamed from: k  reason: collision with root package name */
    private final Runnable f13119k;

    /* renamed from: l  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f13120l;

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes.dex */
    private class a extends c {
        public a(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext, final boolean decodeCancellationEnabled, final int maxBitmapSize) {
            super(consumer, producerContext, decodeCancellationEnabled, maxBitmapSize);
        }

        @Override // com.facebook.imagepipeline.producers.n.c
        protected com.facebook.imagepipeline.image.j A() {
            return com.facebook.imagepipeline.image.h.d(0, false, false);
        }

        @Override // com.facebook.imagepipeline.producers.n.c
        protected synchronized boolean K(@r7.h com.facebook.imagepipeline.image.e encodedImage, int status) {
            if (com.facebook.imagepipeline.producers.b.g(status)) {
                return false;
            }
            return super.K(encodedImage, status);
        }

        @Override // com.facebook.imagepipeline.producers.n.c
        protected int z(com.facebook.imagepipeline.image.e encodedImage) {
            return encodedImage.H();
        }
    }

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes.dex */
    private class b extends c {

        /* renamed from: q  reason: collision with root package name */
        private final com.facebook.imagepipeline.decoder.e f13122q;

        /* renamed from: r  reason: collision with root package name */
        private final com.facebook.imagepipeline.decoder.d f13123r;

        /* renamed from: s  reason: collision with root package name */
        private int f13124s;

        public b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext, final com.facebook.imagepipeline.decoder.e progressiveJpegParser, final com.facebook.imagepipeline.decoder.d progressiveJpegConfig, final boolean decodeCancellationEnabled, final int maxBitmapSize) {
            super(consumer, producerContext, decodeCancellationEnabled, maxBitmapSize);
            this.f13122q = (com.facebook.imagepipeline.decoder.e) com.facebook.common.internal.j.i(progressiveJpegParser);
            this.f13123r = (com.facebook.imagepipeline.decoder.d) com.facebook.common.internal.j.i(progressiveJpegConfig);
            this.f13124s = 0;
        }

        @Override // com.facebook.imagepipeline.producers.n.c
        protected com.facebook.imagepipeline.image.j A() {
            return this.f13123r.b(this.f13122q.d());
        }

        @Override // com.facebook.imagepipeline.producers.n.c
        protected synchronized boolean K(@r7.h com.facebook.imagepipeline.image.e encodedImage, int status) {
            boolean K = super.K(encodedImage, status);
            if ((com.facebook.imagepipeline.producers.b.g(status) || com.facebook.imagepipeline.producers.b.o(status, 8)) && !com.facebook.imagepipeline.producers.b.o(status, 4) && com.facebook.imagepipeline.image.e.b0(encodedImage) && encodedImage.y() == com.facebook.imageformat.b.f11797a) {
                if (!this.f13122q.h(encodedImage)) {
                    return false;
                }
                int d4 = this.f13122q.d();
                int i4 = this.f13124s;
                if (d4 <= i4) {
                    return false;
                }
                if (d4 < this.f13123r.a(i4) && !this.f13122q.e()) {
                    return false;
                }
                this.f13124s = d4;
            }
            return K;
        }

        @Override // com.facebook.imagepipeline.producers.n.c
        protected int z(com.facebook.imagepipeline.image.e encodedImage) {
            return this.f13122q.c();
        }
    }

    /* compiled from: DecodeProducer.java */
    /* loaded from: classes.dex */
    private abstract class c extends p<com.facebook.imagepipeline.image.e, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

        /* renamed from: p  reason: collision with root package name */
        private static final int f13126p = 10;

        /* renamed from: i  reason: collision with root package name */
        private final String f13127i;

        /* renamed from: j  reason: collision with root package name */
        private final s0 f13128j;

        /* renamed from: k  reason: collision with root package name */
        private final u0 f13129k;

        /* renamed from: l  reason: collision with root package name */
        private final com.facebook.imagepipeline.common.b f13130l;
        @s7.a("this")

        /* renamed from: m  reason: collision with root package name */
        private boolean f13131m;

        /* renamed from: n  reason: collision with root package name */
        private final a0 f13132n;

        /* compiled from: DecodeProducer.java */
        /* loaded from: classes.dex */
        class a implements a0.d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ n f13134a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ s0 f13135b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f13136c;

            a(final n val$maxBitmapSize, final s0 val$producerContext, final int val$this$0) {
                this.f13134a = val$maxBitmapSize;
                this.f13135b = val$producerContext;
                this.f13136c = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.a0.d
            public void a(com.facebook.imagepipeline.image.e encodedImage, int status) {
                if (encodedImage != null) {
                    c.this.f13128j.e(s0.a.f13228j0, encodedImage.y().b());
                    if (n.this.f13114f || !com.facebook.imagepipeline.producers.b.o(status, 16)) {
                        ImageRequest c10 = this.f13135b.c();
                        if (n.this.f13115g || !com.facebook.common.util.f.n(c10.w())) {
                            encodedImage.s0(s1.a.b(c10.u(), c10.s(), encodedImage, this.f13136c));
                        }
                    }
                    if (this.f13135b.g().G().B()) {
                        c.this.H(encodedImage);
                    }
                    c.this.x(encodedImage, status);
                }
            }
        }

        /* compiled from: DecodeProducer.java */
        /* loaded from: classes.dex */
        class b extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ n f13138a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ boolean f13139b;

            b(final n val$decodeCancellationEnabled, final boolean val$this$0) {
                this.f13138a = val$decodeCancellationEnabled;
                this.f13139b = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void a() {
                if (c.this.f13128j.l()) {
                    c.this.f13132n.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void b() {
                if (this.f13139b) {
                    c.this.B();
                }
            }
        }

        public c(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext, final boolean decodeCancellationEnabled, final int maxBitmapSize) {
            super(consumer);
            this.f13127i = "ProgressiveDecoder";
            this.f13128j = producerContext;
            this.f13129k = producerContext.k();
            com.facebook.imagepipeline.common.b i4 = producerContext.c().i();
            this.f13130l = i4;
            this.f13131m = false;
            this.f13132n = new a0(n.this.f13110b, new a(n.this, producerContext, maxBitmapSize), i4.f12174a);
            producerContext.f(new b(n.this, decodeCancellationEnabled));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B() {
            G(true);
            r().b();
        }

        private void C(Throwable t9) {
            G(true);
            r().a(t9);
        }

        private void D(final com.facebook.imagepipeline.image.c decodedImage, final int status) {
            com.facebook.common.references.a<com.facebook.imagepipeline.image.c> b10 = n.this.f13118j.b(decodedImage);
            try {
                G(com.facebook.imagepipeline.producers.b.f(status));
                r().c(b10, status);
            } finally {
                com.facebook.common.references.a.k(b10);
            }
        }

        private com.facebook.imagepipeline.image.c E(com.facebook.imagepipeline.image.e encodedImage, int length, com.facebook.imagepipeline.image.j quality) {
            boolean z9 = n.this.f13119k != null && ((Boolean) n.this.f13120l.get()).booleanValue();
            try {
                return n.this.f13111c.a(encodedImage, length, quality, this.f13130l);
            } catch (OutOfMemoryError e4) {
                if (z9) {
                    n.this.f13119k.run();
                    System.gc();
                    return n.this.f13111c.a(encodedImage, length, quality, this.f13130l);
                }
                throw e4;
            }
        }

        private synchronized boolean F() {
            return this.f13131m;
        }

        private void G(boolean shouldFinish) {
            synchronized (this) {
                if (shouldFinish) {
                    if (!this.f13131m) {
                        r().d(1.0f);
                        this.f13131m = true;
                        this.f13132n.c();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void H(final com.facebook.imagepipeline.image.e encodedImage) {
            if (encodedImage.y() != com.facebook.imageformat.b.f11797a) {
                return;
            }
            encodedImage.s0(s1.a.c(encodedImage, com.facebook.imageutils.a.e(this.f13130l.f12180g), n.f13100n));
        }

        private void J(com.facebook.imagepipeline.image.e encodedImage, com.facebook.imagepipeline.image.c image) {
            this.f13128j.e(s0.a.f13229k0, Integer.valueOf(encodedImage.J()));
            this.f13128j.e(s0.a.f13230l0, Integer.valueOf(encodedImage.s()));
            this.f13128j.e(s0.a.f13231m0, Integer.valueOf(encodedImage.H()));
            if (image instanceof com.facebook.imagepipeline.image.b) {
                Bitmap k10 = ((com.facebook.imagepipeline.image.b) image).k();
                this.f13128j.e("bitmap_config", String.valueOf(k10 == null ? null : k10.getConfig()));
            }
            if (image != null) {
                image.i(this.f13128j.getExtras());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void x(com.facebook.imagepipeline.image.e r21, int r22) {
            /*
                Method dump skipped, instructions count: 322
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.n.c.x(com.facebook.imagepipeline.image.e, int):void");
        }

        @r7.h
        private Map<String, String> y(@r7.h com.facebook.imagepipeline.image.c image, long queueTime, com.facebook.imagepipeline.image.j quality, boolean isFinal, String imageFormatName, String encodedImageSize, String requestImageSize, String sampleSize) {
            Bitmap k10;
            if (this.f13129k.f(this.f13128j, n.f13099m)) {
                String valueOf = String.valueOf(queueTime);
                String valueOf2 = String.valueOf(quality.b());
                String valueOf3 = String.valueOf(isFinal);
                if (image instanceof com.facebook.imagepipeline.image.d) {
                    com.facebook.common.internal.j.i(((com.facebook.imagepipeline.image.d) image).k());
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(n.f13101o, k10.getWidth() + y.b.f83919g + k10.getHeight());
                    hashMap.put("queueTime", valueOf);
                    hashMap.put(n.f13102p, valueOf2);
                    hashMap.put(n.f13103q, valueOf3);
                    hashMap.put("encodedImageSize", encodedImageSize);
                    hashMap.put(n.f13104r, imageFormatName);
                    hashMap.put(n.f13107u, requestImageSize);
                    hashMap.put(n.f13108v, sampleSize);
                    hashMap.put(n.f13105s, k10.getByteCount() + "");
                    return ImmutableMap.copyOf((Map) hashMap);
                }
                HashMap hashMap2 = new HashMap(7);
                hashMap2.put("queueTime", valueOf);
                hashMap2.put(n.f13102p, valueOf2);
                hashMap2.put(n.f13103q, valueOf3);
                hashMap2.put("encodedImageSize", encodedImageSize);
                hashMap2.put(n.f13104r, imageFormatName);
                hashMap2.put(n.f13107u, requestImageSize);
                hashMap2.put(n.f13108v, sampleSize);
                return ImmutableMap.copyOf((Map) hashMap2);
            }
            return null;
        }

        protected abstract com.facebook.imagepipeline.image.j A();

        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: I */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            boolean e4;
            try {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.a("DecodeProducer#onNewResultImpl");
                }
                boolean f10 = com.facebook.imagepipeline.producers.b.f(status);
                if (f10) {
                    if (newResult == null) {
                        C(new ExceptionWithNoStacktrace("Encoded image is null."));
                        if (e4) {
                            return;
                        }
                        return;
                    } else if (!newResult.X()) {
                        C(new ExceptionWithNoStacktrace("Encoded image is not valid."));
                        if (com.facebook.imagepipeline.systrace.b.e()) {
                            com.facebook.imagepipeline.systrace.b.c();
                            return;
                        }
                        return;
                    }
                }
                if (!K(newResult, status)) {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                boolean o9 = com.facebook.imagepipeline.producers.b.o(status, 4);
                if (f10 || o9 || this.f13128j.l()) {
                    this.f13132n.h();
                }
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            } finally {
                if (com.facebook.imagepipeline.systrace.b.e()) {
                    com.facebook.imagepipeline.systrace.b.c();
                }
            }
        }

        protected boolean K(@r7.h com.facebook.imagepipeline.image.e ref, int status) {
            return this.f13132n.k(ref, status);
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        public void h() {
            B();
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        public void i(Throwable t9) {
            C(t9);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        public void k(float progress) {
            super.k(progress * 0.99f);
        }

        protected abstract int z(com.facebook.imagepipeline.image.e encodedImage);
    }

    public n(final com.facebook.common.memory.a byteArrayPool, final Executor executor, final com.facebook.imagepipeline.decoder.b imageDecoder, final com.facebook.imagepipeline.decoder.d progressiveJpegConfig, final boolean downsampleEnabled, final boolean downsampleEnabledForNetwork, final boolean decodeCancellationEnabled, final q0<com.facebook.imagepipeline.image.e> inputProducer, final int maxBitmapSize, final com.facebook.imagepipeline.core.a closeableReferenceFactory, @r7.h final Runnable reclaimMemoryRunnable, com.facebook.common.internal.m<Boolean> recoverFromDecoderOOM) {
        this.f13109a = (com.facebook.common.memory.a) com.facebook.common.internal.j.i(byteArrayPool);
        this.f13110b = (Executor) com.facebook.common.internal.j.i(executor);
        this.f13111c = (com.facebook.imagepipeline.decoder.b) com.facebook.common.internal.j.i(imageDecoder);
        this.f13112d = (com.facebook.imagepipeline.decoder.d) com.facebook.common.internal.j.i(progressiveJpegConfig);
        this.f13114f = downsampleEnabled;
        this.f13115g = downsampleEnabledForNetwork;
        this.f13113e = (q0) com.facebook.common.internal.j.i(inputProducer);
        this.f13116h = decodeCancellationEnabled;
        this.f13117i = maxBitmapSize;
        this.f13118j = closeableReferenceFactory;
        this.f13119k = reclaimMemoryRunnable;
        this.f13120l = recoverFromDecoderOOM;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 producerContext) {
        l<com.facebook.imagepipeline.image.e> bVar;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DecodeProducer#produceResults");
            }
            if (!com.facebook.common.util.f.n(producerContext.c().w())) {
                bVar = new a(consumer, producerContext, this.f13116h, this.f13117i);
            } else {
                bVar = new b(consumer, producerContext, new com.facebook.imagepipeline.decoder.e(this.f13109a), this.f13112d, this.f13116h, this.f13117i);
            }
            this.f13113e.b(bVar, producerContext);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
