package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableConcatMap.java */
/* loaded from: classes4.dex */
public final class v<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78045c;

    /* renamed from: d  reason: collision with root package name */
    final int f78046d;

    /* renamed from: e  reason: collision with root package name */
    final ErrorMode f78047e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f78048a;

        static {
            int[] iArr = new int[ErrorMode.values().length];
            f78048a = iArr;
            try {
                iArr[ErrorMode.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78048a[ErrorMode.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes4.dex */
    public static abstract class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, f<R>, org.reactivestreams.e {

        /* renamed from: m  reason: collision with root package name */
        private static final long f78049m = -3511336836796789179L;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78051b;

        /* renamed from: c  reason: collision with root package name */
        final int f78052c;

        /* renamed from: d  reason: collision with root package name */
        final int f78053d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f78054e;

        /* renamed from: f  reason: collision with root package name */
        int f78055f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f78056g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f78057h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f78058i;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f78060k;

        /* renamed from: l  reason: collision with root package name */
        int f78061l;

        /* renamed from: a  reason: collision with root package name */
        final e<R> f78050a = new e<>(this);

        /* renamed from: j  reason: collision with root package name */
        final AtomicThrowable f78059j = new AtomicThrowable();

        b(q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch) {
            this.f78051b = mapper;
            this.f78052c = prefetch;
            this.f78053d = prefetch - (prefetch >> 2);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public final void b() {
            this.f78060k = false;
            d();
        }

        abstract void d();

        abstract void e();

        @Override // org.reactivestreams.d
        public final void onComplete() {
            this.f78057h = true;
            d();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (this.f78061l != 2 && !this.f78056g.offer(t9)) {
                this.f78054e.cancel();
                onError(new IllegalStateException("Queue full?!"));
                return;
            }
            d();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public final void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78054e, s9)) {
                this.f78054e = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f78061l = requestFusion;
                        this.f78056g = nVar;
                        this.f78057h = true;
                        e();
                        d();
                        return;
                    } else if (requestFusion == 2) {
                        this.f78061l = requestFusion;
                        this.f78056g = nVar;
                        e();
                        s9.request(this.f78052c);
                        return;
                    }
                }
                this.f78056g = new SpscArrayQueue(this.f78052c);
                e();
                s9.request(this.f78052c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes4.dex */
    public static final class c<T, R> extends b<T, R> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f78062p = -2945777694260521066L;

        /* renamed from: n  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78063n;

        /* renamed from: o  reason: collision with root package name */
        final boolean f78064o;

        c(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, boolean veryEnd) {
            super(mapper, prefetch);
            this.f78063n = actual;
            this.f78064o = veryEnd;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void a(Throwable e4) {
            if (this.f78059j.tryAddThrowableOrReport(e4)) {
                if (!this.f78064o) {
                    this.f78054e.cancel();
                    this.f78057h = true;
                }
                this.f78060k = false;
                d();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void c(R value) {
            this.f78063n.onNext(value);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78058i) {
                return;
            }
            this.f78058i = true;
            this.f78050a.cancel();
            this.f78054e.cancel();
            this.f78059j.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.b
        void d() {
            Object obj;
            if (getAndIncrement() == 0) {
                while (!this.f78058i) {
                    if (!this.f78060k) {
                        boolean z9 = this.f78057h;
                        if (z9 && !this.f78064o && this.f78059j.get() != null) {
                            this.f78059j.tryTerminateConsumer(this.f78063n);
                            return;
                        }
                        try {
                            T poll = this.f78056g.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                this.f78059j.tryTerminateConsumer(this.f78063n);
                                return;
                            } else if (!z10) {
                                try {
                                    org.reactivestreams.c<? extends R> apply = this.f78051b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                                    org.reactivestreams.c<? extends R> cVar = apply;
                                    if (this.f78061l != 1) {
                                        int i4 = this.f78055f + 1;
                                        if (i4 == this.f78053d) {
                                            this.f78055f = 0;
                                            this.f78054e.request(i4);
                                        } else {
                                            this.f78055f = i4;
                                        }
                                    }
                                    if (cVar instanceof q7.s) {
                                        try {
                                            obj = ((q7.s) cVar).get();
                                        } catch (Throwable th) {
                                            io.reactivex.rxjava3.exceptions.a.b(th);
                                            this.f78059j.tryAddThrowableOrReport(th);
                                            if (!this.f78064o) {
                                                this.f78054e.cancel();
                                                this.f78059j.tryTerminateConsumer(this.f78063n);
                                                return;
                                            }
                                            obj = null;
                                        }
                                        if (obj == null) {
                                            continue;
                                        } else if (this.f78050a.isUnbounded()) {
                                            this.f78063n.onNext(obj);
                                        } else {
                                            this.f78060k = true;
                                            e<R> eVar = this.f78050a;
                                            eVar.setSubscription(new g(obj, eVar));
                                        }
                                    } else {
                                        this.f78060k = true;
                                        cVar.i(this.f78050a);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    this.f78054e.cancel();
                                    this.f78059j.tryAddThrowableOrReport(th2);
                                    this.f78059j.tryTerminateConsumer(this.f78063n);
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            this.f78054e.cancel();
                            this.f78059j.tryAddThrowableOrReport(th3);
                            this.f78059j.tryTerminateConsumer(this.f78063n);
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.b
        void e() {
            this.f78063n.onSubscribe(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78059j.tryAddThrowableOrReport(t9)) {
                this.f78057h = true;
                d();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78050a.request(n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes4.dex */
    public static final class d<T, R> extends b<T, R> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f78065p = 7898995095634264146L;

        /* renamed from: n  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78066n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicInteger f78067o;

        d(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch) {
            super(mapper, prefetch);
            this.f78066n = actual;
            this.f78067o = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void a(Throwable e4) {
            this.f78054e.cancel();
            io.reactivex.rxjava3.internal.util.h.d(this.f78066n, e4, this, this.f78059j);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.f
        public void c(R value) {
            io.reactivex.rxjava3.internal.util.h.f(this.f78066n, value, this, this.f78059j);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78058i) {
                return;
            }
            this.f78058i = true;
            this.f78050a.cancel();
            this.f78054e.cancel();
            this.f78059j.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.b
        void d() {
            if (this.f78067o.getAndIncrement() == 0) {
                while (!this.f78058i) {
                    if (!this.f78060k) {
                        boolean z9 = this.f78057h;
                        try {
                            T poll = this.f78056g.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                this.f78066n.onComplete();
                                return;
                            } else if (!z10) {
                                try {
                                    org.reactivestreams.c<? extends R> apply = this.f78051b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                                    org.reactivestreams.c<? extends R> cVar = apply;
                                    if (this.f78061l != 1) {
                                        int i4 = this.f78055f + 1;
                                        if (i4 == this.f78053d) {
                                            this.f78055f = 0;
                                            this.f78054e.request(i4);
                                        } else {
                                            this.f78055f = i4;
                                        }
                                    }
                                    if (cVar instanceof q7.s) {
                                        try {
                                            Object obj = ((q7.s) cVar).get();
                                            if (obj == null) {
                                                continue;
                                            } else if (this.f78050a.isUnbounded()) {
                                                if (!io.reactivex.rxjava3.internal.util.h.f(this.f78066n, obj, this, this.f78059j)) {
                                                    return;
                                                }
                                            } else {
                                                this.f78060k = true;
                                                e<R> eVar = this.f78050a;
                                                eVar.setSubscription(new g(obj, eVar));
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.rxjava3.exceptions.a.b(th);
                                            this.f78054e.cancel();
                                            this.f78059j.tryAddThrowableOrReport(th);
                                            this.f78059j.tryTerminateConsumer(this.f78066n);
                                            return;
                                        }
                                    } else {
                                        this.f78060k = true;
                                        cVar.i(this.f78050a);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    this.f78054e.cancel();
                                    this.f78059j.tryAddThrowableOrReport(th2);
                                    this.f78059j.tryTerminateConsumer(this.f78066n);
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            this.f78054e.cancel();
                            this.f78059j.tryAddThrowableOrReport(th3);
                            this.f78059j.tryTerminateConsumer(this.f78066n);
                            return;
                        }
                    }
                    if (this.f78067o.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.v.b
        void e() {
            this.f78066n.onSubscribe(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78050a.cancel();
            io.reactivex.rxjava3.internal.util.h.d(this.f78066n, t9, this, this.f78059j);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78050a.request(n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes4.dex */
    public static final class e<R> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.r<R> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f78068l = 897683679971470653L;

        /* renamed from: j  reason: collision with root package name */
        final f<R> f78069j;

        /* renamed from: k  reason: collision with root package name */
        long f78070k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(f<R> parent) {
            super(false);
            this.f78069j = parent;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            long j4 = this.f78070k;
            if (j4 != 0) {
                this.f78070k = 0L;
                produced(j4);
            }
            this.f78069j.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            long j4 = this.f78070k;
            if (j4 != 0) {
                this.f78070k = 0L;
                produced(j4);
            }
            this.f78069j.a(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(R t9) {
            this.f78070k++;
            this.f78069j.c(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            setSubscription(s9);
        }
    }

    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes4.dex */
    interface f<T> {
        void a(Throwable e4);

        void b();

        void c(T value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes4.dex */
    public static final class g<T> implements org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78071a;

        /* renamed from: b  reason: collision with root package name */
        final T f78072b;

        /* renamed from: c  reason: collision with root package name */
        boolean f78073c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(T value, org.reactivestreams.d<? super T> downstream) {
            this.f78072b = value;
            this.f78071a = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (n9 <= 0 || this.f78073c) {
                return;
            }
            this.f78073c = true;
            org.reactivestreams.d<? super T> dVar = this.f78071a;
            dVar.onNext((T) this.f78072b);
            dVar.onComplete();
        }
    }

    public v(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
        super(source);
        this.f78045c = mapper;
        this.f78046d = prefetch;
        this.f78047e = errorMode;
    }

    public static <T, R> org.reactivestreams.d<T> g9(org.reactivestreams.d<? super R> s9, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
        int i4 = a.f78048a[errorMode.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return new d(s9, mapper, prefetch);
            }
            return new c(s9, mapper, prefetch, true);
        }
        return new c(s9, mapper, prefetch, false);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        if (m3.b(this.f76811b, s9, this.f78045c)) {
            return;
        }
        this.f76811b.i(g9(s9, this.f78045c, this.f78046d, this.f78047e));
    }
}
