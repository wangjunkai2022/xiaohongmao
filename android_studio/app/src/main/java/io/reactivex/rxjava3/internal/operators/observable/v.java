package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.InnerQueuedObserver;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableConcatMapEager.java */
/* loaded from: classes4.dex */
public final class v<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f80227b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f80228c;

    /* renamed from: d  reason: collision with root package name */
    final int f80229d;

    /* renamed from: e  reason: collision with root package name */
    final int f80230e;

    /* compiled from: ObservableConcatMapEager.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.internal.observers.k<R> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f80231o = 8080567949447303262L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f80232a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f80233b;

        /* renamed from: c  reason: collision with root package name */
        final int f80234c;

        /* renamed from: d  reason: collision with root package name */
        final int f80235d;

        /* renamed from: e  reason: collision with root package name */
        final ErrorMode f80236e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f80237f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final ArrayDeque<InnerQueuedObserver<R>> f80238g = new ArrayDeque<>();

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f80239h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80240i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f80241j;

        /* renamed from: k  reason: collision with root package name */
        int f80242k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f80243l;

        /* renamed from: m  reason: collision with root package name */
        InnerQueuedObserver<R> f80244m;

        /* renamed from: n  reason: collision with root package name */
        int f80245n;

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper, int maxConcurrency, int prefetch, ErrorMode errorMode) {
            this.f80232a = actual;
            this.f80233b = mapper;
            this.f80234c = maxConcurrency;
            this.f80235d = prefetch;
            this.f80236e = errorMode;
        }

        @Override // io.reactivex.rxjava3.internal.observers.k
        public void a(InnerQueuedObserver<R> inner, R value) {
            inner.queue().offer(value);
            b();
        }

        @Override // io.reactivex.rxjava3.internal.observers.k
        public void b() {
            R poll;
            boolean z9;
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f80239h;
            ArrayDeque<InnerQueuedObserver<R>> arrayDeque = this.f80238g;
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f80232a;
            ErrorMode errorMode = this.f80236e;
            int i4 = 1;
            while (true) {
                int i10 = this.f80245n;
                while (i10 != this.f80234c) {
                    if (this.f80243l) {
                        qVar.clear();
                        e();
                        return;
                    } else if (errorMode == ErrorMode.IMMEDIATE && this.f80237f.get() != null) {
                        qVar.clear();
                        e();
                        this.f80237f.tryTerminateConsumer(this.f80232a);
                        return;
                    } else {
                        try {
                            T poll2 = qVar.poll();
                            if (poll2 == null) {
                                break;
                            }
                            io.reactivex.rxjava3.core.l0<? extends R> apply = this.f80233b.apply(poll2);
                            Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                            io.reactivex.rxjava3.core.l0<? extends R> l0Var = apply;
                            InnerQueuedObserver<R> innerQueuedObserver = new InnerQueuedObserver<>(this, this.f80235d);
                            arrayDeque.offer(innerQueuedObserver);
                            l0Var.a(innerQueuedObserver);
                            i10++;
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f80240i.dispose();
                            qVar.clear();
                            e();
                            this.f80237f.tryAddThrowableOrReport(th);
                            this.f80237f.tryTerminateConsumer(this.f80232a);
                            return;
                        }
                    }
                }
                this.f80245n = i10;
                if (this.f80243l) {
                    qVar.clear();
                    e();
                    return;
                } else if (errorMode == ErrorMode.IMMEDIATE && this.f80237f.get() != null) {
                    qVar.clear();
                    e();
                    this.f80237f.tryTerminateConsumer(this.f80232a);
                    return;
                } else {
                    InnerQueuedObserver<R> innerQueuedObserver2 = this.f80244m;
                    if (innerQueuedObserver2 == null) {
                        if (errorMode == ErrorMode.BOUNDARY && this.f80237f.get() != null) {
                            qVar.clear();
                            e();
                            this.f80237f.tryTerminateConsumer(n0Var);
                            return;
                        }
                        boolean z10 = this.f80241j;
                        InnerQueuedObserver<R> poll3 = arrayDeque.poll();
                        boolean z11 = poll3 == null;
                        if (z10 && z11) {
                            if (this.f80237f.get() != null) {
                                qVar.clear();
                                e();
                                this.f80237f.tryTerminateConsumer(n0Var);
                                return;
                            }
                            n0Var.onComplete();
                            return;
                        }
                        if (!z11) {
                            this.f80244m = poll3;
                        }
                        innerQueuedObserver2 = poll3;
                    }
                    if (innerQueuedObserver2 != null) {
                        io.reactivex.rxjava3.internal.fuseable.q<R> queue = innerQueuedObserver2.queue();
                        while (!this.f80243l) {
                            boolean isDone = innerQueuedObserver2.isDone();
                            if (errorMode == ErrorMode.IMMEDIATE && this.f80237f.get() != null) {
                                qVar.clear();
                                e();
                                this.f80237f.tryTerminateConsumer(n0Var);
                                return;
                            }
                            try {
                                poll = queue.poll();
                                z9 = poll == null;
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.f80237f.tryAddThrowableOrReport(th2);
                                this.f80244m = null;
                                this.f80245n--;
                            }
                            if (isDone && z9) {
                                this.f80244m = null;
                                this.f80245n--;
                            } else if (!z9) {
                                n0Var.onNext(poll);
                            }
                        }
                        qVar.clear();
                        e();
                        return;
                    }
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.observers.k
        public void c(InnerQueuedObserver<R> inner) {
            inner.setDone();
            b();
        }

        @Override // io.reactivex.rxjava3.internal.observers.k
        public void d(InnerQueuedObserver<R> inner, Throwable e4) {
            if (this.f80237f.tryAddThrowableOrReport(e4)) {
                if (this.f80236e == ErrorMode.IMMEDIATE) {
                    this.f80240i.dispose();
                }
                inner.setDone();
                b();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f80243l) {
                return;
            }
            this.f80243l = true;
            this.f80240i.dispose();
            this.f80237f.tryTerminateAndReport();
            h();
        }

        void e() {
            InnerQueuedObserver<R> innerQueuedObserver = this.f80244m;
            if (innerQueuedObserver != null) {
                innerQueuedObserver.dispose();
            }
            while (true) {
                InnerQueuedObserver<R> poll = this.f80238g.poll();
                if (poll == null) {
                    return;
                }
                poll.dispose();
            }
        }

        void h() {
            if (getAndIncrement() == 0) {
                do {
                    this.f80239h.clear();
                    e();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80243l;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80241j = true;
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f80237f.tryAddThrowableOrReport(e4)) {
                this.f80241j = true;
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            if (this.f80242k == 0) {
                this.f80239h.offer(value);
            }
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80240i, d4)) {
                this.f80240i = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f80242k = requestFusion;
                        this.f80239h = lVar;
                        this.f80241j = true;
                        this.f80232a.onSubscribe(this);
                        b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f80242k = requestFusion;
                        this.f80239h = lVar;
                        this.f80232a.onSubscribe(this);
                        return;
                    }
                }
                this.f80239h = new io.reactivex.rxjava3.internal.queue.b(this.f80235d);
                this.f80232a.onSubscribe(this);
            }
        }
    }

    public v(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper, ErrorMode errorMode, int maxConcurrency, int prefetch) {
        super(source);
        this.f80227b = mapper;
        this.f80228c = errorMode;
        this.f80229d = maxConcurrency;
        this.f80230e = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        this.f79141a.a(new a(observer, this.f80227b, this.f80229d, this.f80230e, this.f80228c));
    }
}
