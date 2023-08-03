package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRepeat.java */
/* loaded from: classes4.dex */
public final class s2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f80088b;

    /* compiled from: ObservableRepeat.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80089e = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80090a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f80091b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f80092c;

        /* renamed from: d  reason: collision with root package name */
        long f80093d;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long count, SequentialDisposable sd, io.reactivex.rxjava3.core.l0<? extends T> source) {
            this.f80090a = actual;
            this.f80091b = sd;
            this.f80092c = source;
            this.f80093d = count;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f80091b.isDisposed()) {
                    this.f80092c.a(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            long j4 = this.f80093d;
            if (j4 != Long.MAX_VALUE) {
                this.f80093d = j4 - 1;
            }
            if (j4 != 0) {
                a();
            } else {
                this.f80090a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80090a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80090a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80091b.replace(d4);
        }
    }

    public s2(io.reactivex.rxjava3.core.g0<T> source, long count) {
        super(source);
        this.f80088b = count;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        long j4 = this.f80088b;
        new a(observer, j4 != Long.MAX_VALUE ? j4 - 1 : Long.MAX_VALUE, sequentialDisposable, this.f79141a).a();
    }
}
