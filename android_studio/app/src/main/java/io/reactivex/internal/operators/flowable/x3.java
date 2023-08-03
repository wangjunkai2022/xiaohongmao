package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSubscribeOn.java */
/* loaded from: classes3.dex */
public final class x3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f73006c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f73007d;

    /* compiled from: FlowableSubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<Thread> implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f73008g = 8094547886072529208L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73009a;

        /* renamed from: b  reason: collision with root package name */
        final h0.c f73010b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f73011c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73012d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final boolean f73013e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.c<T> f73014f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSubscribeOn.java */
        /* renamed from: io.reactivex.internal.operators.flowable.x3$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class RunnableC0563a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final org.reactivestreams.e f73015a;

            /* renamed from: b  reason: collision with root package name */
            final long f73016b;

            RunnableC0563a(org.reactivestreams.e eVar, long j4) {
                this.f73015a = eVar;
                this.f73016b = j4;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f73015a.request(this.f73016b);
            }
        }

        a(org.reactivestreams.d<? super T> dVar, h0.c cVar, org.reactivestreams.c<T> cVar2, boolean z9) {
            this.f73009a = dVar;
            this.f73010b = cVar;
            this.f73014f = cVar2;
            this.f73013e = !z9;
        }

        void a(long j4, org.reactivestreams.e eVar) {
            if (!this.f73013e && Thread.currentThread() != get()) {
                this.f73010b.b(new RunnableC0563a(eVar, j4));
            } else {
                eVar.request(j4);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f73011c);
            this.f73010b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73009a.onComplete();
            this.f73010b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73009a.onError(th);
            this.f73010b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f73009a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this.f73011c, eVar)) {
                long andSet = this.f73012d.getAndSet(0L);
                if (andSet != 0) {
                    a(andSet, eVar);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                org.reactivestreams.e eVar = this.f73011c.get();
                if (eVar != null) {
                    a(j4, eVar);
                    return;
                }
                io.reactivex.internal.util.b.a(this.f73012d, j4);
                org.reactivestreams.e eVar2 = this.f73011c.get();
                if (eVar2 != null) {
                    long andSet = this.f73012d.getAndSet(0L);
                    if (andSet != 0) {
                        a(andSet, eVar2);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            lazySet(Thread.currentThread());
            org.reactivestreams.c<T> cVar = this.f73014f;
            this.f73014f = null;
            cVar.i(this);
        }
    }

    public x3(io.reactivex.j<T> jVar, io.reactivex.h0 h0Var, boolean z9) {
        super(jVar);
        this.f73006c = h0Var;
        this.f73007d = z9;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        h0.c d4 = this.f73006c.d();
        a aVar = new a(dVar, d4, this.f71538b, this.f73007d);
        dVar.onSubscribe(aVar);
        d4.b(aVar);
    }
}
