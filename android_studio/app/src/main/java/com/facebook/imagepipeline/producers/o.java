package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: DelayProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class o implements q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> {

    /* renamed from: a  reason: collision with root package name */
    private final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> f13150a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f13151b;

    /* compiled from: DelayProducer.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f13152a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s0 f13153b;

        a(final l val$context, final s0 val$consumer) {
            this.f13152a = val$context;
            this.f13153b = val$consumer;
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.f13150a.b(this.f13152a, this.f13153b);
        }
    }

    public o(final q0<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> inputProducer, @r7.h final ScheduledExecutorService backgroundTasksExecutor) {
        this.f13150a = inputProducer;
        this.f13151b = backgroundTasksExecutor;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> consumer, final s0 context) {
        ImageRequest c10 = context.c();
        ScheduledExecutorService scheduledExecutorService = this.f13151b;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.schedule(new a(consumer, context), c10.h(), TimeUnit.MILLISECONDS);
        } else {
            this.f13150a.b(consumer, context);
        }
    }
}
