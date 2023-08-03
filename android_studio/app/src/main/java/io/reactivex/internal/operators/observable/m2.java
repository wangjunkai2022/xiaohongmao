package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableReduceSeedSingle.java */
/* loaded from: classes3.dex */
public final class m2<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74418a;

    /* renamed from: b  reason: collision with root package name */
    final R f74419b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<R, ? super T, R> f74420c;

    /* compiled from: ObservableReduceSeedSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f74421a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<R, ? super T, R> f74422b;

        /* renamed from: c  reason: collision with root package name */
        R f74423c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74424d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.l0<? super R> l0Var, n7.c<R, ? super T, R> cVar, R r9) {
            this.f74421a = l0Var;
            this.f74423c = r9;
            this.f74422b = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74424d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74424d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            R r9 = this.f74423c;
            if (r9 != null) {
                this.f74423c = null;
                this.f74421a.onSuccess(r9);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74423c != null) {
                this.f74423c = null;
                this.f74421a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            R r9 = this.f74423c;
            if (r9 != null) {
                try {
                    this.f74423c = (R) io.reactivex.internal.functions.b.g(this.f74422b.apply(r9, t9), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f74424d.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74424d, cVar)) {
                this.f74424d = cVar;
                this.f74421a.onSubscribe(this);
            }
        }
    }

    public m2(io.reactivex.e0<T> e0Var, R r9, n7.c<R, ? super T, R> cVar) {
        this.f74418a = e0Var;
        this.f74419b = r9;
        this.f74420c = cVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        this.f74418a.subscribe(new a(l0Var, this.f74420c, this.f74419b));
    }
}
