package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMapMaybe.java */
/* loaded from: classes4.dex */
public final class r<T, R> extends g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final g0<T> f79008a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends b0<? extends R>> f79009b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f79010c;

    /* renamed from: d  reason: collision with root package name */
    final int f79011d;

    /* compiled from: ObservableConcatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: l  reason: collision with root package name */
        private static final long f79012l = -9140123220065488293L;

        /* renamed from: m  reason: collision with root package name */
        static final int f79013m = 0;

        /* renamed from: n  reason: collision with root package name */
        static final int f79014n = 1;

        /* renamed from: o  reason: collision with root package name */
        static final int f79015o = 2;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f79016a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends b0<? extends R>> f79017b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f79018c = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final C0658a<R> f79019d = new C0658a<>(this);

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<T> f79020e;

        /* renamed from: f  reason: collision with root package name */
        final ErrorMode f79021f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79022g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79023h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f79024i;

        /* renamed from: j  reason: collision with root package name */
        R f79025j;

        /* renamed from: k  reason: collision with root package name */
        volatile int f79026k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMapMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0658a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements y<R> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79027b = -3051469169682093892L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f79028a;

            C0658a(a<?, R> parent) {
                this.f79028a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f79028a.b();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79028a.c(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f79028a.d(t9);
            }
        }

        a(n0<? super R> downstream, q7.o<? super T, ? extends b0<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
            this.f79016a = downstream;
            this.f79017b = mapper;
            this.f79021f = errorMode;
            this.f79020e = new io.reactivex.rxjava3.internal.queue.b(prefetch);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            n0<? super R> n0Var = this.f79016a;
            ErrorMode errorMode = this.f79021f;
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f79020e;
            AtomicThrowable atomicThrowable = this.f79018c;
            int i4 = 1;
            while (true) {
                if (this.f79024i) {
                    pVar.clear();
                    this.f79025j = null;
                } else {
                    int i10 = this.f79026k;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i10 != 0))) {
                        if (i10 == 0) {
                            boolean z9 = this.f79023h;
                            T poll = pVar.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                atomicThrowable.tryTerminateConsumer(n0Var);
                                return;
                            } else if (!z10) {
                                try {
                                    b0<? extends R> apply = this.f79017b.apply(poll);
                                    Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                                    b0<? extends R> b0Var = apply;
                                    this.f79026k = 1;
                                    b0Var.b(this.f79019d);
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    this.f79022g.dispose();
                                    pVar.clear();
                                    atomicThrowable.tryAddThrowableOrReport(th);
                                    atomicThrowable.tryTerminateConsumer(n0Var);
                                    return;
                                }
                            }
                        } else if (i10 == 2) {
                            this.f79025j = null;
                            n0Var.onNext((R) this.f79025j);
                            this.f79026k = 0;
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            pVar.clear();
            this.f79025j = null;
            atomicThrowable.tryTerminateConsumer(n0Var);
        }

        void b() {
            this.f79026k = 0;
            a();
        }

        void c(Throwable ex) {
            if (this.f79018c.tryAddThrowableOrReport(ex)) {
                if (this.f79021f != ErrorMode.END) {
                    this.f79022g.dispose();
                }
                this.f79026k = 0;
                a();
            }
        }

        void d(R item) {
            this.f79025j = item;
            this.f79026k = 2;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79024i = true;
            this.f79022g.dispose();
            this.f79019d.a();
            this.f79018c.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f79020e.clear();
                this.f79025j = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79024i;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79023h = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79018c.tryAddThrowableOrReport(t9)) {
                if (this.f79021f == ErrorMode.IMMEDIATE) {
                    this.f79019d.a();
                }
                this.f79023h = true;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79020e.offer(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79022g, d4)) {
                this.f79022g = d4;
                this.f79016a.onSubscribe(this);
            }
        }
    }

    public r(g0<T> source, q7.o<? super T, ? extends b0<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f79008a = source;
        this.f79009b = mapper;
        this.f79010c = errorMode;
        this.f79011d = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        if (w.b(this.f79008a, this.f79009b, observer)) {
            return;
        }
        this.f79008a.a(new a(observer, this.f79009b, this.f79011d, this.f79010c));
    }
}
