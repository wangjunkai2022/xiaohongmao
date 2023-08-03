package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableRepeatWhen.java */
/* loaded from: classes4.dex */
public final class u2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super io.reactivex.rxjava3.core.g0<Object>, ? extends io.reactivex.rxjava3.core.l0<?>> f80207b;

    /* compiled from: ObservableRepeatWhen.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: i  reason: collision with root package name */
        private static final long f80208i = 802743776666017014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80209a;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.subjects.i<Object> f80212d;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<T> f80215g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f80216h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f80210b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f80211c = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final a<T>.C0675a f80213e = new C0675a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f80214f = new AtomicReference<>();

        /* compiled from: ObservableRepeatWhen.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.u2$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0675a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f80217b = 3254781284376480842L;

            C0675a() {
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                a.this.a();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable e4) {
                a.this.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(Object t9) {
                a.this.c();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.subjects.i<Object> signaller, io.reactivex.rxjava3.core.l0<T> source) {
            this.f80209a = actual;
            this.f80212d = signaller;
            this.f80215g = source;
        }

        void a() {
            DisposableHelper.dispose(this.f80214f);
            io.reactivex.rxjava3.internal.util.h.a(this.f80209a, this, this.f80211c);
        }

        void b(Throwable ex) {
            DisposableHelper.dispose(this.f80214f);
            io.reactivex.rxjava3.internal.util.h.c(this.f80209a, ex, this, this.f80211c);
        }

        void c() {
            d();
        }

        void d() {
            if (this.f80210b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f80216h) {
                        this.f80216h = true;
                        this.f80215g.a(this);
                    }
                    if (this.f80210b.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f80214f);
            DisposableHelper.dispose(this.f80213e);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f80214f.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            DisposableHelper.replace(this.f80214f, null);
            this.f80216h = false;
            this.f80212d.onNext(0);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            DisposableHelper.dispose(this.f80213e);
            io.reactivex.rxjava3.internal.util.h.c(this.f80209a, e4, this, this.f80211c);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            io.reactivex.rxjava3.internal.util.h.e(this.f80209a, t9, this, this.f80211c);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f80214f, d4);
        }
    }

    public u2(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super io.reactivex.rxjava3.core.g0<Object>, ? extends io.reactivex.rxjava3.core.l0<?>> handler) {
        super(source);
        this.f80207b = handler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        io.reactivex.rxjava3.subjects.i<T> E8 = io.reactivex.rxjava3.subjects.e.G8().E8();
        try {
            io.reactivex.rxjava3.core.l0<?> apply = this.f80207b.apply(E8);
            Objects.requireNonNull(apply, "The handler returned a null ObservableSource");
            io.reactivex.rxjava3.core.l0<?> l0Var = apply;
            a aVar = new a(observer, E8, this.f79141a);
            observer.onSubscribe(aVar);
            l0Var.a(aVar.f80213e);
            aVar.d();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
