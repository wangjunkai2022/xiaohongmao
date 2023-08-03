package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableCollectSingle.java */
/* loaded from: classes3.dex */
public final class t<T, U> extends io.reactivex.i0<U> implements o7.d<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74769a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f74770b;

    /* renamed from: c  reason: collision with root package name */
    final n7.b<? super U, ? super T> f74771c;

    /* compiled from: ObservableCollectSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f74772a;

        /* renamed from: b  reason: collision with root package name */
        final n7.b<? super U, ? super T> f74773b;

        /* renamed from: c  reason: collision with root package name */
        final U f74774c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74775d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74776e;

        a(io.reactivex.l0<? super U> l0Var, U u9, n7.b<? super U, ? super T> bVar) {
            this.f74772a = l0Var;
            this.f74773b = bVar;
            this.f74774c = u9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74775d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74775d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74776e) {
                return;
            }
            this.f74776e = true;
            this.f74772a.onSuccess((U) this.f74774c);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74776e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74776e = true;
            this.f74772a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74776e) {
                return;
            }
            try {
                this.f74773b.accept((U) this.f74774c, t9);
            } catch (Throwable th) {
                this.f74775d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74775d, cVar)) {
                this.f74775d = cVar;
                this.f74772a.onSubscribe(this);
            }
        }
    }

    public t(io.reactivex.e0<T> e0Var, Callable<? extends U> callable, n7.b<? super U, ? super T> bVar) {
        this.f74769a = e0Var;
        this.f74770b = callable;
        this.f74771c = bVar;
    }

    @Override // o7.d
    public io.reactivex.z<U> a() {
        return io.reactivex.plugins.a.R(new s(this.f74769a, this.f74770b, this.f74771c));
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f74769a.subscribe(new a(l0Var, io.reactivex.internal.functions.b.g(this.f74770b.call(), "The initialSupplier returned a null value"), this.f74771c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, l0Var);
        }
    }
}
