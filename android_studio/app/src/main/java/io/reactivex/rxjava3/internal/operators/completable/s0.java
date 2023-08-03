package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableToSingle.java */
/* loaded from: classes4.dex */
public final class s0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76717a;

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends T> f76718b;

    /* renamed from: c  reason: collision with root package name */
    final T f76719c;

    /* compiled from: CompletableToSingle.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.s0<? super T> f76720a;

        a(io.reactivex.rxjava3.core.s0<? super T> observer) {
            this.f76720a = observer;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            T t9;
            s0 s0Var = s0.this;
            q7.s<? extends T> sVar = s0Var.f76718b;
            if (sVar != null) {
                try {
                    t9 = sVar.get();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f76720a.onError(th);
                    return;
                }
            } else {
                t9 = s0Var.f76719c;
            }
            if (t9 == null) {
                this.f76720a.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f76720a.onSuccess(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76720a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76720a.onSubscribe(d4);
        }
    }

    public s0(io.reactivex.rxjava3.core.g source, q7.s<? extends T> completionValueSupplier, T completionValue) {
        this.f76717a = source;
        this.f76719c = completionValue;
        this.f76718b = completionValueSupplier;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f76717a.d(new a(observer));
    }
}
