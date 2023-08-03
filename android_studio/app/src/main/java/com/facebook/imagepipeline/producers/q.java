package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: DiskCacheReadProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class q implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f13191e = "DiskCacheProducer";

    /* renamed from: f  reason: collision with root package name */
    public static final String f13192f = "cached_value_found";

    /* renamed from: g  reason: collision with root package name */
    public static final String f13193g = "encodedImageSize";

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13194a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.f f13195b;

    /* renamed from: c  reason: collision with root package name */
    private final com.facebook.imagepipeline.cache.g f13196c;

    /* renamed from: d  reason: collision with root package name */
    private final q0<com.facebook.imagepipeline.image.e> f13197d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes.dex */
    public class a implements bolts.g<com.facebook.imagepipeline.image.e, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u0 f13198a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s0 f13199b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l f13200c;

        a(final u0 val$consumer, final s0 val$producerContext, final l val$listener) {
            this.f13198a = val$consumer;
            this.f13199b = val$producerContext;
            this.f13200c = val$listener;
        }

        @Override // bolts.g
        /* renamed from: b */
        public Void a(bolts.h<com.facebook.imagepipeline.image.e> task) throws Exception {
            if (q.f(task)) {
                this.f13198a.c(this.f13199b, q.f13191e, null);
                this.f13200c.b();
            } else if (task.J()) {
                this.f13198a.k(this.f13199b, q.f13191e, task.E(), null);
                q.this.f13197d.b(this.f13200c, this.f13199b);
            } else {
                com.facebook.imagepipeline.image.e F = task.F();
                if (F != null) {
                    u0 u0Var = this.f13198a;
                    s0 s0Var = this.f13199b;
                    u0Var.j(s0Var, q.f13191e, q.e(u0Var, s0Var, true, F.H()));
                    this.f13198a.b(this.f13199b, q.f13191e, true);
                    this.f13199b.j("disk");
                    this.f13200c.d(1.0f);
                    this.f13200c.c(F, 1);
                    F.close();
                } else {
                    u0 u0Var2 = this.f13198a;
                    s0 s0Var2 = this.f13199b;
                    u0Var2.j(s0Var2, q.f13191e, q.e(u0Var2, s0Var2, false, 0));
                    q.this.f13197d.b(this.f13200c, this.f13199b);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes.dex */
    public class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f13202a;

        b(final AtomicBoolean val$isCancelled) {
            this.f13202a = val$isCancelled;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            this.f13202a.set(true);
        }
    }

    public q(com.facebook.imagepipeline.cache.f defaultBufferedDiskCache, com.facebook.imagepipeline.cache.f smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.g cacheKeyFactory, q0<com.facebook.imagepipeline.image.e> inputProducer) {
        this.f13194a = defaultBufferedDiskCache;
        this.f13195b = smallImageBufferedDiskCache;
        this.f13196c = cacheKeyFactory;
        this.f13197d = inputProducer;
    }

    @r7.h
    @VisibleForTesting
    static Map<String, String> e(final u0 listener, final s0 producerContext, final boolean valueFound, final int sizeInBytes) {
        if (listener.f(producerContext, f13191e)) {
            if (valueFound) {
                return ImmutableMap.of("cached_value_found", String.valueOf(valueFound), "encodedImageSize", String.valueOf(sizeInBytes));
            }
            return ImmutableMap.of("cached_value_found", String.valueOf(valueFound));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f(bolts.h<?> task) {
        return task.H() || (task.J() && (task.E() instanceof CancellationException));
    }

    private void g(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext) {
        if (producerContext.s().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            producerContext.h("disk", "nil-result_read");
            consumer.c(null, 1);
            return;
        }
        this.f13197d.b(consumer, producerContext);
    }

    private bolts.g<com.facebook.imagepipeline.image.e, Void> h(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        return new a(producerContext.k(), producerContext, consumer);
    }

    private void i(final AtomicBoolean isCancelled, s0 producerContext) {
        producerContext.f(new b(isCancelled));
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.imagepipeline.image.e> consumer, final s0 producerContext) {
        ImageRequest c10 = producerContext.c();
        if (!producerContext.c().z(16)) {
            g(consumer, producerContext);
            return;
        }
        producerContext.k().d(producerContext, f13191e);
        com.facebook.cache.common.c d4 = this.f13196c.d(c10, producerContext.d());
        com.facebook.imagepipeline.cache.f fVar = c10.f() == ImageRequest.CacheChoice.SMALL ? this.f13195b : this.f13194a;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        fVar.q(d4, atomicBoolean).q(h(consumer, producerContext));
        i(atomicBoolean, producerContext);
    }
}
