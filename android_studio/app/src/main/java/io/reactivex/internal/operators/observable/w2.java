package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSampleTimed.java */
/* loaded from: classes3.dex */
public final class w2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74959b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74960c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f74961d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f74962e;

    /* compiled from: ObservableSampleTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends c<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f74963i = -7139995637533111443L;

        /* renamed from: h  reason: collision with root package name */
        final AtomicInteger f74964h;

        a(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(g0Var, j4, timeUnit, h0Var);
            this.f74964h = new AtomicInteger(1);
        }

        @Override // io.reactivex.internal.operators.observable.w2.c
        void b() {
            c();
            if (this.f74964h.decrementAndGet() == 0) {
                this.f74967a.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74964h.incrementAndGet() == 2) {
                c();
                if (this.f74964h.decrementAndGet() == 0) {
                    this.f74967a.onComplete();
                }
            }
        }
    }

    /* compiled from: ObservableSampleTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f74965h = -7139995637533111443L;

        b(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(g0Var, j4, timeUnit, h0Var);
        }

        @Override // io.reactivex.internal.operators.observable.w2.c
        void b() {
            this.f74967a.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            c();
        }
    }

    /* compiled from: ObservableSampleTimed.java */
    /* loaded from: classes3.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f74966g = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74967a;

        /* renamed from: b  reason: collision with root package name */
        final long f74968b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f74969c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f74970d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74971e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f74972f;

        c(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f74967a = g0Var;
            this.f74968b = j4;
            this.f74969c = timeUnit;
            this.f74970d = h0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f74971e);
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f74967a.onNext(andSet);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            a();
            this.f74972f.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74972f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            a();
            this.f74967a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74972f, cVar)) {
                this.f74972f = cVar;
                this.f74967a.onSubscribe(this);
                io.reactivex.h0 h0Var = this.f74970d;
                long j4 = this.f74968b;
                DisposableHelper.replace(this.f74971e, h0Var.h(this, j4, j4, this.f74969c));
            }
        }
    }

    public w2(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        super(e0Var);
        this.f74959b = j4;
        this.f74960c = timeUnit;
        this.f74961d = h0Var;
        this.f74962e = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        if (this.f74962e) {
            this.f73827a.subscribe(new a(lVar, this.f74959b, this.f74960c, this.f74961d));
        } else {
            this.f73827a.subscribe(new b(lVar, this.f74959b, this.f74960c, this.f74961d));
        }
    }
}
