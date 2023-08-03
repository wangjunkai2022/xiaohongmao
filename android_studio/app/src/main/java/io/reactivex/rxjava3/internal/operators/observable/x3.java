package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableThrottleFirstTimed.java */
/* loaded from: classes4.dex */
public final class x3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f80410b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f80411c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80412d;

    /* compiled from: ObservableThrottleFirstTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f80413g = 786994795061867455L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80414a;

        /* renamed from: b  reason: collision with root package name */
        final long f80415b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f80416c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f80417d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80418e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f80419f;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long timeout, TimeUnit unit, o0.c worker) {
            this.f80414a = actual;
            this.f80415b = timeout;
            this.f80416c = unit;
            this.f80417d = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80418e.dispose();
            this.f80417d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80417d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80414a.onComplete();
            this.f80417d.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80414a.onError(t9);
            this.f80417d.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80419f) {
                return;
            }
            this.f80419f = true;
            this.f80414a.onNext(t9);
            io.reactivex.rxjava3.disposables.f fVar = get();
            if (fVar != null) {
                fVar.dispose();
            }
            DisposableHelper.replace(this, this.f80417d.c(this, this.f80415b, this.f80416c));
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80418e, d4)) {
                this.f80418e = d4;
                this.f80414a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f80419f = false;
        }
    }

    public x3(io.reactivex.rxjava3.core.l0<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f80410b = timeout;
        this.f80411c = unit;
        this.f80412d = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(new io.reactivex.rxjava3.observers.m(t9), this.f80410b, this.f80411c, this.f80412d.d()));
    }
}
