package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatMapMaybe.java */
/* loaded from: classes4.dex */
public final class d<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78860b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends b0<? extends R>> f78861c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f78862d;

    /* renamed from: e  reason: collision with root package name */
    final int f78863e;

    /* compiled from: FlowableConcatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: p  reason: collision with root package name */
        private static final long f78864p = -9140123220065488293L;

        /* renamed from: q  reason: collision with root package name */
        static final int f78865q = 0;

        /* renamed from: r  reason: collision with root package name */
        static final int f78866r = 1;

        /* renamed from: s  reason: collision with root package name */
        static final int f78867s = 2;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78868a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends b0<? extends R>> f78869b;

        /* renamed from: c  reason: collision with root package name */
        final int f78870c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f78871d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f78872e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final C0652a<R> f78873f = new C0652a<>(this);

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<T> f78874g;

        /* renamed from: h  reason: collision with root package name */
        final ErrorMode f78875h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f78876i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78877j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f78878k;

        /* renamed from: l  reason: collision with root package name */
        long f78879l;

        /* renamed from: m  reason: collision with root package name */
        int f78880m;

        /* renamed from: n  reason: collision with root package name */
        R f78881n;

        /* renamed from: o  reason: collision with root package name */
        volatile int f78882o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableConcatMapMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0652a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements y<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78883b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f78884a;

            C0652a(a<?, R> parent) {
                this.f78884a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78884a.b();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78884a.c(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f78884a.d(t9);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends b0<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
            this.f78868a = downstream;
            this.f78869b = mapper;
            this.f78870c = prefetch;
            this.f78875h = errorMode;
            this.f78874g = new SpscArrayQueue(prefetch);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f78868a;
            ErrorMode errorMode = this.f78875h;
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f78874g;
            AtomicThrowable atomicThrowable = this.f78872e;
            AtomicLong atomicLong = this.f78871d;
            int i4 = this.f78870c;
            int i10 = i4 - (i4 >> 1);
            int i11 = 1;
            while (true) {
                if (this.f78878k) {
                    pVar.clear();
                    this.f78881n = null;
                } else {
                    int i12 = this.f78882o;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i12 != 0))) {
                        if (i12 == 0) {
                            boolean z9 = this.f78877j;
                            T poll = pVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                atomicThrowable.tryTerminateConsumer(dVar);
                                return;
                            } else if (!z10) {
                                int i13 = this.f78880m + 1;
                                if (i13 == i10) {
                                    this.f78880m = 0;
                                    this.f78876i.request(i10);
                                } else {
                                    this.f78880m = i13;
                                }
                                try {
                                    b0<? extends R> apply = this.f78869b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                                    b0<? extends R> b0Var = apply;
                                    this.f78882o = 1;
                                    b0Var.b(this.f78873f);
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    this.f78876i.cancel();
                                    pVar.clear();
                                    atomicThrowable.tryAddThrowableOrReport(th);
                                    atomicThrowable.tryTerminateConsumer(dVar);
                                    return;
                                }
                            }
                        } else if (i12 == 2) {
                            long j4 = this.f78879l;
                            if (j4 != atomicLong.get()) {
                                this.f78881n = null;
                                dVar.onNext((R) this.f78881n);
                                this.f78879l = j4 + 1;
                                this.f78882o = 0;
                            }
                        }
                    }
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
            pVar.clear();
            this.f78881n = null;
            atomicThrowable.tryTerminateConsumer(dVar);
        }

        void b() {
            this.f78882o = 0;
            a();
        }

        void c(Throwable ex) {
            if (this.f78872e.tryAddThrowableOrReport(ex)) {
                if (this.f78875h != ErrorMode.END) {
                    this.f78876i.cancel();
                }
                this.f78882o = 0;
                a();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78878k = true;
            this.f78876i.cancel();
            this.f78873f.a();
            this.f78872e.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f78874g.clear();
                this.f78881n = null;
            }
        }

        void d(R item) {
            this.f78881n = item;
            this.f78882o = 2;
            a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78877j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78872e.tryAddThrowableOrReport(t9)) {
                if (this.f78875h == ErrorMode.IMMEDIATE) {
                    this.f78873f.a();
                }
                this.f78877j = true;
                a();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f78874g.offer(t9)) {
                this.f78876i.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78876i, s9)) {
                this.f78876i = s9;
                this.f78868a.onSubscribe(this);
                s9.request(this.f78870c);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            io.reactivex.rxjava3.internal.util.b.a(this.f78871d, n9);
            a();
        }
    }

    public d(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends b0<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f78860b = source;
        this.f78861c = mapper;
        this.f78862d = errorMode;
        this.f78863e = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78860b.G6(new a(s9, this.f78861c, this.f78863e, this.f78862d));
    }
}
