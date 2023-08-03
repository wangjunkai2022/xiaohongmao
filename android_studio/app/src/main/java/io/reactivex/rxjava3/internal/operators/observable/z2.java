package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSampleTimed.java */
/* loaded from: classes4.dex */
public final class z2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f80489b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f80490c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80491d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f80492e;

    /* compiled from: ObservableSampleTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends c<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f80493i = -7139995637533111443L;

        /* renamed from: h  reason: collision with root package name */
        final AtomicInteger f80494h;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            super(actual, period, unit, scheduler);
            this.f80494h = new AtomicInteger(1);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.z2.c
        void b() {
            c();
            if (this.f80494h.decrementAndGet() == 0) {
                this.f80497a.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f80494h.incrementAndGet() == 2) {
                c();
                if (this.f80494h.decrementAndGet() == 0) {
                    this.f80497a.onComplete();
                }
            }
        }
    }

    /* compiled from: ObservableSampleTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f80495h = -7139995637533111443L;

        b(io.reactivex.rxjava3.core.n0<? super T> actual, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            super(actual, period, unit, scheduler);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.z2.c
        void b() {
            this.f80497a.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            c();
        }
    }

    /* compiled from: ObservableSampleTimed.java */
    /* loaded from: classes4.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f80496g = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80497a;

        /* renamed from: b  reason: collision with root package name */
        final long f80498b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f80499c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80500d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f80501e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80502f;

        c(io.reactivex.rxjava3.core.n0<? super T> actual, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f80497a = actual;
            this.f80498b = period;
            this.f80499c = unit;
            this.f80500d = scheduler;
        }

        void a() {
            DisposableHelper.dispose(this.f80501e);
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f80497a.onNext(andSet);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            a();
            this.f80502f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80502f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            a();
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            a();
            this.f80497a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80502f, d4)) {
                this.f80502f = d4;
                this.f80497a.onSubscribe(this);
                io.reactivex.rxjava3.core.o0 o0Var = this.f80500d;
                long j4 = this.f80498b;
                DisposableHelper.replace(this.f80501e, o0Var.h(this, j4, j4, this.f80499c));
            }
        }
    }

    public z2(io.reactivex.rxjava3.core.l0<T> source, long period, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean emitLast) {
        super(source);
        this.f80489b = period;
        this.f80490c = unit;
        this.f80491d = scheduler;
        this.f80492e = emitLast;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        io.reactivex.rxjava3.observers.m mVar = new io.reactivex.rxjava3.observers.m(t9);
        if (this.f80492e) {
            this.f79141a.a(new a(mVar, this.f80489b, this.f80490c, this.f80491d));
        } else {
            this.f79141a.a(new b(mVar, this.f80489b, this.f80490c, this.f80491d));
        }
    }
}
