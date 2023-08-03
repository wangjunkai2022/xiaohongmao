package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: ObservableGenerate.java */
/* loaded from: classes4.dex */
public final class m1<T, S> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<S> f79745a;

    /* renamed from: b  reason: collision with root package name */
    final q7.c<S, io.reactivex.rxjava3.core.i<T>, S> f79746b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super S> f79747c;

    /* compiled from: ObservableGenerate.java */
    /* loaded from: classes4.dex */
    static final class a<T, S> implements io.reactivex.rxjava3.core.i<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79748a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<S, ? super io.reactivex.rxjava3.core.i<T>, S> f79749b;

        /* renamed from: c  reason: collision with root package name */
        final q7.g<? super S> f79750c;

        /* renamed from: d  reason: collision with root package name */
        S f79751d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f79752e;

        /* renamed from: f  reason: collision with root package name */
        boolean f79753f;

        /* renamed from: g  reason: collision with root package name */
        boolean f79754g;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.c<S, ? super io.reactivex.rxjava3.core.i<T>, S> generator, q7.g<? super S> disposeState, S initialState) {
            this.f79748a = actual;
            this.f79749b = generator;
            this.f79750c = disposeState;
            this.f79751d = initialState;
        }

        private void d(S s9) {
            try {
                this.f79750c.accept(s9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79752e = true;
        }

        public void f() {
            S s9 = this.f79751d;
            if (this.f79752e) {
                this.f79751d = null;
                d(s9);
                return;
            }
            q7.c<S, ? super io.reactivex.rxjava3.core.i<T>, S> cVar = this.f79749b;
            while (!this.f79752e) {
                this.f79754g = false;
                try {
                    s9 = cVar.apply(s9, this);
                    if (this.f79753f) {
                        this.f79752e = true;
                        this.f79751d = null;
                        d(s9);
                        return;
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f79751d = null;
                    this.f79752e = true;
                    onError(th);
                    d(s9);
                    return;
                }
            }
            this.f79751d = null;
            d(s9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79752e;
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onComplete() {
            if (this.f79753f) {
                return;
            }
            this.f79753f = true;
            this.f79748a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onError(Throwable t9) {
            if (this.f79753f) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            if (t9 == null) {
                t9 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
            }
            this.f79753f = true;
            this.f79748a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            if (this.f79753f) {
                return;
            }
            if (this.f79754g) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
            } else {
                this.f79754g = true;
                this.f79748a.onNext(t9);
            }
        }
    }

    public m1(q7.s<S> stateSupplier, q7.c<S, io.reactivex.rxjava3.core.i<T>, S> generator, q7.g<? super S> disposeState) {
        this.f79745a = stateSupplier;
        this.f79746b = generator;
        this.f79747c = disposeState;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        try {
            a aVar = new a(observer, this.f79746b, this.f79747c, this.f79745a.get());
            observer.onSubscribe(aVar);
            aVar.f();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
