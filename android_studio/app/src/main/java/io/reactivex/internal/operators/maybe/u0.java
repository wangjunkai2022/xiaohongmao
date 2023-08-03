package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeMap.java */
/* loaded from: classes3.dex */
public final class u0<T, R> extends io.reactivex.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends R> f73484b;

    /* compiled from: MaybeMap.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f73485a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends R> f73486b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73487c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.t<? super R> tVar, n7.o<? super T, ? extends R> oVar) {
            this.f73485a = tVar;
            this.f73486b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            io.reactivex.disposables.c cVar = this.f73487c;
            this.f73487c = DisposableHelper.DISPOSED;
            cVar.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73487c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73485a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73485a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73487c, cVar)) {
                this.f73487c = cVar;
                this.f73485a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                this.f73485a.onSuccess(io.reactivex.internal.functions.b.g(this.f73486b.apply(t9), "The mapper returned a null item"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73485a.onError(th);
            }
        }
    }

    public u0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends R> oVar) {
        super(wVar);
        this.f73484b = oVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        this.f73172a.b(new a(tVar, this.f73484b));
    }
}
