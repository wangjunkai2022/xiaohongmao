package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableUnsubscribeOn.java */
/* loaded from: classes3.dex */
public final class c4<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f73957b;

    /* compiled from: ObservableUnsubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73958d = 1015244841293359600L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73959a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f73960b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73961c;

        /* compiled from: ObservableUnsubscribeOn.java */
        /* renamed from: io.reactivex.internal.operators.observable.c4$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class RunnableC0587a implements Runnable {
            RunnableC0587a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f73961c.dispose();
            }
        }

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.h0 h0Var) {
            this.f73959a = g0Var;
            this.f73960b = h0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f73960b.f(new RunnableC0587a());
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (get()) {
                return;
            }
            this.f73959a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (get()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f73959a.onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (get()) {
                return;
            }
            this.f73959a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73961c, cVar)) {
                this.f73961c = cVar;
                this.f73959a.onSubscribe(this);
            }
        }
    }

    public c4(io.reactivex.e0<T> e0Var, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f73957b = h0Var;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f73957b));
    }
}
