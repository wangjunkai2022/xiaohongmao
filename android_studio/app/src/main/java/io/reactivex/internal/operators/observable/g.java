package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableAllSingle.java */
/* loaded from: classes3.dex */
public final class g<T> extends io.reactivex.i0<Boolean> implements o7.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74111a;

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74112b;

    /* compiled from: ObservableAllSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f74113a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f74114b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74115c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74116d;

        a(io.reactivex.l0<? super Boolean> l0Var, n7.r<? super T> rVar) {
            this.f74113a = l0Var;
            this.f74114b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74115c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74115c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74116d) {
                return;
            }
            this.f74116d = true;
            this.f74113a.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74116d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74116d = true;
            this.f74113a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74116d) {
                return;
            }
            try {
                if (this.f74114b.test(t9)) {
                    return;
                }
                this.f74116d = true;
                this.f74115c.dispose();
                this.f74113a.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74115c.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74115c, cVar)) {
                this.f74115c = cVar;
                this.f74113a.onSubscribe(this);
            }
        }
    }

    public g(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        this.f74111a = e0Var;
        this.f74112b = rVar;
    }

    @Override // o7.d
    public io.reactivex.z<Boolean> a() {
        return io.reactivex.plugins.a.R(new f(this.f74111a, this.f74112b));
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        this.f74111a.subscribe(new a(l0Var, this.f74112b));
    }
}
