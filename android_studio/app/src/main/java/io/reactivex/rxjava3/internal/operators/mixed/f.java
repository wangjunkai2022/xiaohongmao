package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.v0;
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

/* compiled from: FlowableConcatMapSingle.java */
/* loaded from: classes4.dex */
public final class f<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78889b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends v0<? extends R>> f78890c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f78891d;

    /* renamed from: e  reason: collision with root package name */
    final int f78892e;

    /* compiled from: FlowableConcatMapSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: p  reason: collision with root package name */
        private static final long f78893p = -9140123220065488293L;

        /* renamed from: q  reason: collision with root package name */
        static final int f78894q = 0;

        /* renamed from: r  reason: collision with root package name */
        static final int f78895r = 1;

        /* renamed from: s  reason: collision with root package name */
        static final int f78896s = 2;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78897a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends v0<? extends R>> f78898b;

        /* renamed from: c  reason: collision with root package name */
        final int f78899c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f78900d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f78901e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final C0653a<R> f78902f = new C0653a<>(this);

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<T> f78903g;

        /* renamed from: h  reason: collision with root package name */
        final ErrorMode f78904h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f78905i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78906j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f78907k;

        /* renamed from: l  reason: collision with root package name */
        long f78908l;

        /* renamed from: m  reason: collision with root package name */
        int f78909m;

        /* renamed from: n  reason: collision with root package name */
        R f78910n;

        /* renamed from: o  reason: collision with root package name */
        volatile int f78911o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableConcatMapSingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0653a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements s0<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78912b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f78913a;

            C0653a(a<?, R> parent) {
                this.f78913a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78913a.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f78913a.c(t9);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends v0<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
            this.f78897a = downstream;
            this.f78898b = mapper;
            this.f78899c = prefetch;
            this.f78904h = errorMode;
            this.f78903g = new SpscArrayQueue(prefetch);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f78897a;
            ErrorMode errorMode = this.f78904h;
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f78903g;
            AtomicThrowable atomicThrowable = this.f78901e;
            AtomicLong atomicLong = this.f78900d;
            int i4 = this.f78899c;
            int i10 = i4 - (i4 >> 1);
            int i11 = 1;
            while (true) {
                if (this.f78907k) {
                    pVar.clear();
                    this.f78910n = null;
                } else {
                    int i12 = this.f78911o;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i12 != 0))) {
                        if (i12 == 0) {
                            boolean z9 = this.f78906j;
                            T poll = pVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                atomicThrowable.tryTerminateConsumer(dVar);
                                return;
                            } else if (!z10) {
                                int i13 = this.f78909m + 1;
                                if (i13 == i10) {
                                    this.f78909m = 0;
                                    this.f78905i.request(i10);
                                } else {
                                    this.f78909m = i13;
                                }
                                try {
                                    v0<? extends R> apply = this.f78898b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                                    v0<? extends R> v0Var = apply;
                                    this.f78911o = 1;
                                    v0Var.d(this.f78902f);
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    this.f78905i.cancel();
                                    pVar.clear();
                                    atomicThrowable.tryAddThrowableOrReport(th);
                                    atomicThrowable.tryTerminateConsumer(dVar);
                                    return;
                                }
                            }
                        } else if (i12 == 2) {
                            long j4 = this.f78908l;
                            if (j4 != atomicLong.get()) {
                                this.f78910n = null;
                                dVar.onNext((R) this.f78910n);
                                this.f78908l = j4 + 1;
                                this.f78911o = 0;
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
            this.f78910n = null;
            atomicThrowable.tryTerminateConsumer(dVar);
        }

        void b(Throwable ex) {
            if (this.f78901e.tryAddThrowableOrReport(ex)) {
                if (this.f78904h != ErrorMode.END) {
                    this.f78905i.cancel();
                }
                this.f78911o = 0;
                a();
            }
        }

        void c(R item) {
            this.f78910n = item;
            this.f78911o = 2;
            a();
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78907k = true;
            this.f78905i.cancel();
            this.f78902f.a();
            this.f78901e.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f78903g.clear();
                this.f78910n = null;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78906j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78901e.tryAddThrowableOrReport(t9)) {
                if (this.f78904h == ErrorMode.IMMEDIATE) {
                    this.f78902f.a();
                }
                this.f78906j = true;
                a();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f78903g.offer(t9)) {
                this.f78905i.cancel();
                onError(new MissingBackpressureException("queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78905i, s9)) {
                this.f78905i = s9;
                this.f78897a.onSubscribe(this);
                s9.request(this.f78899c);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            io.reactivex.rxjava3.internal.util.b.a(this.f78900d, n9);
            a();
        }
    }

    public f(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends v0<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f78889b = source;
        this.f78890c = mapper;
        this.f78891d = errorMode;
        this.f78892e = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78889b.G6(new a(s9, this.f78890c, this.f78892e, this.f78891d));
    }
}
