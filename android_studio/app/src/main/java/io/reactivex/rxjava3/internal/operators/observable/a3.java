package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSampleWithObservable.java */
/* loaded from: classes4.dex */
public final class a3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<?> f79167b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f79168c;

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends c<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f79169h = -3029755663834015785L;

        /* renamed from: f  reason: collision with root package name */
        final AtomicInteger f79170f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79171g;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.l0<?> other) {
            super(actual, other);
            this.f79170f = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.a3.c
        void b() {
            this.f79171g = true;
            if (this.f79170f.getAndIncrement() == 0) {
                c();
                this.f79174a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.a3.c
        void e() {
            if (this.f79170f.getAndIncrement() == 0) {
                do {
                    boolean z9 = this.f79171g;
                    c();
                    if (z9) {
                        this.f79174a.onComplete();
                        return;
                    }
                } while (this.f79170f.decrementAndGet() != 0);
            }
        }
    }

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends c<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f79172f = -3029755663834015785L;

        b(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.l0<?> other) {
            super(actual, other);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.a3.c
        void b() {
            this.f79174a.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.a3.c
        void e() {
            c();
        }
    }

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes4.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f79173e = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79174a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<?> f79175b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79176c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79177d;

        c(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.l0<?> other) {
            this.f79174a = actual;
            this.f79175b = other;
        }

        public void a() {
            this.f79177d.dispose();
            b();
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f79174a.onNext(andSet);
            }
        }

        public void d(Throwable e4) {
            this.f79177d.dispose();
            this.f79174a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79176c);
            this.f79177d.dispose();
        }

        abstract void e();

        boolean h(io.reactivex.rxjava3.disposables.f o9) {
            return DisposableHelper.setOnce(this.f79176c, o9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79176c.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            DisposableHelper.dispose(this.f79176c);
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            DisposableHelper.dispose(this.f79176c);
            this.f79174a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79177d, d4)) {
                this.f79177d = d4;
                this.f79174a.onSubscribe(this);
                if (this.f79176c.get() == null) {
                    this.f79175b.a(new d(this));
                }
            }
        }
    }

    /* compiled from: ObservableSampleWithObservable.java */
    /* loaded from: classes4.dex */
    static final class d<T> implements io.reactivex.rxjava3.core.n0<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f79178a;

        d(c<T> parent) {
            this.f79178a = parent;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79178a.a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79178a.d(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            this.f79178a.e();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79178a.h(d4);
        }
    }

    public a3(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<?> other, boolean emitLast) {
        super(source);
        this.f79167b = other;
        this.f79168c = emitLast;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        io.reactivex.rxjava3.observers.m mVar = new io.reactivex.rxjava3.observers.m(t9);
        if (this.f79168c) {
            this.f79141a.a(new a(mVar, this.f79167b));
        } else {
            this.f79141a.a(new b(mVar, this.f79167b));
        }
    }
}
