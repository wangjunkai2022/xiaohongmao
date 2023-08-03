package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableConcatIterable.java */
/* loaded from: classes4.dex */
public final class f extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.g> f76599a;

    /* compiled from: CompletableConcatIterable.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicInteger implements io.reactivex.rxjava3.core.d {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76600d = -7965400327305809232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76601a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends io.reactivex.rxjava3.core.g> f76602b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f76603c = new SequentialDisposable();

        a(io.reactivex.rxjava3.core.d actual, Iterator<? extends io.reactivex.rxjava3.core.g> sources) {
            this.f76601a = actual;
            this.f76602b = sources;
        }

        void a() {
            if (!this.f76603c.isDisposed() && getAndIncrement() == 0) {
                Iterator<? extends io.reactivex.rxjava3.core.g> it = this.f76602b;
                while (!this.f76603c.isDisposed()) {
                    try {
                        if (!it.hasNext()) {
                            this.f76601a.onComplete();
                            return;
                        }
                        try {
                            io.reactivex.rxjava3.core.g next = it.next();
                            Objects.requireNonNull(next, "The CompletableSource returned is null");
                            next.d(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f76601a.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        this.f76601a.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76601a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76603c.replace(d4);
        }
    }

    public f(Iterable<? extends io.reactivex.rxjava3.core.g> sources) {
        this.f76599a = sources;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(io.reactivex.rxjava3.core.d observer) {
        try {
            Iterator<? extends io.reactivex.rxjava3.core.g> it = this.f76599a.iterator();
            Objects.requireNonNull(it, "The iterator returned is null");
            a aVar = new a(observer, it);
            observer.onSubscribe(aVar.f76603c);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
