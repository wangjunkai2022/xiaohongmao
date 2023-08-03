package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: SingleDematerialize.java */
@m7.d
/* loaded from: classes4.dex */
public final class k<T, R> extends io.reactivex.q<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.i0<T> f75422a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, io.reactivex.y<R>> f75423b;

    /* compiled from: SingleDematerialize.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f75424a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, io.reactivex.y<R>> f75425b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f75426c;

        a(io.reactivex.t<? super R> tVar, n7.o<? super T, io.reactivex.y<R>> oVar) {
            this.f75424a = tVar;
            this.f75425b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75426c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75426c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75424a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75426c, cVar)) {
                this.f75426c = cVar;
                this.f75424a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                io.reactivex.y yVar = (io.reactivex.y) io.reactivex.internal.functions.b.g(this.f75425b.apply(t9), "The selector returned a null Notification");
                if (yVar.h()) {
                    this.f75424a.onSuccess((Object) yVar.e());
                } else if (yVar.f()) {
                    this.f75424a.onComplete();
                } else {
                    this.f75424a.onError(yVar.d());
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75424a.onError(th);
            }
        }
    }

    public k(io.reactivex.i0<T> i0Var, n7.o<? super T, io.reactivex.y<R>> oVar) {
        this.f75422a = i0Var;
        this.f75423b = oVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        this.f75422a.d(new a(tVar, this.f75423b));
    }
}
