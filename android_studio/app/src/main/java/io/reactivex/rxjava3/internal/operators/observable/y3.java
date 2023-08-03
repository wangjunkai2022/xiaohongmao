package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableThrottleLatest.java */
/* loaded from: classes4.dex */
public final class y3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f80451b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f80452c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80453d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f80454e;

    /* compiled from: ObservableThrottleLatest.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: m  reason: collision with root package name */
        private static final long f80455m = -8296689127439125014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80456a;

        /* renamed from: b  reason: collision with root package name */
        final long f80457b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f80458c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f80459d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f80460e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<T> f80461f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80462g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f80463h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f80464i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f80465j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f80466k;

        /* renamed from: l  reason: collision with root package name */
        boolean f80467l;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream, long timeout, TimeUnit unit, o0.c worker, boolean emitLast) {
            this.f80456a = downstream;
            this.f80457b = timeout;
            this.f80458c = unit;
            this.f80459d = worker;
            this.f80460e = emitLast;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f80461f;
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f80456a;
            int i4 = 1;
            while (!this.f80465j) {
                boolean z9 = this.f80463h;
                if (z9 && this.f80464i != null) {
                    atomicReference.lazySet(null);
                    n0Var.onError(this.f80464i);
                    this.f80459d.dispose();
                    return;
                }
                boolean z10 = atomicReference.get() == null;
                if (z9) {
                    T andSet = atomicReference.getAndSet(null);
                    if (!z10 && this.f80460e) {
                        n0Var.onNext(andSet);
                    }
                    n0Var.onComplete();
                    this.f80459d.dispose();
                    return;
                }
                if (z10) {
                    if (this.f80466k) {
                        this.f80467l = false;
                        this.f80466k = false;
                    }
                } else if (!this.f80467l || this.f80466k) {
                    n0Var.onNext(atomicReference.getAndSet(null));
                    this.f80466k = false;
                    this.f80467l = true;
                    this.f80459d.c(this, this.f80457b, this.f80458c);
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80465j = true;
            this.f80462g.dispose();
            this.f80459d.dispose();
            if (getAndIncrement() == 0) {
                this.f80461f.lazySet(null);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80465j;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80463h = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80464i = t9;
            this.f80463h = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80461f.set(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80462g, d4)) {
                this.f80462g = d4;
                this.f80456a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f80466k = true;
            a();
        }
    }

    public y3(io.reactivex.rxjava3.core.g0<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean emitLast) {
        super(source);
        this.f80451b = timeout;
        this.f80452c = unit;
        this.f80453d = scheduler;
        this.f80454e = emitLast;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f80451b, this.f80452c, this.f80453d.d(), this.f80454e));
    }
}
