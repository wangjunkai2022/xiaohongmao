package com.facebook.imagepipeline.producers;

import android.os.Looper;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ThreadHandoffProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c1<T> implements q0<T> {

    /* renamed from: c  reason: collision with root package name */
    public static final String f12911c = "BackgroundThreadHandoffProducer";

    /* renamed from: a  reason: collision with root package name */
    private final q0<T> f12912a;

    /* renamed from: b  reason: collision with root package name */
    private final d1 f12913b;

    /* compiled from: ThreadHandoffProducer.java */
    /* loaded from: classes.dex */
    class a extends a1<T> {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ u0 f12914k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ s0 f12915l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ l f12916m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l consumer, u0 producerListener, s0 producerContext, String producerName, final u0 val$consumer, final s0 val$context, final l val$producerListener) {
            super(consumer, producerListener, producerContext, producerName);
            this.f12914k = val$consumer;
            this.f12915l = val$context;
            this.f12916m = val$producerListener;
        }

        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        protected void b(@r7.h T ignored) {
        }

        @Override // com.facebook.common.executors.h
        @r7.h
        protected T c() throws Exception {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.a1, com.facebook.common.executors.h
        public void f(@r7.h T ignored) {
            this.f12914k.j(this.f12915l, c1.f12911c, null);
            c1.this.f12912a.b(this.f12916m, this.f12915l);
        }
    }

    /* compiled from: ThreadHandoffProducer.java */
    /* loaded from: classes.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a1 f12918a;

        b(final a1 val$statefulRunnable) {
            this.f12918a = val$statefulRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            this.f12918a.a();
            c1.this.f12913b.b(this.f12918a);
        }
    }

    public c1(final q0<T> inputProducer, final d1 inputThreadHandoffProducerQueue) {
        this.f12912a = (q0) com.facebook.common.internal.j.i(inputProducer);
        this.f12913b = inputThreadHandoffProducerQueue;
    }

    @r7.h
    private static String e(s0 context) {
        if (p1.a.b()) {
            return "ThreadHandoffProducer_produceResults_" + context.getId();
        }
        return null;
    }

    private static boolean f(s0 context) {
        return context.g().G().o() && Looper.getMainLooper().getThread() != Thread.currentThread();
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<T> consumer, final s0 context) {
        boolean e4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("ThreadHandoffProducer#produceResults");
            }
            u0 k10 = context.k();
            if (f(context)) {
                k10.d(context, f12911c);
                k10.j(context, f12911c, null);
                this.f12912a.b(consumer, context);
                if (e4) {
                    return;
                }
                return;
            }
            a aVar = new a(consumer, k10, context, f12911c, k10, context, consumer);
            context.f(new b(aVar));
            this.f12913b.c(p1.a.a(aVar, e(context)));
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }
}
