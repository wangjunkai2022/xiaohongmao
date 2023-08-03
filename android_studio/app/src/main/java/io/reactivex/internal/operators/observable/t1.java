package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableLastSingle.java */
/* loaded from: classes3.dex */
public final class t1<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74778a;

    /* renamed from: b  reason: collision with root package name */
    final T f74779b;

    /* compiled from: ObservableLastSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f74780a;

        /* renamed from: b  reason: collision with root package name */
        final T f74781b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74782c;

        /* renamed from: d  reason: collision with root package name */
        T f74783d;

        a(io.reactivex.l0<? super T> l0Var, T t9) {
            this.f74780a = l0Var;
            this.f74781b = t9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74782c.dispose();
            this.f74782c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74782c == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74782c = DisposableHelper.DISPOSED;
            T t9 = this.f74783d;
            if (t9 != null) {
                this.f74783d = null;
                this.f74780a.onSuccess(t9);
                return;
            }
            T t10 = this.f74781b;
            if (t10 != null) {
                this.f74780a.onSuccess(t10);
            } else {
                this.f74780a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74782c = DisposableHelper.DISPOSED;
            this.f74783d = null;
            this.f74780a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74783d = t9;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74782c, cVar)) {
                this.f74782c = cVar;
                this.f74780a.onSubscribe(this);
            }
        }
    }

    public t1(io.reactivex.e0<T> e0Var, T t9) {
        this.f74778a = e0Var;
        this.f74779b = t9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f74778a.subscribe(new a(l0Var, this.f74779b));
    }
}
