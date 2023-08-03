package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.Executor;

/* compiled from: PriorityStarvingThrottlingProducer.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class p0<T> implements q0<T> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f13179f = "PriorityStarvingThrottlingProducer";

    /* renamed from: a  reason: collision with root package name */
    private final q0<T> f13180a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13181b;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f13183d;
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    private final Queue<b<T>> f13182c = new PriorityQueue(11, new c());
    @s7.a("this")

    /* renamed from: e  reason: collision with root package name */
    private int f13184e = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PriorityStarvingThrottlingProducer.java */
    /* loaded from: classes.dex */
    public static class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final l<T> f13185a;

        /* renamed from: b  reason: collision with root package name */
        final s0 f13186b;

        /* renamed from: c  reason: collision with root package name */
        final long f13187c;

        b(l<T> consumer, s0 producerContext, long time) {
            this.f13185a = consumer;
            this.f13186b = producerContext;
            this.f13187c = time;
        }
    }

    /* compiled from: PriorityStarvingThrottlingProducer.java */
    /* loaded from: classes.dex */
    static class c<T> implements Comparator<b<T>> {
        c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b<T> o12, b<T> o22) {
            Priority priority = o12.f13186b.getPriority();
            Priority priority2 = o22.f13186b.getPriority();
            if (priority == priority2) {
                return Double.compare(o12.f13187c, o22.f13187c);
            }
            return priority.ordinal() > priority2.ordinal() ? -1 : 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PriorityStarvingThrottlingProducer.java */
    /* loaded from: classes.dex */
    public class d extends p<T, T> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PriorityStarvingThrottlingProducer.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f13189a;

            a(final b val$nextRequest) {
                this.f13189a = val$nextRequest;
            }

            @Override // java.lang.Runnable
            public void run() {
                p0.this.g(this.f13189a);
            }
        }

        private void s() {
            b bVar;
            synchronized (p0.this) {
                bVar = (b) p0.this.f13182c.poll();
                if (bVar == null) {
                    p0.d(p0.this);
                }
            }
            if (bVar != null) {
                p0.this.f13183d.execute(new a(bVar));
            }
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void h() {
            r().b();
            s();
        }

        @Override // com.facebook.imagepipeline.producers.p, com.facebook.imagepipeline.producers.b
        protected void i(Throwable t9) {
            r().a(t9);
            s();
        }

        @Override // com.facebook.imagepipeline.producers.b
        protected void j(@r7.h T newResult, int status) {
            r().c(newResult, status);
            if (com.facebook.imagepipeline.producers.b.f(status)) {
                s();
            }
        }

        private d(l<T> consumer) {
            super(consumer);
        }
    }

    public p0(int maxSimultaneousRequests, Executor executor, final q0<T> inputProducer) {
        this.f13181b = maxSimultaneousRequests;
        this.f13183d = (Executor) com.facebook.common.internal.j.i(executor);
        this.f13180a = (q0) com.facebook.common.internal.j.i(inputProducer);
    }

    static /* synthetic */ int d(p0 p0Var) {
        int i4 = p0Var.f13184e;
        p0Var.f13184e = i4 - 1;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(b<T> item) {
        item.f13186b.k().j(item.f13186b, f13179f, null);
        this.f13180a.b(new d(item.f13185a), item.f13186b);
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<T> consumer, final s0 producerContext) {
        boolean z9;
        long nanoTime = System.nanoTime();
        producerContext.k().d(producerContext, f13179f);
        synchronized (this) {
            int i4 = this.f13184e;
            z9 = true;
            if (i4 >= this.f13181b) {
                this.f13182c.add(new b<>(consumer, producerContext, nanoTime));
            } else {
                this.f13184e = i4 + 1;
                z9 = false;
            }
        }
        if (z9) {
            return;
        }
        g(new b<>(consumer, producerContext, nanoTime));
    }
}
