package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTimeoutTimed.java */
/* loaded from: classes3.dex */
public final class y3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f75063b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f75064c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f75065d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f75066e;

    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75067a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75068b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.g0<? super T> g0Var, AtomicReference<io.reactivex.disposables.c> atomicReference) {
            this.f75067a = g0Var;
            this.f75068b = atomicReference;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f75067a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f75067a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f75067a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this.f75068b, cVar);
        }
    }

    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.disposables.c, d {

        /* renamed from: i  reason: collision with root package name */
        private static final long f75069i = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75070a;

        /* renamed from: b  reason: collision with root package name */
        final long f75071b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f75072c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f75073d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f75074e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f75075f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75076g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.e0<? extends T> f75077h;

        b(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar, io.reactivex.e0<? extends T> e0Var) {
            this.f75070a = g0Var;
            this.f75071b = j4;
            this.f75072c = timeUnit;
            this.f75073d = cVar;
            this.f75077h = e0Var;
        }

        @Override // io.reactivex.internal.operators.observable.y3.d
        public void b(long j4) {
            if (this.f75075f.compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f75076g);
                io.reactivex.e0<? extends T> e0Var = this.f75077h;
                this.f75077h = null;
                e0Var.subscribe(new a(this.f75070a, this));
                this.f75073d.dispose();
            }
        }

        void c(long j4) {
            this.f75074e.replace(this.f75073d.c(new e(j4, this), this.f75071b, this.f75072c));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f75076g);
            DisposableHelper.dispose(this);
            this.f75073d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f75075f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75074e.dispose();
                this.f75070a.onComplete();
                this.f75073d.dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f75075f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75074e.dispose();
                this.f75070a.onError(th);
                this.f75073d.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            long j4 = this.f75075f.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (this.f75075f.compareAndSet(j4, j10)) {
                    this.f75074e.get().dispose();
                    this.f75070a.onNext(t9);
                    c(j10);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f75076g, cVar);
        }
    }

    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.g0<T>, io.reactivex.disposables.c, d {

        /* renamed from: g  reason: collision with root package name */
        private static final long f75078g = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75079a;

        /* renamed from: b  reason: collision with root package name */
        final long f75080b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f75081c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f75082d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f75083e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75084f = new AtomicReference<>();

        c(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f75079a = g0Var;
            this.f75080b = j4;
            this.f75081c = timeUnit;
            this.f75082d = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.y3.d
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f75084f);
                this.f75079a.onError(new TimeoutException(io.reactivex.internal.util.g.e(this.f75080b, this.f75081c)));
                this.f75082d.dispose();
            }
        }

        void c(long j4) {
            this.f75083e.replace(this.f75082d.c(new e(j4, this), this.f75080b, this.f75081c));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f75084f);
            this.f75082d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f75084f.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75083e.dispose();
                this.f75079a.onComplete();
                this.f75082d.dispose();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f75083e.dispose();
                this.f75079a.onError(th);
                this.f75082d.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (compareAndSet(j4, j10)) {
                    this.f75083e.get().dispose();
                    this.f75079a.onNext(t9);
                    c(j10);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f75084f, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    public interface d {
        void b(long j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    public static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f75085a;

        /* renamed from: b  reason: collision with root package name */
        final long f75086b;

        e(long j4, d dVar) {
            this.f75086b = j4;
            this.f75085a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f75085a.b(this.f75086b);
        }
    }

    public y3(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, io.reactivex.e0<? extends T> e0Var) {
        super(zVar);
        this.f75063b = j4;
        this.f75064c = timeUnit;
        this.f75065d = h0Var;
        this.f75066e = e0Var;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        if (this.f75066e == null) {
            c cVar = new c(g0Var, this.f75063b, this.f75064c, this.f75065d.d());
            g0Var.onSubscribe(cVar);
            cVar.c(0L);
            this.f73827a.subscribe(cVar);
            return;
        }
        b bVar = new b(g0Var, this.f75063b, this.f75064c, this.f75065d.d(), this.f75066e);
        g0Var.onSubscribe(bVar);
        bVar.c(0L);
        this.f73827a.subscribe(bVar);
    }
}
