package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.util.TriState;
import com.facebook.imagepipeline.producers.a0;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.protocol.y;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: ResizeAndRotateProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class y0 implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f13291f = "ResizeAndRotateProducer";

    /* renamed from: g  reason: collision with root package name */
    private static final String f13292g = "Image format";

    /* renamed from: h  reason: collision with root package name */
    private static final String f13293h = "Original size";

    /* renamed from: i  reason: collision with root package name */
    private static final String f13294i = "Requested size";

    /* renamed from: j  reason: collision with root package name */
    private static final String f13295j = "Transcoding result";

    /* renamed from: k  reason: collision with root package name */
    private static final String f13296k = "Transcoder id";
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    static final int f13297l = 100;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13298a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f13299b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13300c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f13301d;

    /* renamed from: e  reason: collision with root package name */
    private final s1.d f13302e;

    /* compiled from: ResizeAndRotateProducer.java */
    /* loaded from: classes.dex */
    private class a extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final boolean f13303i;

        /* renamed from: j  reason: collision with root package name */
        private final s1.d f13304j;

        /* renamed from: k  reason: collision with root package name */
        private final s0 f13305k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f13306l;

        /* renamed from: m  reason: collision with root package name */
        private final a0 f13307m;

        /* compiled from: ResizeAndRotateProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.y0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0109a implements a0.d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ y0 f13309a;

            C0109a(final y0 val$this$0) {
                this.f13309a = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.a0.d
            public void a(com.facebook.imagepipeline.image.e encodedImage, int status) {
                a aVar = a.this;
                aVar.y(encodedImage, status, (s1.c) com.facebook.common.internal.j.i(aVar.f13304j.createImageTranscoder(encodedImage.y(), a.this.f13303i)));
            }
        }

        /* compiled from: ResizeAndRotateProducer.java */
        /* loaded from: classes.dex */
        class b extends e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ y0 f13311a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ l f13312b;

            b(final y0 val$consumer, final l val$this$0) {
                this.f13311a = val$consumer;
                this.f13312b = val$this$0;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void a() {
                if (a.this.f13305k.l()) {
                    a.this.f13307m.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
            public void b() {
                a.this.f13307m.c();
                a.this.f13306l = true;
                this.f13312b.b();
            }
        }

        a(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext, final boolean isResizingEnabled, final s1.d imageTranscoderFactory) {
            super(consumer);
            this.f13306l = false;
            this.f13305k = producerContext;
            Boolean t9 = producerContext.c().t();
            this.f13303i = t9 != null ? t9.booleanValue() : isResizingEnabled;
            this.f13304j = imageTranscoderFactory;
            this.f13307m = new a0(y0.this.f13298a, new C0109a(y0.this), 100);
            producerContext.f(new b(y0.this, consumer));
        }

        @r7.h
        private com.facebook.imagepipeline.image.e A(com.facebook.imagepipeline.image.e encodedImage, int angle) {
            com.facebook.imagepipeline.image.e b10 = com.facebook.imagepipeline.image.e.b(encodedImage);
            if (b10 != null) {
                b10.r0(angle);
            }
            return b10;
        }

        @r7.h
        private Map<String, String> B(com.facebook.imagepipeline.image.e encodedImage, @r7.h com.facebook.imagepipeline.common.d resizeOptions, @r7.h s1.b transcodeResult, @r7.h String transcoderId) {
            String str;
            if (this.f13305k.k().f(this.f13305k, y0.f13291f)) {
                String str2 = encodedImage.J() + y.b.f83919g + encodedImage.s();
                if (resizeOptions != null) {
                    str = resizeOptions.f12199a + y.b.f83919g + resizeOptions.f12200b;
                } else {
                    str = "Unspecified";
                }
                HashMap hashMap = new HashMap();
                hashMap.put(y0.f13292g, String.valueOf(encodedImage.y()));
                hashMap.put(y0.f13293h, str2);
                hashMap.put(y0.f13294i, str);
                hashMap.put("queueTime", String.valueOf(this.f13307m.f()));
                hashMap.put(y0.f13296k, transcoderId);
                hashMap.put(y0.f13295j, String.valueOf(transcodeResult));
                return ImmutableMap.copyOf((Map) hashMap);
            }
            return null;
        }

        @r7.h
        private com.facebook.imagepipeline.image.e C(com.facebook.imagepipeline.image.e encodedImage) {
            com.facebook.imagepipeline.common.e u9 = this.f13305k.c().u();
            return (u9.h() || !u9.g()) ? encodedImage : A(encodedImage, u9.f());
        }

        @r7.h
        private com.facebook.imagepipeline.image.e D(com.facebook.imagepipeline.image.e encodedImage) {
            return (this.f13305k.c().u().c() || encodedImage.E() == 0 || encodedImage.E() == -1) ? encodedImage : A(encodedImage, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void y(com.facebook.imagepipeline.image.e encodedImage, int status, s1.c imageTranscoder) {
            this.f13305k.k().d(this.f13305k, y0.f13291f);
            ImageRequest c10 = this.f13305k.c();
            com.facebook.common.memory.i c11 = y0.this.f13299b.c();
            try {
                s1.b c12 = imageTranscoder.c(encodedImage, c11, c10.u(), c10.s(), null, 85);
                if (c12.a() != 2) {
                    Map<String, String> B = B(encodedImage, c10.s(), c12, imageTranscoder.a());
                    com.facebook.common.references.a D = com.facebook.common.references.a.D(c11.a());
                    try {
                        com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(D);
                        eVar.q0(com.facebook.imageformat.b.f11797a);
                        eVar.d0();
                        this.f13305k.k().j(this.f13305k, y0.f13291f, B);
                        if (c12.a() != 1) {
                            status |= 16;
                        }
                        r().c(eVar, status);
                        com.facebook.imagepipeline.image.e.d(eVar);
                        return;
                    } finally {
                        com.facebook.common.references.a.k(D);
                    }
                }
                throw new RuntimeException("Error while transcoding the image");
            } catch (Exception e4) {
                this.f13305k.k().k(this.f13305k, y0.f13291f, e4, null);
                if (com.facebook.imagepipeline.producers.b.f(status)) {
                    r().a(e4);
                }
            } finally {
                c11.close();
            }
        }

        private void z(com.facebook.imagepipeline.image.e newResult, int status, com.facebook.imageformat.c imageFormat) {
            com.facebook.imagepipeline.image.e D;
            if (imageFormat != com.facebook.imageformat.b.f11797a && imageFormat != com.facebook.imageformat.b.f11807k) {
                D = C(newResult);
            } else {
                D = D(newResult);
            }
            r().c(D, status);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: E */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            if (this.f13306l) {
                return;
            }
            boolean f10 = com.facebook.imagepipeline.producers.b.f(status);
            if (newResult == null) {
                if (f10) {
                    r().c(null, 1);
                    return;
                }
                return;
            }
            com.facebook.imageformat.c y9 = newResult.y();
            TriState h4 = y0.h(this.f13305k.c(), newResult, (s1.c) com.facebook.common.internal.j.i(this.f13304j.createImageTranscoder(y9, this.f13303i)));
            if (f10 || h4 != TriState.UNSET) {
                if (h4 != TriState.YES) {
                    z(newResult, status, y9);
                } else if (this.f13307m.k(newResult, status)) {
                    if (f10 || this.f13305k.l()) {
                        this.f13307m.h();
                    }
                }
            }
        }
    }

    public y0(final Executor executor, final com.facebook.common.memory.g pooledByteBufferFactory, final q0<com.facebook.imagepipeline.image.e> inputProducer, final boolean isResizingEnabled, final s1.d imageTranscoderFactory) {
        this.f13298a = (Executor) com.facebook.common.internal.j.i(executor);
        this.f13299b = (com.facebook.common.memory.g) com.facebook.common.internal.j.i(pooledByteBufferFactory);
        this.f13300c = (q0) com.facebook.common.internal.j.i(inputProducer);
        this.f13302e = (s1.d) com.facebook.common.internal.j.i(imageTranscoderFactory);
        this.f13301d = isResizingEnabled;
    }

    private static boolean f(com.facebook.imagepipeline.common.e rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        return !rotationOptions.c() && (s1.e.e(rotationOptions, encodedImage) != 0 || g(rotationOptions, encodedImage));
    }

    private static boolean g(com.facebook.imagepipeline.common.e rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        if (rotationOptions.g() && !rotationOptions.c()) {
            return s1.e.f93243g.contains(Integer.valueOf(encodedImage.q()));
        }
        encodedImage.o0(0);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState h(ImageRequest request, com.facebook.imagepipeline.image.e encodedImage, s1.c imageTranscoder) {
        if (encodedImage != null && encodedImage.y() != com.facebook.imageformat.c.f11810c) {
            if (!imageTranscoder.d(encodedImage.y())) {
                return TriState.NO;
            }
            return TriState.valueOf(f(request.u(), encodedImage) || imageTranscoder.b(encodedImage, request.u(), request.s()));
        }
        return TriState.UNSET;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 context) {
        this.f13300c.b(new a(consumer, context, this.f13301d, this.f13302e), context);
    }
}
