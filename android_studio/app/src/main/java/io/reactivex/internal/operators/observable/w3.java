package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: ObservableTimeInterval.java */
/* loaded from: classes3.dex */
public final class w3<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.schedulers.d<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f74973b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74974c;

    /* compiled from: ObservableTimeInterval.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.schedulers.d<T>> f74975a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f74976b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.h0 f74977c;

        /* renamed from: d  reason: collision with root package name */
        long f74978d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74979e;

        a(io.reactivex.g0<? super io.reactivex.schedulers.d<T>> g0Var, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f74975a = g0Var;
            this.f74977c = h0Var;
            this.f74976b = timeUnit;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74979e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74979e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74975a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74975a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            long e4 = this.f74977c.e(this.f74976b);
            long j4 = this.f74978d;
            this.f74978d = e4;
            this.f74975a.onNext(new io.reactivex.schedulers.d(t9, e4 - j4, this.f74976b));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74979e, cVar)) {
                this.f74979e = cVar;
                this.f74978d = this.f74977c.e(this.f74976b);
                this.f74975a.onSubscribe(this);
            }
        }
    }

    public w3(io.reactivex.e0<T> e0Var, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f74973b = h0Var;
        this.f74974c = timeUnit;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.schedulers.d<T>> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74974c, this.f74973b));
    }
}
