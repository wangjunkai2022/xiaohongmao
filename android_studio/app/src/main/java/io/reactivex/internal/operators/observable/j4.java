package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWithLatestFrom.java */
/* loaded from: classes3.dex */
public final class j4<T, U, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.c<? super T, ? super U, ? extends R> f74311b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.e0<? extends U> f74312c;

    /* compiled from: ObservableWithLatestFrom.java */
    /* loaded from: classes3.dex */
    static final class a<T, U, R> extends AtomicReference<U> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74313e = -312246233408980075L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74314a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<? super T, ? super U, ? extends R> f74315b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74316c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74317d = new AtomicReference<>();

        a(io.reactivex.g0<? super R> g0Var, n7.c<? super T, ? super U, ? extends R> cVar) {
            this.f74314a = g0Var;
            this.f74315b = cVar;
        }

        public void a(Throwable th) {
            DisposableHelper.dispose(this.f74316c);
            this.f74314a.onError(th);
        }

        public boolean b(io.reactivex.disposables.c cVar) {
            return DisposableHelper.setOnce(this.f74317d, cVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f74316c);
            DisposableHelper.dispose(this.f74317d);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f74316c.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.dispose(this.f74317d);
            this.f74314a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f74317d);
            this.f74314a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            U u9 = get();
            if (u9 != null) {
                try {
                    this.f74314a.onNext(io.reactivex.internal.functions.b.g(this.f74315b.apply(t9, u9), "The combiner returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    dispose();
                    this.f74314a.onError(th);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74316c, cVar);
        }
    }

    /* compiled from: ObservableWithLatestFrom.java */
    /* loaded from: classes3.dex */
    final class b implements io.reactivex.g0<U> {

        /* renamed from: a  reason: collision with root package name */
        private final a<T, U, R> f74318a;

        b(a<T, U, R> aVar) {
            this.f74318a = aVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74318a.a(th);
        }

        @Override // io.reactivex.g0
        public void onNext(U u9) {
            this.f74318a.lazySet(u9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f74318a.b(cVar);
        }
    }

    public j4(io.reactivex.e0<T> e0Var, n7.c<? super T, ? super U, ? extends R> cVar, io.reactivex.e0<? extends U> e0Var2) {
        super(e0Var);
        this.f74311b = cVar;
        this.f74312c = e0Var2;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        io.reactivex.observers.l lVar = new io.reactivex.observers.l(g0Var);
        a aVar = new a(lVar, this.f74311b);
        lVar.onSubscribe(aVar);
        this.f74312c.subscribe(new b(aVar));
        this.f73827a.subscribe(aVar);
    }
}
