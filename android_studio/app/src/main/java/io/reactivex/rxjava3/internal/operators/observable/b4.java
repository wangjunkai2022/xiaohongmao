package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTimeoutTimed.java */
/* loaded from: classes4.dex */
public final class b4<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f79221b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f79222c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79223d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79224e;

    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79225a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79226b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.n0<? super T> actual, AtomicReference<io.reactivex.rxjava3.disposables.f> arbiter) {
            this.f79225a = actual;
            this.f79226b = arbiter;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79225a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79225a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79225a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this.f79226b, d4);
        }
    }

    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, d {

        /* renamed from: i  reason: collision with root package name */
        private static final long f79227i = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79228a;

        /* renamed from: b  reason: collision with root package name */
        final long f79229b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f79230c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f79231d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f79232e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f79233f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79234g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.core.l0<? extends T> f79235h;

        b(io.reactivex.rxjava3.core.n0<? super T> actual, long timeout, TimeUnit unit, o0.c worker, io.reactivex.rxjava3.core.l0<? extends T> fallback) {
            this.f79228a = actual;
            this.f79229b = timeout;
            this.f79230c = unit;
            this.f79231d = worker;
            this.f79235h = fallback;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.b4.d
        public void b(long idx) {
            if (this.f79233f.compareAndSet(idx, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f79234g);
                io.reactivex.rxjava3.core.l0<? extends T> l0Var = this.f79235h;
                this.f79235h = null;
                l0Var.a(new a(this.f79228a, this));
                this.f79231d.dispose();
            }
        }

        void c(long nextIndex) {
            this.f79232e.replace(this.f79231d.c(new e(nextIndex, this), this.f79229b, this.f79230c));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79234g);
            DisposableHelper.dispose(this);
            this.f79231d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79233f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79232e.dispose();
                this.f79228a.onComplete();
                this.f79231d.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79233f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79232e.dispose();
                this.f79228a.onError(t9);
                this.f79231d.dispose();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            long j4 = this.f79233f.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (this.f79233f.compareAndSet(j4, j10)) {
                    this.f79232e.get().dispose();
                    this.f79228a.onNext(t9);
                    c(j10);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79234g, d4);
        }
    }

    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, d {

        /* renamed from: g  reason: collision with root package name */
        private static final long f79236g = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79237a;

        /* renamed from: b  reason: collision with root package name */
        final long f79238b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f79239c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f79240d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f79241e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79242f = new AtomicReference<>();

        c(io.reactivex.rxjava3.core.n0<? super T> actual, long timeout, TimeUnit unit, o0.c worker) {
            this.f79237a = actual;
            this.f79238b = timeout;
            this.f79239c = unit;
            this.f79240d = worker;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.b4.d
        public void b(long idx) {
            if (compareAndSet(idx, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f79242f);
                this.f79237a.onError(new TimeoutException(io.reactivex.rxjava3.internal.util.g.h(this.f79238b, this.f79239c)));
                this.f79240d.dispose();
            }
        }

        void c(long nextIndex) {
            this.f79241e.replace(this.f79240d.c(new e(nextIndex, this), this.f79238b, this.f79239c));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79242f);
            this.f79240d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79242f.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79241e.dispose();
                this.f79237a.onComplete();
                this.f79240d.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f79241e.dispose();
                this.f79237a.onError(t9);
                this.f79240d.dispose();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (compareAndSet(j4, j10)) {
                    this.f79241e.get().dispose();
                    this.f79237a.onNext(t9);
                    c(j10);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79242f, d4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    public interface d {
        void b(long idx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    public static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f79243a;

        /* renamed from: b  reason: collision with root package name */
        final long f79244b;

        e(long idx, d parent) {
            this.f79244b = idx;
            this.f79243a = parent;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f79243a.b(this.f79244b);
        }
    }

    public b4(io.reactivex.rxjava3.core.g0<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, io.reactivex.rxjava3.core.l0<? extends T> other) {
        super(source);
        this.f79221b = timeout;
        this.f79222c = unit;
        this.f79223d = scheduler;
        this.f79224e = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        if (this.f79224e == null) {
            c cVar = new c(observer, this.f79221b, this.f79222c, this.f79223d.d());
            observer.onSubscribe(cVar);
            cVar.c(0L);
            this.f79141a.a(cVar);
            return;
        }
        b bVar = new b(observer, this.f79221b, this.f79222c, this.f79223d.d(), this.f79224e);
        observer.onSubscribe(bVar);
        bVar.c(0L);
        this.f79141a.a(bVar);
    }
}
