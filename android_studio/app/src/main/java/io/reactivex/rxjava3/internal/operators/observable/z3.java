package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableTimeInterval.java */
/* loaded from: classes4.dex */
public final class z3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.schedulers.d<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80503b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f80504c;

    /* compiled from: ObservableTimeInterval.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.schedulers.d<T>> f80505a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f80506b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80507c;

        /* renamed from: d  reason: collision with root package name */
        long f80508d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80509e;

        a(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.schedulers.d<T>> actual, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f80505a = actual;
            this.f80507c = scheduler;
            this.f80506b = unit;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80509e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80509e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80505a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80505a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            long e4 = this.f80507c.e(this.f80506b);
            long j4 = this.f80508d;
            this.f80508d = e4;
            this.f80505a.onNext(new io.reactivex.rxjava3.schedulers.d(t9, e4 - j4, this.f80506b));
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80509e, d4)) {
                this.f80509e = d4;
                this.f80508d = this.f80507c.e(this.f80506b);
                this.f80505a.onSubscribe(this);
            }
        }
    }

    public z3(io.reactivex.rxjava3.core.l0<T> source, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f80503b = scheduler;
        this.f80504c = unit;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.schedulers.d<T>> t9) {
        this.f79141a.a(new a(t9, this.f80504c, this.f80503b));
    }
}
