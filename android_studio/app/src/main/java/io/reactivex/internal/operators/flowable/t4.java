package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableWindowBoundary.java */
/* loaded from: classes3.dex */
public final class t4<T, B> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<B> f72748c;

    /* renamed from: d  reason: collision with root package name */
    final int f72749d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundary.java */
    /* loaded from: classes3.dex */
    public static final class a<T, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, B> f72750b;

        /* renamed from: c  reason: collision with root package name */
        boolean f72751c;

        a(b<T, B> bVar) {
            this.f72750b = bVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72751c) {
                return;
            }
            this.f72751c = true;
            this.f72750b.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72751c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72751c = true;
            this.f72750b.c(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(B b10) {
            if (this.f72751c) {
                return;
            }
            this.f72750b.d();
        }
    }

    /* compiled from: FlowableWindowBoundary.java */
    /* loaded from: classes3.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: m  reason: collision with root package name */
        private static final long f72752m = 2233020065421370272L;

        /* renamed from: n  reason: collision with root package name */
        static final Object f72753n = new Object();

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.j<T>> f72754a;

        /* renamed from: b  reason: collision with root package name */
        final int f72755b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, B> f72756c = new a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72757d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f72758e = new AtomicInteger(1);

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f72759f = new io.reactivex.internal.queue.a<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f72760g = new AtomicThrowable();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f72761h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f72762i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f72763j;

        /* renamed from: k  reason: collision with root package name */
        io.reactivex.processors.h<T> f72764k;

        /* renamed from: l  reason: collision with root package name */
        long f72765l;

        b(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, int i4) {
            this.f72754a = dVar;
            this.f72755b = i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super io.reactivex.j<T>> dVar = this.f72754a;
            io.reactivex.internal.queue.a<Object> aVar = this.f72759f;
            AtomicThrowable atomicThrowable = this.f72760g;
            long j4 = this.f72765l;
            int i4 = 1;
            while (this.f72758e.get() != 0) {
                io.reactivex.processors.h<T> hVar = this.f72764k;
                boolean z9 = this.f72763j;
                if (z9 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (hVar != 0) {
                        this.f72764k = null;
                        hVar.onError(terminate);
                    }
                    dVar.onError(terminate);
                    return;
                }
                Object poll = aVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (terminate2 == null) {
                        if (hVar != 0) {
                            this.f72764k = null;
                            hVar.onComplete();
                        }
                        dVar.onComplete();
                        return;
                    }
                    if (hVar != 0) {
                        this.f72764k = null;
                        hVar.onError(terminate2);
                    }
                    dVar.onError(terminate2);
                    return;
                } else if (z10) {
                    this.f72765l = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll != f72753n) {
                    hVar.onNext(poll);
                } else {
                    if (hVar != 0) {
                        this.f72764k = null;
                        hVar.onComplete();
                    }
                    if (!this.f72761h.get()) {
                        io.reactivex.processors.h<T> U8 = io.reactivex.processors.h.U8(this.f72755b, this);
                        this.f72764k = U8;
                        this.f72758e.getAndIncrement();
                        if (j4 != this.f72762i.get()) {
                            j4++;
                            dVar.onNext(U8);
                        } else {
                            SubscriptionHelper.cancel(this.f72757d);
                            this.f72756c.dispose();
                            atomicThrowable.addThrowable(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                            this.f72763j = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f72764k = null;
        }

        void b() {
            SubscriptionHelper.cancel(this.f72757d);
            this.f72763j = true;
            a();
        }

        void c(Throwable th) {
            SubscriptionHelper.cancel(this.f72757d);
            if (this.f72760g.addThrowable(th)) {
                this.f72763j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72761h.compareAndSet(false, true)) {
                this.f72756c.dispose();
                if (this.f72758e.decrementAndGet() == 0) {
                    SubscriptionHelper.cancel(this.f72757d);
                }
            }
        }

        void d() {
            this.f72759f.offer(f72753n);
            a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72756c.dispose();
            this.f72763j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72756c.dispose();
            if (this.f72760g.addThrowable(th)) {
                this.f72763j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72759f.offer(t9);
            a();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this.f72757d, eVar, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.a(this.f72762i, j4);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f72758e.decrementAndGet() == 0) {
                SubscriptionHelper.cancel(this.f72757d);
            }
        }
    }

    public t4(io.reactivex.j<T> jVar, org.reactivestreams.c<B> cVar, int i4) {
        super(jVar);
        this.f72748c = cVar;
        this.f72749d = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super io.reactivex.j<T>> dVar) {
        b bVar = new b(dVar, this.f72749d);
        dVar.onSubscribe(bVar);
        bVar.d();
        this.f72748c.i(bVar.f72756c);
        this.f71538b.j6(bVar);
    }
}
