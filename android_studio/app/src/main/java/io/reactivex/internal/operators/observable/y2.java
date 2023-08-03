package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableScan.java */
/* loaded from: classes3.dex */
public final class y2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.c<T, T, T> f75057b;

    /* compiled from: ObservableScan.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75058a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<T, T, T> f75059b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f75060c;

        /* renamed from: d  reason: collision with root package name */
        T f75061d;

        /* renamed from: e  reason: collision with root package name */
        boolean f75062e;

        a(io.reactivex.g0<? super T> g0Var, n7.c<T, T, T> cVar) {
            this.f75058a = g0Var;
            this.f75059b = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75060c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75060c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f75062e) {
                return;
            }
            this.f75062e = true;
            this.f75058a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f75062e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75062e = true;
            this.f75058a.onError(th);
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f75062e) {
                return;
            }
            io.reactivex.g0<? super T> g0Var = this.f75058a;
            T t10 = this.f75061d;
            if (t10 == null) {
                this.f75061d = t9;
                g0Var.onNext(t9);
                return;
            }
            try {
                ?? r42 = (T) io.reactivex.internal.functions.b.g(this.f75059b.apply(t10, t9), "The value returned by the accumulator is null");
                this.f75061d = r42;
                g0Var.onNext(r42);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75060c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75060c, cVar)) {
                this.f75060c = cVar;
                this.f75058a.onSubscribe(this);
            }
        }
    }

    public y2(io.reactivex.e0<T> e0Var, n7.c<T, T, T> cVar) {
        super(e0Var);
        this.f75057b = cVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f75057b));
    }
}
