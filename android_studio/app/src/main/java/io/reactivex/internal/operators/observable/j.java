package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableAnySingle.java */
/* loaded from: classes3.dex */
public final class j<T> extends io.reactivex.i0<Boolean> implements o7.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74262a;

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74263b;

    /* compiled from: ObservableAnySingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f74264a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f74265b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74266c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74267d;

        a(io.reactivex.l0<? super Boolean> l0Var, n7.r<? super T> rVar) {
            this.f74264a = l0Var;
            this.f74265b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74266c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74266c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74267d) {
                return;
            }
            this.f74267d = true;
            this.f74264a.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74267d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74267d = true;
            this.f74264a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74267d) {
                return;
            }
            try {
                if (this.f74265b.test(t9)) {
                    this.f74267d = true;
                    this.f74266c.dispose();
                    this.f74264a.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74266c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74266c, cVar)) {
                this.f74266c = cVar;
                this.f74264a.onSubscribe(this);
            }
        }
    }

    public j(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        this.f74262a = e0Var;
        this.f74263b = rVar;
    }

    @Override // o7.d
    public io.reactivex.z<Boolean> a() {
        return io.reactivex.plugins.a.R(new i(this.f74262a, this.f74263b));
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        this.f74262a.subscribe(new a(l0Var, this.f74263b));
    }
}
