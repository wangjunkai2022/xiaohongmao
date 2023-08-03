package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRetryPredicate.java */
/* loaded from: classes3.dex */
public final class u2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super Throwable> f74818b;

    /* renamed from: c  reason: collision with root package name */
    final long f74819c;

    /* compiled from: ObservableRetryPredicate.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f74820f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74821a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f74822b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends T> f74823c;

        /* renamed from: d  reason: collision with root package name */
        final n7.r<? super Throwable> f74824d;

        /* renamed from: e  reason: collision with root package name */
        long f74825e;

        a(io.reactivex.g0<? super T> g0Var, long j4, n7.r<? super Throwable> rVar, SequentialDisposable sequentialDisposable, io.reactivex.e0<? extends T> e0Var) {
            this.f74821a = g0Var;
            this.f74822b = sequentialDisposable;
            this.f74823c = e0Var;
            this.f74824d = rVar;
            this.f74825e = j4;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f74822b.isDisposed()) {
                    this.f74823c.subscribe(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74821a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            long j4 = this.f74825e;
            if (j4 != Long.MAX_VALUE) {
                this.f74825e = j4 - 1;
            }
            if (j4 == 0) {
                this.f74821a.onError(th);
                return;
            }
            try {
                if (!this.f74824d.test(th)) {
                    this.f74821a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f74821a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74821a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74822b.replace(cVar);
        }
    }

    public u2(io.reactivex.z<T> zVar, long j4, n7.r<? super Throwable> rVar) {
        super(zVar);
        this.f74818b = rVar;
        this.f74819c = j4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        g0Var.onSubscribe(sequentialDisposable);
        new a(g0Var, this.f74819c, this.f74818b, sequentialDisposable, this.f73827a).a();
    }
}
