package com.facebook.imagepipeline.producers;

import com.facebook.common.util.TriState;
import com.facebook.infer.annotation.Nullsafe;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* compiled from: WebpTranscodeProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class j1 implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13047d = "WebpTranscodeProducer";

    /* renamed from: e  reason: collision with root package name */
    private static final int f13048e = 80;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f13049a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f13050b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13051c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebpTranscodeProducer.java */
    /* loaded from: classes.dex */
    public class a extends a1<com.facebook.imagepipeline.image.e> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f13052k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l consumer, u0 producerListener, s0 producerContext, String producerName, final com.facebook.imagepipeline.image.e val$encodedImageCopy) {
            super(consumer, producerListener, producerContext, producerName);
            this.f13052k = val$encodedImageCopy;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        public void d() {
            com.facebook.imagepipeline.image.e.d(this.f13052k);
            super.d();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        public void e(Exception e4) {
            com.facebook.imagepipeline.image.e.d(this.f13052k);
            super.e(e4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        /* renamed from: k */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            com.facebook.common.memory.i c10 = j1.this.f13050b.c();
            try {
                j1.g(this.f13052k, c10);
                com.facebook.common.references.a D = com.facebook.common.references.a.D(c10.a());
                com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e(D);
                eVar.h(this.f13052k);
                com.facebook.common.references.a.k(D);
                return eVar;
            } finally {
                c10.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        /* renamed from: l */
        public void f(com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(this.f13052k);
            super.f(result);
        }
    }

    /* compiled from: WebpTranscodeProducer.java */
    /* loaded from: classes.dex */
    private class b extends p<com.facebook.imagepipeline.image.e, com.facebook.imagepipeline.image.e> {

        /* renamed from: i  reason: collision with root package name */
        private final s0 f13054i;

        /* renamed from: j  reason: collision with root package name */
        private TriState f13055j;

        public b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 context) {
            super(consumer);
            this.f13054i = context;
            this.f13055j = TriState.UNSET;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.b
        /* renamed from: s */
        public void j(@r7.h com.facebook.imagepipeline.image.e newResult, int status) {
            if (this.f13055j == TriState.UNSET && newResult != null) {
                this.f13055j = j1.h(newResult);
            }
            if (this.f13055j == TriState.NO) {
                r().c(newResult, status);
            } else if (com.facebook.imagepipeline.producers.b.f(status)) {
                if (this.f13055j == TriState.YES && newResult != null) {
                    j1.this.i(newResult, r(), this.f13054i);
                } else {
                    r().c(newResult, status);
                }
            }
        }
    }

    public j1(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f13049a = (Executor) com.facebook.common.internal.j.i(executor);
        this.f13050b = (com.facebook.common.memory.g) com.facebook.common.internal.j.i(pooledByteBufferFactory);
        this.f13051c = (q0) com.facebook.common.internal.j.i(inputProducer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.common.memory.i outputStream) throws Exception {
        InputStream inputStream = (InputStream) com.facebook.common.internal.j.i(encodedImage.A());
        com.facebook.imageformat.c d4 = com.facebook.imageformat.d.d(inputStream);
        if (d4 != com.facebook.imageformat.b.f11802f && d4 != com.facebook.imageformat.b.f11804h) {
            if (d4 != com.facebook.imageformat.b.f11803g && d4 != com.facebook.imageformat.b.f11805i) {
                throw new IllegalArgumentException("Wrong image format");
            }
            com.facebook.imagepipeline.nativecode.i.a().a(inputStream, outputStream);
            encodedImage.q0(com.facebook.imageformat.b.f11798b);
            return;
        }
        com.facebook.imagepipeline.nativecode.i.a().c(inputStream, outputStream, 80);
        encodedImage.q0(com.facebook.imageformat.b.f11797a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState h(final com.facebook.imagepipeline.image.e encodedImage) {
        com.facebook.common.internal.j.i(encodedImage);
        com.facebook.imageformat.c d4 = com.facebook.imageformat.d.d((InputStream) com.facebook.common.internal.j.i(encodedImage.A()));
        if (com.facebook.imageformat.b.b(d4)) {
            com.facebook.imagepipeline.nativecode.h a10 = com.facebook.imagepipeline.nativecode.i.a();
            if (a10 == null) {
                return TriState.NO;
            }
            return TriState.valueOf(!a10.b(d4));
        } else if (d4 == com.facebook.imageformat.c.f11810c) {
            return TriState.UNSET;
        } else {
            return TriState.NO;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final com.facebook.imagepipeline.image.e originalResult, final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        com.facebook.common.internal.j.i(originalResult);
        this.f13049a.execute(new a(consumer, producerContext.k(), producerContext, f13047d, com.facebook.imagepipeline.image.e.b(originalResult)));
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 context) {
        this.f13051c.b(new b(consumer, context), context);
    }
}
