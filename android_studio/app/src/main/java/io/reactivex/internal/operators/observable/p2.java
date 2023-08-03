package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRepeat.java */
/* loaded from: classes3.dex */
public final class p2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74578b;

    /* compiled from: ObservableRepeat.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74579e = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74580a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f74581b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f74582c;

        /* renamed from: d  reason: collision with root package name */
        long f74583d;

        a(io.reactivex.g0<? super T> g0Var, long j4, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f74580a = g0Var;
            this.f74581b = sequentialDisposable;
            this.f74582c = e0Var;
            this.f74583d = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f74581b.isDisposed()) {
                    this.f74582c.subscribe(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            long j4 = this.f74583d;
            if (j4 != Long.MAX_VALUE) {
                this.f74583d = j4 - 1;
            }
            if (j4 != 0) {
                a();
            } else {
                this.f74580a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74580a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74580a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74581b.replace(cVar);
        }
    }

    public p2(io.reactivex.z<T> zVar, long j4) {
        super(zVar);
        this.f74578b = j4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        long j4 = this.f74578b;
        new a(g0Var, j4 != Long.MAX_VALUE ? j4 - 1 : Long.MAX_VALUE, sequentialDisposable, this.f73827a).a();
    }
}
