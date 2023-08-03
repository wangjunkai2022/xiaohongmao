package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRetryPredicate.java */
/* loaded from: classes4.dex */
public final class x2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super Throwable> f80402b;

    /* renamed from: c  reason: collision with root package name */
    final long f80403c;

    /* compiled from: ObservableRetryPredicate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f80404f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80405a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f80406b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f80407c;

        /* renamed from: d  reason: collision with root package name */
        final q7.r<? super Throwable> f80408d;

        /* renamed from: e  reason: collision with root package name */
        long f80409e;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long count, q7.r<? super Throwable> predicate, SequentialDisposable sa, io.reactivex.rxjava3.core.l0<? extends T> source) {
            this.f80405a = actual;
            this.f80406b = sa;
            this.f80407c = source;
            this.f80408d = predicate;
            this.f80409e = count;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f80406b.isDisposed()) {
                    this.f80407c.a(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80405a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            long j4 = this.f80409e;
            if (j4 != Long.MAX_VALUE) {
                this.f80409e = j4 - 1;
            }
            if (j4 == 0) {
                this.f80405a.onError(t9);
                return;
            }
            try {
                if (!this.f80408d.test(t9)) {
                    this.f80405a.onError(t9);
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80405a.onError(new CompositeException(t9, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80405a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80406b.replace(d4);
        }
    }

    public x2(io.reactivex.rxjava3.core.g0<T> source, long count, q7.r<? super Throwable> predicate) {
        super(source);
        this.f80402b = predicate;
        this.f80403c = count;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new a(observer, this.f80403c, this.f80402b, sequentialDisposable, this.f79141a).a();
    }
}
