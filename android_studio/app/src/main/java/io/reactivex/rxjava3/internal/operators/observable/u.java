package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMap.java */
/* loaded from: classes4.dex */
public final class u<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> f80151b;

    /* renamed from: c  reason: collision with root package name */
    final int f80152c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f80153d;

    /* compiled from: ObservableConcatMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: m  reason: collision with root package name */
        private static final long f80154m = -6951100001833242599L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f80155a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f80156b;

        /* renamed from: c  reason: collision with root package name */
        final int f80157c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f80158d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0674a<R> f80159e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f80160f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f80161g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80162h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80163i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f80164j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f80165k;

        /* renamed from: l  reason: collision with root package name */
        int f80166l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMap.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0674a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f80167c = 2620149119579502636L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.n0<? super R> f80168a;

            /* renamed from: b  reason: collision with root package name */
            final a<?, R> f80169b;

            C0674a(io.reactivex.rxjava3.core.n0<? super R> actual, a<?, R> parent) {
                this.f80168a = actual;
                this.f80169b = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                a<?, R> aVar = this.f80169b;
                aVar.f80163i = false;
                aVar.a();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable e4) {
                a<?, R> aVar = this.f80169b;
                if (aVar.f80158d.tryAddThrowableOrReport(e4)) {
                    if (!aVar.f80160f) {
                        aVar.f80162h.dispose();
                    }
                    aVar.f80163i = false;
                    aVar.a();
                }
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(R value) {
                this.f80168a.onNext(value);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper, int bufferSize, boolean tillTheEnd) {
            this.f80155a = actual;
            this.f80156b = mapper;
            this.f80157c = bufferSize;
            this.f80160f = tillTheEnd;
            this.f80159e = new C0674a<>(actual, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f80155a;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f80161g;
            AtomicThrowable atomicThrowable = this.f80158d;
            while (true) {
                if (!this.f80163i) {
                    if (this.f80165k) {
                        qVar.clear();
                        return;
                    } else if (!this.f80160f && atomicThrowable.get() != null) {
                        qVar.clear();
                        this.f80165k = true;
                        atomicThrowable.tryTerminateConsumer(n0Var);
                        return;
                    } else {
                        boolean z9 = this.f80164j;
                        try {
                            T poll = qVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                this.f80165k = true;
                                atomicThrowable.tryTerminateConsumer(n0Var);
                                return;
                            } else if (!z10) {
                                try {
                                    io.reactivex.rxjava3.core.l0<? extends R> apply = this.f80156b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                                    io.reactivex.rxjava3.core.l0<? extends R> l0Var = apply;
                                    if (l0Var instanceof q7.s) {
                                        try {
                                            Object obj = (Object) ((q7.s) l0Var).get();
                                            if (obj != 0 && !this.f80165k) {
                                                n0Var.onNext(obj);
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.rxjava3.exceptions.a.b(th);
                                            atomicThrowable.tryAddThrowableOrReport(th);
                                        }
                                    } else {
                                        this.f80163i = true;
                                        l0Var.a(this.f80159e);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    this.f80165k = true;
                                    this.f80162h.dispose();
                                    qVar.clear();
                                    atomicThrowable.tryAddThrowableOrReport(th2);
                                    atomicThrowable.tryTerminateConsumer(n0Var);
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            this.f80165k = true;
                            this.f80162h.dispose();
                            atomicThrowable.tryAddThrowableOrReport(th3);
                            atomicThrowable.tryTerminateConsumer(n0Var);
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80165k = true;
            this.f80162h.dispose();
            this.f80159e.a();
            this.f80158d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80165k;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80164j = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            if (this.f80158d.tryAddThrowableOrReport(e4)) {
                this.f80164j = true;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            if (this.f80166l == 0) {
                this.f80161g.offer(value);
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80162h, d4)) {
                this.f80162h = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f80166l = requestFusion;
                        this.f80161g = lVar;
                        this.f80164j = true;
                        this.f80155a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f80166l = requestFusion;
                        this.f80161g = lVar;
                        this.f80155a.onSubscribe(this);
                        return;
                    }
                }
                this.f80161g = new io.reactivex.rxjava3.internal.queue.b(this.f80157c);
                this.f80155a.onSubscribe(this);
            }
        }
    }

    /* compiled from: ObservableConcatMap.java */
    /* loaded from: classes4.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: k  reason: collision with root package name */
        private static final long f80170k = 8828587559905699186L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super U> f80171a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> f80172b;

        /* renamed from: c  reason: collision with root package name */
        final a<U> f80173c;

        /* renamed from: d  reason: collision with root package name */
        final int f80174d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f80175e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80176f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f80177g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f80178h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80179i;

        /* renamed from: j  reason: collision with root package name */
        int f80180j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMap.java */
        /* loaded from: classes4.dex */
        public static final class a<U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<U> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f80181c = -7449079488798789337L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.n0<? super U> f80182a;

            /* renamed from: b  reason: collision with root package name */
            final b<?, ?> f80183b;

            a(io.reactivex.rxjava3.core.n0<? super U> actual, b<?, ?> parent) {
                this.f80182a = actual;
                this.f80183b = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                this.f80183b.b();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable t9) {
                this.f80183b.dispose();
                this.f80182a.onError(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(U t9) {
                this.f80182a.onNext(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }
        }

        b(io.reactivex.rxjava3.core.n0<? super U> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper, int bufferSize) {
            this.f80171a = actual;
            this.f80172b = mapper;
            this.f80174d = bufferSize;
            this.f80173c = new a<>(actual, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f80178h) {
                if (!this.f80177g) {
                    boolean z9 = this.f80179i;
                    try {
                        T poll = this.f80175e.poll();
                        boolean z10 = poll == null;
                        if (z9 && z10) {
                            this.f80178h = true;
                            this.f80171a.onComplete();
                            return;
                        } else if (!z10) {
                            try {
                                io.reactivex.rxjava3.core.l0<? extends U> apply = this.f80172b.apply(poll);
                                Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
                                io.reactivex.rxjava3.core.l0<? extends U> l0Var = apply;
                                this.f80177g = true;
                                l0Var.a(this.f80173c);
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                dispose();
                                this.f80175e.clear();
                                this.f80171a.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        dispose();
                        this.f80175e.clear();
                        this.f80171a.onError(th2);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f80175e.clear();
        }

        void b() {
            this.f80177g = false;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80178h = true;
            this.f80173c.a();
            this.f80176f.dispose();
            if (getAndIncrement() == 0) {
                this.f80175e.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80178h;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80179i) {
                return;
            }
            this.f80179i = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f80179i) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80179i = true;
            dispose();
            this.f80171a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80179i) {
                return;
            }
            if (this.f80180j == 0) {
                this.f80175e.offer(t9);
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80176f, d4)) {
                this.f80176f = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f80180j = requestFusion;
                        this.f80175e = lVar;
                        this.f80179i = true;
                        this.f80171a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f80180j = requestFusion;
                        this.f80175e = lVar;
                        this.f80171a.onSubscribe(this);
                        return;
                    }
                }
                this.f80175e = new io.reactivex.rxjava3.internal.queue.b(this.f80174d);
                this.f80171a.onSubscribe(this);
            }
        }
    }

    public u(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends U>> mapper, int bufferSize, ErrorMode delayErrors) {
        super(source);
        this.f80151b = mapper;
        this.f80153d = delayErrors;
        this.f80152c = Math.max(8, bufferSize);
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super U> observer) {
        if (ObservableScalarXMap.b(this.f79141a, observer, this.f80151b)) {
            return;
        }
        if (this.f80153d == ErrorMode.IMMEDIATE) {
            this.f79141a.a(new b(new io.reactivex.rxjava3.observers.m(observer), this.f80151b, this.f80152c));
        } else {
            this.f79141a.a(new a(observer, this.f80151b, this.f80152c, this.f80153d == ErrorMode.END));
        }
    }
}
