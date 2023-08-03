package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableRetryBiPredicate.java */
/* loaded from: classes4.dex */
public final class w2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.d<? super Integer, ? super Throwable> f80367b;

    /* compiled from: ObservableRetryBiPredicate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f80368f = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80369a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f80370b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f80371c;

        /* renamed from: d  reason: collision with root package name */
        final q7.d<? super Integer, ? super Throwable> f80372d;

        /* renamed from: e  reason: collision with root package name */
        int f80373e;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.d<? super Integer, ? super Throwable> predicate, SequentialDisposable sa, io.reactivex.rxjava3.core.l0<? extends T> source) {
            this.f80369a = actual;
            this.f80370b = sa;
            this.f80371c = source;
            this.f80372d = predicate;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i4 = 1;
                while (!this.f80370b.isDisposed()) {
                    this.f80371c.a(this);
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80369a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            try {
                q7.d<? super Integer, ? super Throwable> dVar = this.f80372d;
                int i4 = this.f80373e + 1;
                this.f80373e = i4;
                if (!dVar.a(Integer.valueOf(i4), t9)) {
                    this.f80369a.onError(t9);
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80369a.onError(new CompositeException(t9, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80369a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80370b.replace(d4);
        }
    }

    public w2(io.reactivex.rxjava3.core.g0<T> source, q7.d<? super Integer, ? super Throwable> predicate) {
        super(source);
        this.f80367b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new a(observer, this.f80367b, sequentialDisposable, this.f79141a).a();
    }
}
