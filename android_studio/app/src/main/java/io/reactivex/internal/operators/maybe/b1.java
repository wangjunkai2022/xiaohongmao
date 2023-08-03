package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeOnErrorReturn.java */
/* loaded from: classes3.dex */
public final class b1<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends T> f73202b;

    /* compiled from: MaybeOnErrorReturn.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73203a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends T> f73204b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73205c;

        a(io.reactivex.t<? super T> tVar, n7.o<? super Throwable, ? extends T> oVar) {
            this.f73203a = tVar;
            this.f73204b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73205c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73205c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73203a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            try {
                this.f73203a.onSuccess(io.reactivex.internal.functions.b.g(this.f73204b.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f73203a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73205c, cVar)) {
                this.f73205c = cVar;
                this.f73203a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73203a.onSuccess(t9);
        }
    }

    public b1(io.reactivex.w<T> wVar, n7.o<? super Throwable, ? extends T> oVar) {
        super(wVar);
        this.f73202b = oVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73202b));
    }
}
