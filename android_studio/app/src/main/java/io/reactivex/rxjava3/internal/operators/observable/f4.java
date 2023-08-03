package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableUnsubscribeOn.java */
/* loaded from: classes4.dex */
public final class f4<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79417b;

    /* compiled from: ObservableUnsubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f79418d = 1015244841293359600L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79419a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f79420b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79421c;

        /* compiled from: ObservableUnsubscribeOn.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.f4$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0669a implements Runnable {
            RunnableC0669a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f79421c.dispose();
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f79419a = actual;
            this.f79420b = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f79420b.f(new RunnableC0669a());
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (get()) {
                return;
            }
            this.f79419a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (get()) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f79419a.onError(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (get()) {
                return;
            }
            this.f79419a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79421c, d4)) {
                this.f79421c = d4;
                this.f79419a.onSubscribe(this);
            }
        }
    }

    public f4(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f79417b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f79417b));
    }
}
