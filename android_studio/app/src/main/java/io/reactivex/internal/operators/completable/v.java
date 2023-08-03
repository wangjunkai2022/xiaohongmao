package io.reactivex.internal.operators.completable;

/* compiled from: CompletableFromSingle.java */
/* loaded from: classes3.dex */
public final class v<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f71464a;

    /* compiled from: CompletableFromSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71465a;

        a(io.reactivex.d dVar) {
            this.f71465a = dVar;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f71465a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71465a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f71465a.onComplete();
        }
    }

    public v(io.reactivex.o0<T> o0Var) {
        this.f71464a = o0Var;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71464a.d(new a(dVar));
    }
}
