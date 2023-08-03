package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRepeatUntil.java */
/* loaded from: classes4.dex */
public final class t2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.e f80128b;

    /* compiled from: ObservableRepeatUntil.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80129e = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80130a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f80131b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f80132c;

        /* renamed from: d  reason: collision with root package name */
        final q7.e f80133d;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.e until, SequentialDisposable sd, io.reactivex.rxjava3.core.l0<? extends T> source) {
            this.f80130a = actual;
            this.f80131b = sd;
            this.f80132c = source;
            this.f80133d = until;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                do {
                    this.f80132c.a(this);
                    i4 = addAndGet(-i4);
                } while (i4 != 0);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            try {
                if (this.f80133d.a()) {
                    this.f80130a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80130a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80130a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80130a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80131b.replace(d4);
        }
    }

    public t2(io.reactivex.rxjava3.core.g0<T> source, q7.e until) {
        super(source);
        this.f80128b = until;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new a(observer, this.f80128b, sequentialDisposable, this.f79141a).a();
    }
}
