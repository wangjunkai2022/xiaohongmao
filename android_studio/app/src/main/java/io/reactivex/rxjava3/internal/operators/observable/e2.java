package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableMergeWithSingle.java */
/* loaded from: classes4.dex */
public final class e2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f79368b;

    /* compiled from: ObservableMergeWithSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: j  reason: collision with root package name */
        private static final long f79369j = -4592979584110982903L;

        /* renamed from: k  reason: collision with root package name */
        static final int f79370k = 1;

        /* renamed from: l  reason: collision with root package name */
        static final int f79371l = 2;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79372a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79373b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0668a<T> f79374c = new C0668a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f79375d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.p<T> f79376e;

        /* renamed from: f  reason: collision with root package name */
        T f79377f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79378g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79379h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f79380i;

        /* compiled from: ObservableMergeWithSingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.e2$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0668a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79381b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f79382a;

            C0668a(a<T> parent) {
                this.f79382a = parent;
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79382a.d(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(T t9) {
                this.f79382a.e(t9);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79372a = downstream;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79372a;
            int i4 = 1;
            while (!this.f79378g) {
                if (this.f79375d.get() != null) {
                    this.f79377f = null;
                    this.f79376e = null;
                    this.f79375d.tryTerminateConsumer(n0Var);
                    return;
                }
                int i10 = this.f79380i;
                if (i10 == 1) {
                    this.f79377f = null;
                    this.f79380i = 2;
                    n0Var.onNext((T) this.f79377f);
                    i10 = 2;
                }
                boolean z9 = this.f79379h;
                io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f79376e;
                T poll = pVar != null ? pVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10 && i10 == 2) {
                    this.f79376e = null;
                    n0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    n0Var.onNext(poll);
                }
            }
            this.f79377f = null;
            this.f79376e = null;
        }

        io.reactivex.rxjava3.internal.fuseable.p<T> c() {
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f79376e;
            if (pVar == null) {
                io.reactivex.rxjava3.internal.queue.b bVar = new io.reactivex.rxjava3.internal.queue.b(io.reactivex.rxjava3.core.g0.R());
                this.f79376e = bVar;
                return bVar;
            }
            return pVar;
        }

        void d(Throwable ex) {
            if (this.f79375d.tryAddThrowableOrReport(ex)) {
                DisposableHelper.dispose(this.f79373b);
                a();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79378g = true;
            DisposableHelper.dispose(this.f79373b);
            DisposableHelper.dispose(this.f79374c);
            this.f79375d.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f79376e = null;
                this.f79377f = null;
            }
        }

        void e(T value) {
            if (compareAndSet(0, 1)) {
                this.f79372a.onNext(value);
                this.f79380i = 2;
            } else {
                this.f79377f = value;
                this.f79380i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79373b.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79379h = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable ex) {
            if (this.f79375d.tryAddThrowableOrReport(ex)) {
                DisposableHelper.dispose(this.f79374c);
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (compareAndSet(0, 1)) {
                this.f79372a.onNext(t9);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                c().offer(t9);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79373b, d4);
        }
    }

    public e2(io.reactivex.rxjava3.core.g0<T> source, io.reactivex.rxjava3.core.v0<? extends T> other) {
        super(source);
        this.f79368b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        this.f79141a.a(aVar);
        this.f79368b.d(aVar.f79374c);
    }
}
