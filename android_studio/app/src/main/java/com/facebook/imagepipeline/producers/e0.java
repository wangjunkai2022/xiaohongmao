package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* compiled from: LocalFetchProducer.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class e0 implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12944a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.g f12945b;

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes.dex */
    class a extends a1<com.facebook.imagepipeline.image.e> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ ImageRequest f12946k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ u0 f12947l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ s0 f12948m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l consumer, u0 producerListener, s0 producerContext, String producerName, final ImageRequest val$producerContext, final u0 val$listener, final s0 val$imageRequest) {
            super(consumer, producerListener, producerContext, producerName);
            this.f12946k = val$producerContext;
            this.f12947l = val$listener;
            this.f12948m = val$imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        /* renamed from: j */
        public void b(com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @r7.h
        /* renamed from: k */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            com.facebook.imagepipeline.image.e d4 = e0.this.d(this.f12946k);
            if (d4 == null) {
                this.f12947l.b(this.f12948m, e0.this.f(), false);
                this.f12948m.j(com.google.android.gms.common.internal.q.f29166b);
                return null;
            }
            d4.d0();
            this.f12947l.b(this.f12948m, e0.this.f(), true);
            this.f12948m.j(com.google.android.gms.common.internal.q.f29166b);
            return d4;
        }
    }

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a1 f12950a;

        b(final a1 val$cancellableProducerRunnable) {
            this.f12950a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            this.f12950a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory) {
        this.f12944a = executor;
        this.f12945b = pooledByteBufferFactory;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        u0 k10 = producerContext.k();
        ImageRequest c10 = producerContext.c();
        producerContext.h(com.google.android.gms.common.internal.q.f29166b, "fetch");
        a aVar = new a(consumer, k10, producerContext, f(), c10, k10, producerContext);
        producerContext.f(new b(aVar));
        this.f12944a.execute(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.facebook.imagepipeline.image.e c(InputStream inputStream, int length) throws IOException {
        com.facebook.common.references.a D;
        com.facebook.common.references.a aVar = null;
        try {
            if (length <= 0) {
                D = com.facebook.common.references.a.D(this.f12945b.a(inputStream));
            } else {
                D = com.facebook.common.references.a.D(this.f12945b.b(inputStream, length));
            }
            aVar = D;
            return new com.facebook.imagepipeline.image.e(aVar);
        } finally {
            com.facebook.common.internal.c.b(inputStream);
            com.facebook.common.references.a.k(aVar);
        }
    }

    @r7.h
    protected abstract com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public com.facebook.imagepipeline.image.e e(InputStream inputStream, int length) throws IOException {
        return c(inputStream, length);
    }

    protected abstract String f();
}
