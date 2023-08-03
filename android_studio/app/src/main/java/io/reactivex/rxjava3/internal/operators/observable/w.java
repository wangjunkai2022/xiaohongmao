package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMapScheduler.java */
/* loaded from: classes4.dex */
public final class w<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> f80299b;

    /* renamed from: c  reason: collision with root package name */
    final int f80300c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f80301d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80302e;

    /* compiled from: ObservableConcatMapScheduler.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: n  reason: collision with root package name */
        private static final long f80303n = -6951100001833242599L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f80304a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f80305b;

        /* renamed from: c  reason: collision with root package name */
        final int f80306c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f80307d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0677a<R> f80308e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f80309f;

        /* renamed from: g  reason: collision with root package name */
        final o0.c f80310g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f80311h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80312i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f80313j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f80314k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f80315l;

        /* renamed from: m  reason: collision with root package name */
        int f80316m;

        /* compiled from: ObservableConcatMapScheduler.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0677a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f80317c = 2620149119579502636L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.n0<? super R> f80318a;

            /* renamed from: b  reason: collision with root package name */
            final a<?, R> f80319b;

            C0677a(io.reactivex.rxjava3.core.n0<? super R> actual, a<?, R> parent) {
                this.f80318a = actual;
                this.f80319b = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                a<?, R> aVar = this.f80319b;
                aVar.f80313j = false;
                aVar.a();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable e4) {
                a<?, R> aVar = this.f80319b;
                if (aVar.f80307d.tryAddThrowableOrReport(e4)) {
                    if (!aVar.f80309f) {
                        aVar.f80312i.dispose();
                    }
                    aVar.f80313j = false;
                    aVar.a();
                }
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(R value) {
                this.f80318a.onNext(value);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper, int bufferSize, boolean tillTheEnd, o0.c worker) {
            this.f80304a = actual;
            this.f80305b = mapper;
            this.f80306c = bufferSize;
            this.f80309f = tillTheEnd;
            this.f80308e = new C0677a<>(actual, this);
            this.f80310g = worker;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.f80310g.b(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80315l = true;
            this.f80312i.dispose();
            this.f80308e.a();
            this.f80310g.dispose();
            this.f80307d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80315l;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80314k = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f80307d.tryAddThrowableOrReport(e4)) {
                this.f80314k = true;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            if (this.f80316m == 0) {
                this.f80311h.offer(value);
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80312i, d4)) {
                this.f80312i = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f80316m = requestFusion;
                        this.f80311h = lVar;
                        this.f80314k = true;
                        this.f80304a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f80316m = requestFusion;
                        this.f80311h = lVar;
                        this.f80304a.onSubscribe(this);
                        return;
                    }
                }
                this.f80311h = new io.reactivex.rxjava3.internal.queue.b(this.f80306c);
                this.f80304a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f80304a;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f80311h;
            AtomicThrowable atomicThrowable = this.f80307d;
            while (true) {
                if (!this.f80313j) {
                    if (this.f80315l) {
                        qVar.clear();
                        return;
                    } else if (!this.f80309f && atomicThrowable.get() != null) {
                        qVar.clear();
                        this.f80315l = true;
                        atomicThrowable.tryTerminateConsumer(n0Var);
                        this.f80310g.dispose();
                        return;
                    } else {
                        boolean z9 = this.f80314k;
                        try {
                            T poll = qVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                this.f80315l = true;
                                atomicThrowable.tryTerminateConsumer(n0Var);
                                this.f80310g.dispose();
                                return;
                            } else if (!z10) {
                                try {
                                    io.reactivex.rxjava3.core.l0<? extends R> apply = this.f80305b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                                    io.reactivex.rxjava3.core.l0<? extends R> l0Var = apply;
                                    if (l0Var instanceof q7.s) {
                                        try {
                                            Object obj = (Object) ((q7.s) l0Var).get();
                                            if (obj != 0 && !this.f80315l) {
                                                n0Var.onNext(obj);
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.rxjava3.exceptions.a.b(th);
                                            atomicThrowable.tryAddThrowableOrReport(th);
                                        }
                                    } else {
                                        this.f80313j = true;
                                        l0Var.a(this.f80308e);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    this.f80315l = true;
                                    this.f80312i.dispose();
                                    qVar.clear();
                                    atomicThrowable.tryAddThrowableOrReport(th2);
                                    atomicThrowable.tryTerminateConsumer(n0Var);
                                    this.f80310g.dispose();
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            this.f80315l = true;
                            this.f80312i.dispose();
                            atomicThrowable.tryAddThrowableOrReport(th3);
                            atomicThrowable.tryTerminateConsumer(n0Var);
                            this.f80310g.dispose();
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    /* compiled from: ObservableConcatMapScheduler.java */
    /* loaded from: classes4.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: l  reason: collision with root package name */
        private static final long f80320l = 8828587559905699186L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super U> f80321a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> f80322b;

        /* renamed from: c  reason: collision with root package name */
        final a<U> f80323c;

        /* renamed from: d  reason: collision with root package name */
        final int f80324d;

        /* renamed from: e  reason: collision with root package name */
        final o0.c f80325e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f80326f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80327g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f80328h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80329i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f80330j;

        /* renamed from: k  reason: collision with root package name */
        int f80331k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMapScheduler.java */
        /* loaded from: classes4.dex */
        public static final class a<U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<U> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f80332c = -7449079488798789337L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.n0<? super U> f80333a;

            /* renamed from: b  reason: collision with root package name */
            final b<?, ?> f80334b;

            a(io.reactivex.rxjava3.core.n0<? super U> actual, b<?, ?> parent) {
                this.f80333a = actual;
                this.f80334b = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                this.f80334b.b();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable t9) {
                this.f80334b.dispose();
                this.f80333a.onError(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(U t9) {
                this.f80333a.onNext(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }
        }

        b(io.reactivex.rxjava3.core.n0<? super U> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper, int bufferSize, o0.c worker) {
            this.f80321a = actual;
            this.f80322b = mapper;
            this.f80324d = bufferSize;
            this.f80323c = new a<>(actual, this);
            this.f80325e = worker;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.f80325e.b(this);
        }

        void b() {
            this.f80328h = false;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80329i = true;
            this.f80323c.a();
            this.f80327g.dispose();
            this.f80325e.dispose();
            if (getAndIncrement() == 0) {
                this.f80326f.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80329i;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80330j) {
                return;
            }
            this.f80330j = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80330j) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80330j = true;
            dispose();
            this.f80321a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80330j) {
                return;
            }
            if (this.f80331k == 0) {
                this.f80326f.offer(t9);
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80327g, d4)) {
                this.f80327g = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f80331k = requestFusion;
                        this.f80326f = lVar;
                        this.f80330j = true;
                        this.f80321a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f80331k = requestFusion;
                        this.f80326f = lVar;
                        this.f80321a.onSubscribe(this);
                        return;
                    }
                }
                this.f80326f = new io.reactivex.rxjava3.internal.queue.b(this.f80324d);
                this.f80321a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.f80329i) {
                if (!this.f80328h) {
                    boolean z9 = this.f80330j;
                    try {
                        T poll = this.f80326f.poll();
                        boolean z10 = poll == null;
                        if (z9 && z10) {
                            this.f80329i = true;
                            this.f80321a.onComplete();
                            this.f80325e.dispose();
                            return;
                        } else if (!z10) {
                            try {
                                io.reactivex.rxjava3.core.l0<? extends U> apply = this.f80322b.apply(poll);
                                Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                                io.reactivex.rxjava3.core.l0<? extends U> l0Var = apply;
                                this.f80328h = true;
                                l0Var.a(this.f80323c);
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                dispose();
                                this.f80326f.clear();
                                this.f80321a.onError(th);
                                this.f80325e.dispose();
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        dispose();
                        this.f80326f.clear();
                        this.f80321a.onError(th2);
                        this.f80325e.dispose();
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f80326f.clear();
        }
    }

    public w(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper, int bufferSize, ErrorMode delayErrors, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f80299b = mapper;
        this.f80301d = delayErrors;
        this.f80300c = Math.max(8, bufferSize);
        this.f80302e = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super U> observer) {
        if (this.f80301d == ErrorMode.IMMEDIATE) {
            this.f79141a.a(new b(new io.reactivex.rxjava3.observers.m(observer), this.f80299b, this.f80300c, this.f80302e.d()));
        } else {
            this.f79141a.a(new a(observer, this.f80299b, this.f80300c, this.f80301d == ErrorMode.END, this.f80302e.d()));
        }
    }
}
