package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.l0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.v0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMapSingle.java */
/* loaded from: classes4.dex */
public final class s<T, R> extends g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final l0<T> f79029a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends v0<? extends R>> f79030b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f79031c;

    /* renamed from: d  reason: collision with root package name */
    final int f79032d;

    /* compiled from: ObservableConcatMapSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: l  reason: collision with root package name */
        private static final long f79033l = -9140123220065488293L;

        /* renamed from: m  reason: collision with root package name */
        static final int f79034m = 0;

        /* renamed from: n  reason: collision with root package name */
        static final int f79035n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final int f79036o = 2;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f79037a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends v0<? extends R>> f79038b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f79039c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final C0659a<R> f79040d = new C0659a<>(this);

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<T> f79041e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f79042f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79043g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79044h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f79045i;

        /* renamed from: j  reason: collision with root package name */
        R f79046j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f79047k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMapSingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.s$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0659a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements s0<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79048b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f79049a;

            C0659a(a<?, R> parent) {
                this.f79049a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79049a.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f79049a.c(t9);
            }
        }

        a(n0<? super R> downstream, q7.o<? super T, ? extends v0<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
            this.f79037a = downstream;
            this.f79038b = mapper;
            this.f79042f = errorMode;
            this.f79041e = new io.reactivex.rxjava3.internal.queue.b(prefetch);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            n0<? super R> n0Var = this.f79037a;
            ErrorMode errorMode = this.f79042f;
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f79041e;
            AtomicThrowable atomicThrowable = this.f79039c;
            int i4 = 1;
            while (true) {
                if (this.f79045i) {
                    pVar.clear();
                    this.f79046j = null;
                } else {
                    int i10 = this.f79047k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i10 != 0))) {
                        if (i10 == 0) {
                            boolean z9 = this.f79044h;
                            T poll = pVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                atomicThrowable.tryTerminateConsumer(n0Var);
                                return;
                            } else if (!z10) {
                                try {
                                    v0<? extends R> apply = this.f79038b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                                    v0<? extends R> v0Var = apply;
                                    this.f79047k = 1;
                                    v0Var.d(this.f79040d);
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    this.f79043g.dispose();
                                    pVar.clear();
                                    atomicThrowable.tryAddThrowableOrReport(th);
                                    atomicThrowable.tryTerminateConsumer(n0Var);
                                    return;
                                }
                            }
                        } else if (i10 == 2) {
                            this.f79046j = null;
                            n0Var.onNext((R) this.f79046j);
                            this.f79047k = 0;
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            pVar.clear();
            this.f79046j = null;
            atomicThrowable.tryTerminateConsumer(n0Var);
        }

        void b(Throwable ex) {
            if (this.f79039c.tryAddThrowableOrReport(ex)) {
                if (this.f79042f != ErrorMode.END) {
                    this.f79043g.dispose();
                }
                this.f79047k = 0;
                a();
            }
        }

        void c(R item) {
            this.f79046j = item;
            this.f79047k = 2;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79045i = true;
            this.f79043g.dispose();
            this.f79040d.a();
            this.f79039c.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f79041e.clear();
                this.f79046j = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79045i;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79044h = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79039c.tryAddThrowableOrReport(t9)) {
                if (this.f79042f == ErrorMode.IMMEDIATE) {
                    this.f79040d.a();
                }
                this.f79044h = true;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79041e.offer(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79043g, d4)) {
                this.f79043g = d4;
                this.f79037a.onSubscribe(this);
            }
        }
    }

    public s(l0<T> source, q7.o<? super T, ? extends v0<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f79029a = source;
        this.f79030b = mapper;
        this.f79031c = errorMode;
        this.f79032d = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        if (w.c(this.f79029a, this.f79030b, observer)) {
            return;
        }
        this.f79029a.a(new a(observer, this.f79030b, this.f79032d, this.f79031c));
    }
}
