package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeFilterSingle.java */
/* loaded from: classes3.dex */
public final class y<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f73513a;

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f73514b;

    /* compiled from: MaybeFilterSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73515a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f73516b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73517c;

        a(io.reactivex.t<? super T> tVar, n7.r<? super T> rVar) {
            this.f73515a = tVar;
            this.f73516b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            io.reactivex.disposables.c cVar = this.f73517c;
            this.f73517c = DisposableHelper.DISPOSED;
            cVar.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73517c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f73515a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73517c, cVar)) {
                this.f73517c = cVar;
                this.f73515a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                if (this.f73516b.test(t9)) {
                    this.f73515a.onSuccess(t9);
                } else {
                    this.f73515a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73515a.onError(th);
            }
        }
    }

    public y(io.reactivex.o0<T> o0Var, n7.r<? super T> rVar) {
        this.f73513a = o0Var;
        this.f73514b = rVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73513a.d(new a(tVar, this.f73514b));
    }
}
