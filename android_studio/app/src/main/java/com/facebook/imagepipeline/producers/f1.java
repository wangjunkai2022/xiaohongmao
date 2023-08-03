package com.facebook.imagepipeline.producers;

import android.util.Pair;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

/* compiled from: ThrottlingProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class f1<T> implements q0<T> {

    /* renamed from: f  reason: collision with root package name */
    public static final String f12958f = "ThrottlingProducer";

    /* renamed from: a  reason: collision with root package name */
    private final q0<T> f12959a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12960b;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f12963e;
    @s7.a("this")

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<l<T>, s0>> f12962d = new ConcurrentLinkedQueue<>();
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    private int f12961c = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThrottlingProducer.java */
    /* loaded from: classes.dex */
    public class b extends p<T, T> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ThrottlingProducer.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pair f12965a;

            a(final Pair val$nextRequestPair) {
                this.f12965a = val$nextRequestPair;
            }

            @Override // java.lang.Runnable
            public void run() {
                f1 f1Var = f1.this;
                Pair pair = this.f12965a;
                f1Var.f((l) pair.first, (s0) pair.second);
            }
        }

        private void s() {
            Pair pair;
            synchronized (f1.this) {
                pair = (Pair) f1.this.f12962d.poll();
                if (pair == null) {
                    f1.d(f1.this);
                }
            }
            if (pair != null) {
                f1.this.f12963e.execute(new a(pair));
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

        private b(l<T> consumer) {
            super(consumer);
        }
    }

    public f1(int maxSimultaneousRequests, Executor executor, final q0<T> inputProducer) {
        this.f12960b = maxSimultaneousRequests;
        this.f12963e = (Executor) com.facebook.common.internal.j.i(executor);
        this.f12959a = (q0) com.facebook.common.internal.j.i(inputProducer);
    }

    static /* synthetic */ int d(f1 f1Var) {
        int i4 = f1Var.f12961c;
        f1Var.f12961c = i4 - 1;
        return i4;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(final l<T> consumer, final s0 producerContext) {
        boolean z9;
        producerContext.k().d(producerContext, f12958f);
        synchronized (this) {
            int i4 = this.f12961c;
            z9 = true;
            if (i4 >= this.f12960b) {
                this.f12962d.add(Pair.create(consumer, producerContext));
            } else {
                this.f12961c = i4 + 1;
                z9 = false;
            }
        }
        if (z9) {
            return;
        }
        f(consumer, producerContext);
    }

    void f(l<T> consumer, s0 producerContext) {
        producerContext.k().j(producerContext, f12958f, null);
        this.f12959a.b(new b(consumer), producerContext);
    }
}
