package io.reactivex.internal.operators.single;

/* compiled from: SingleMap.java */
/* loaded from: classes4.dex */
public final class k0<T, R> extends io.reactivex.i0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75427a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends R> f75428b;

    /* compiled from: SingleMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super R> f75429a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends R> f75430b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.l0<? super R> l0Var, n7.o<? super T, ? extends R> oVar) {
            this.f75429a = l0Var;
            this.f75430b = oVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75429a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75429a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                this.f75429a.onSuccess(io.reactivex.internal.functions.b.g(this.f75430b.apply(t9), "The mapper function returned a null value."));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public k0(io.reactivex.o0<? extends T> o0Var, n7.o<? super T, ? extends R> oVar) {
        this.f75427a = o0Var;
        this.f75428b = oVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super R> l0Var) {
        this.f75427a.d(new a(l0Var, this.f75428b));
    }
}
