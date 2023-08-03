package io.reactivex.internal.operators.single;

/* compiled from: SingleDoOnSuccess.java */
/* loaded from: classes4.dex */
public final class t<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75514a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super T> f75515b;

    /* compiled from: SingleDoOnSuccess.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75516a;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75516a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75516a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75516a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                t.this.f75515b.accept(t9);
                this.f75516a.onSuccess(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75516a.onError(th);
            }
        }
    }

    public t(io.reactivex.o0<T> o0Var, n7.g<? super T> gVar) {
        this.f75514a = o0Var;
        this.f75515b = gVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75514a.d(new a(l0Var));
    }
}
