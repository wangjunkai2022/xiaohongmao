package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: SingleDoAfterSuccess.java */
/* loaded from: classes4.dex */
public final class m<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75435a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super T> f75436b;

    /* compiled from: SingleDoAfterSuccess.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75437a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super T> f75438b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f75439c;

        a(io.reactivex.l0<? super T> l0Var, n7.g<? super T> gVar) {
            this.f75437a = l0Var;
            this.f75438b = gVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75439c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75439c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75437a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75439c, cVar)) {
                this.f75439c = cVar;
                this.f75437a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75437a.onSuccess(t9);
            try {
                this.f75438b.accept(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    public m(io.reactivex.o0<T> o0Var, n7.g<? super T> gVar) {
        this.f75435a = o0Var;
        this.f75436b = gVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75435a.d(new a(l0Var, this.f75436b));
    }
}
