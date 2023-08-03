package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EmptyComponent;

/* compiled from: ObservableDetach.java */
/* loaded from: classes3.dex */
public final class j0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableDetach.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.g0<? super T> f74268a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f74269b;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f74268a = g0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            io.reactivex.disposables.c cVar = this.f74269b;
            this.f74269b = EmptyComponent.INSTANCE;
            this.f74268a = EmptyComponent.asObserver();
            cVar.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74269b.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.g0<? super T> g0Var = this.f74268a;
            this.f74269b = EmptyComponent.INSTANCE;
            this.f74268a = EmptyComponent.asObserver();
            g0Var.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.g0<? super T> g0Var = this.f74268a;
            this.f74269b = EmptyComponent.INSTANCE;
            this.f74268a = EmptyComponent.asObserver();
            g0Var.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74268a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74269b, cVar)) {
                this.f74269b = cVar;
                this.f74268a.onSubscribe(this);
            }
        }
    }

    public j0(io.reactivex.e0<T> e0Var) {
        super(e0Var);
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var));
    }
}
