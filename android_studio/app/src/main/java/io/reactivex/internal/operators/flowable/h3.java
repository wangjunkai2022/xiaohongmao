package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSamplePublisher.java */
/* loaded from: classes3.dex */
public final class h3<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f72003b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<?> f72004c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f72005d;

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends c<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f72006i = -3029755663834015785L;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f72007g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f72008h;

        a(org.reactivestreams.d<? super T> dVar, org.reactivestreams.c<?> cVar) {
            super(dVar, cVar);
            this.f72007g = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.h3.c
        void b() {
            this.f72008h = true;
            if (this.f72007g.getAndIncrement() == 0) {
                c();
                this.f72011a.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.h3.c
        void e() {
            if (this.f72007g.getAndIncrement() == 0) {
                do {
                    boolean z9 = this.f72008h;
                    c();
                    if (z9) {
                        this.f72011a.onComplete();
                        return;
                    }
                } while (this.f72007g.decrementAndGet() != 0);
            }
        }
    }

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends c<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72009g = -3029755663834015785L;

        b(org.reactivestreams.d<? super T> dVar, org.reactivestreams.c<?> cVar) {
            super(dVar, cVar);
        }

        @Override // io.reactivex.internal.operators.flowable.h3.c
        void b() {
            this.f72011a.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.h3.c
        void e() {
            c();
        }
    }

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes3.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f72010f = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72011a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<?> f72012b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f72013c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72014d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f72015e;

        c(org.reactivestreams.d<? super T> dVar, org.reactivestreams.c<?> cVar) {
            this.f72011a = dVar;
            this.f72012b = cVar;
        }

        public void a() {
            this.f72015e.cancel();
            b();
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f72013c.get() != 0) {
                    this.f72011a.onNext(andSet);
                    io.reactivex.internal.util.b.e(this.f72013c, 1L);
                    return;
                }
                cancel();
                this.f72011a.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f72014d);
            this.f72015e.cancel();
        }

        public void d(Throwable th) {
            this.f72015e.cancel();
            this.f72011a.onError(th);
        }

        abstract void e();

        void i(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this.f72014d, eVar, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f72014d);
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f72014d);
            this.f72011a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72015e, eVar)) {
                this.f72015e = eVar;
                this.f72011a.onSubscribe(this);
                if (this.f72014d.get() == null) {
                    this.f72012b.i(new d(this));
                    eVar.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72013c, j4);
            }
        }
    }

    /* compiled from: FlowableSamplePublisher.java */
    /* loaded from: classes3.dex */
    static final class d<T> implements io.reactivex.o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f72016a;

        d(c<T> cVar) {
            this.f72016a = cVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72016a.a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72016a.d(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            this.f72016a.e();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f72016a.i(eVar);
        }
    }

    public h3(org.reactivestreams.c<T> cVar, org.reactivestreams.c<?> cVar2, boolean z9) {
        this.f72003b = cVar;
        this.f72004c = cVar2;
        this.f72005d = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(dVar);
        if (this.f72005d) {
            this.f72003b.i(new a(eVar, this.f72004c));
        } else {
            this.f72003b.i(new b(eVar, this.f72004c));
        }
    }
}
