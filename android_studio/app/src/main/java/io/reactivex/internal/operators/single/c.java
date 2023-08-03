package io.reactivex.internal.operators.single;

/* compiled from: SingleContains.java */
/* loaded from: classes4.dex */
public final class c<T> extends io.reactivex.i0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75349a;

    /* renamed from: b  reason: collision with root package name */
    final Object f75350b;

    /* renamed from: c  reason: collision with root package name */
    final n7.d<Object, Object> f75351c;

    /* compiled from: SingleContains.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.l0<? super Boolean> f75352a;

        a(io.reactivex.l0<? super Boolean> l0Var) {
            this.f75352a = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75352a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75352a.onSubscribe(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                c cVar = c.this;
                this.f75352a.onSuccess(Boolean.valueOf(cVar.f75351c.a(t9, cVar.f75350b)));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75352a.onError(th);
            }
        }
    }

    public c(io.reactivex.o0<T> o0Var, Object obj, n7.d<Object, Object> dVar) {
        this.f75349a = o0Var;
        this.f75350b = obj;
        this.f75351c = dVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        this.f75349a.d(new a(l0Var));
    }
}
