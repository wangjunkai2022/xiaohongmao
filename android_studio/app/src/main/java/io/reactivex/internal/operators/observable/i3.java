package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableSkipUntil.java */
/* loaded from: classes3.dex */
public final class i3<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<U> f74238b;

    /* compiled from: ObservableSkipUntil.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.g0<U> {

        /* renamed from: a  reason: collision with root package name */
        final ArrayCompositeDisposable f74239a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f74240b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.observers.l<T> f74241c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74242d;

        a(ArrayCompositeDisposable arrayCompositeDisposable, b<T> bVar, io.reactivex.observers.l<T> lVar) {
            this.f74239a = arrayCompositeDisposable;
            this.f74240b = bVar;
            this.f74241c = lVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74240b.f74247d = true;
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74239a.dispose();
            this.f74241c.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u9) {
            this.f74242d.dispose();
            this.f74240b.f74247d = true;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74242d, cVar)) {
                this.f74242d = cVar;
                this.f74239a.setResource(1, cVar);
            }
        }
    }

    /* compiled from: ObservableSkipUntil.java */
    /* loaded from: classes3.dex */
    static final class b<T> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74244a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayCompositeDisposable f74245b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74246c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f74247d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74248e;

        b(io.reactivex.g0<? super T> g0Var, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.f74244a = g0Var;
            this.f74245b = arrayCompositeDisposable;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74245b.dispose();
            this.f74244a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74245b.dispose();
            this.f74244a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74248e) {
                this.f74244a.onNext(t9);
            } else if (this.f74247d) {
                this.f74248e = true;
                this.f74244a.onNext(t9);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74246c, cVar)) {
                this.f74246c = cVar;
                this.f74245b.setResource(0, cVar);
            }
        }
    }

    public i3(io.reactivex.e0<T> e0Var, io.reactivex.e0<U> e0Var2) {
        super(e0Var);
        this.f74238b = e0Var2;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        lVar.onSubscribe(arrayCompositeDisposable);
        b bVar = new b(lVar, arrayCompositeDisposable);
        this.f74238b.subscribe(new a(arrayCompositeDisposable, bVar, lVar));
        this.f73827a.subscribe(bVar);
    }
}
