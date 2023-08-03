package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapMaybe.java */
/* loaded from: classes4.dex */
public final class c1<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f76931c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f76932d;

    /* renamed from: e  reason: collision with root package name */
    final int f76933e;

    /* compiled from: FlowableFlatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f76934l = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76935a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f76936b;

        /* renamed from: c  reason: collision with root package name */
        final int f76937c;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f76942h;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f76944j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f76945k;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f76938d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76939e = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f76941g = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f76940f = new AtomicInteger(1);

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> f76943i = new AtomicReference<>();

        /* compiled from: FlowableFlatMapMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.c1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0628a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<R>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f76946b = -502562646270949838L;

            C0628a() {
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.i(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.j(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R value) {
                a.this.k(this, value);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper, boolean delayErrors, int maxConcurrency) {
            this.f76935a = actual;
            this.f76942h = mapper;
            this.f76936b = delayErrors;
            this.f76937c = maxConcurrency;
        }

        static boolean a(boolean d4, io.reactivex.rxjava3.internal.queue.b<?> q9) {
            return d4 && (q9 == null || q9.isEmpty());
        }

        void b() {
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f76943i.get();
            if (bVar != null) {
                bVar.clear();
            }
        }

        void c() {
            if (getAndIncrement() == 0) {
                d();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76945k = true;
            this.f76944j.cancel();
            this.f76939e.dispose();
            this.f76941g.tryTerminateAndReport();
        }

        void d() {
            boolean z9;
            int i4;
            org.reactivestreams.d<? super R> dVar = this.f76935a;
            AtomicInteger atomicInteger = this.f76940f;
            AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> atomicReference = this.f76943i;
            int i10 = 1;
            do {
                long j4 = this.f76938d.get();
                long j10 = 0;
                while (true) {
                    z9 = false;
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (this.f76945k) {
                        b();
                        return;
                    } else if (!this.f76936b && this.f76941g.get() != null) {
                        b();
                        this.f76941g.tryTerminateConsumer(dVar);
                        return;
                    } else {
                        boolean z10 = atomicInteger.get() == 0;
                        io.reactivex.rxjava3.internal.queue.b<R> bVar = atomicReference.get();
                        R poll = bVar != null ? bVar.poll() : (Object) null;
                        boolean z11 = poll == null;
                        if (z10 && z11) {
                            this.f76941g.tryTerminateConsumer(dVar);
                            return;
                        } else if (z11) {
                            break;
                        } else {
                            dVar.onNext(poll);
                            j10++;
                        }
                    }
                }
                if (i4 == 0) {
                    if (this.f76945k) {
                        b();
                        return;
                    } else if (!this.f76936b && this.f76941g.get() != null) {
                        b();
                        this.f76941g.tryTerminateConsumer(dVar);
                        return;
                    } else {
                        boolean z12 = atomicInteger.get() == 0;
                        io.reactivex.rxjava3.internal.queue.b<R> bVar2 = atomicReference.get();
                        z9 = (bVar2 == null || bVar2.isEmpty()) ? true : true;
                        if (z12 && z9) {
                            this.f76941g.tryTerminateConsumer(dVar);
                            return;
                        }
                    }
                }
                if (j10 != 0) {
                    io.reactivex.rxjava3.internal.util.b.e(this.f76938d, j10);
                    if (this.f76937c != Integer.MAX_VALUE) {
                        this.f76944j.request(j10);
                    }
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        io.reactivex.rxjava3.internal.queue.b<R> e() {
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f76943i.get();
            if (bVar != null) {
                return bVar;
            }
            io.reactivex.rxjava3.internal.queue.b<R> bVar2 = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.m.V());
            return this.f76943i.compareAndSet(null, bVar2) ? bVar2 : this.f76943i.get();
        }

        void i(a<T, R>.C0628a inner) {
            this.f76939e.c(inner);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    if (a(this.f76940f.decrementAndGet() == 0, this.f76943i.get())) {
                        this.f76941g.tryTerminateConsumer(this.f76935a);
                        return;
                    }
                    if (this.f76937c != Integer.MAX_VALUE) {
                        this.f76944j.request(1L);
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    d();
                    return;
                }
            }
            this.f76940f.decrementAndGet();
            if (this.f76937c != Integer.MAX_VALUE) {
                this.f76944j.request(1L);
            }
            c();
        }

        void j(a<T, R>.C0628a inner, Throwable e4) {
            this.f76939e.c(inner);
            if (this.f76941g.tryAddThrowableOrReport(e4)) {
                if (!this.f76936b) {
                    this.f76944j.cancel();
                    this.f76939e.dispose();
                } else if (this.f76937c != Integer.MAX_VALUE) {
                    this.f76944j.request(1L);
                }
                this.f76940f.decrementAndGet();
                c();
            }
        }

        void k(a<T, R>.C0628a inner, R value) {
            this.f76939e.c(inner);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z9 = this.f76940f.decrementAndGet() == 0;
                    if (this.f76938d.get() != 0) {
                        this.f76935a.onNext(value);
                        if (a(z9, this.f76943i.get())) {
                            this.f76941g.tryTerminateConsumer(this.f76935a);
                            return;
                        }
                        io.reactivex.rxjava3.internal.util.b.e(this.f76938d, 1L);
                        if (this.f76937c != Integer.MAX_VALUE) {
                            this.f76944j.request(1L);
                        }
                    } else {
                        io.reactivex.rxjava3.internal.queue.b<R> e4 = e();
                        synchronized (e4) {
                            e4.offer(value);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    d();
                }
            }
            io.reactivex.rxjava3.internal.queue.b<R> e10 = e();
            synchronized (e10) {
                e10.offer(value);
            }
            this.f76940f.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            d();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76940f.decrementAndGet();
            c();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76940f.decrementAndGet();
            if (this.f76941g.tryAddThrowableOrReport(t9)) {
                if (!this.f76936b) {
                    this.f76939e.dispose();
                }
                c();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                io.reactivex.rxjava3.core.b0<? extends R> apply = this.f76942h.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends R> b0Var = apply;
                this.f76940f.getAndIncrement();
                C0628a c0628a = new C0628a();
                if (this.f76945k || !this.f76939e.b(c0628a)) {
                    return;
                }
                b0Var.b(c0628a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76944j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76944j, s9)) {
                this.f76944j = s9;
                this.f76935a.onSubscribe(this);
                int i4 = this.f76937c;
                if (i4 == Integer.MAX_VALUE) {
                    s9.request(Long.MAX_VALUE);
                } else {
                    s9.request(i4);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f76938d, n9);
                c();
            }
        }
    }

    public c1(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper, boolean delayError, int maxConcurrency) {
        super(source);
        this.f76931c = mapper;
        this.f76932d = delayError;
        this.f76933e = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f76811b.G6(new a(s9, this.f76931c, this.f76932d, this.f76933e));
    }
}
