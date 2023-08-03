package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeDetach.java */
/* loaded from: classes3.dex */
public final class o<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* compiled from: MaybeDetach.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.t<? super T> f73414a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73415b;

        a(io.reactivex.t<? super T> tVar) {
            this.f73414a = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73414a = null;
            this.f73415b.dispose();
            this.f73415b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73415b.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73415b = DisposableHelper.DISPOSED;
            io.reactivex.t<? super T> tVar = this.f73414a;
            if (tVar != null) {
                this.f73414a = null;
                tVar.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73415b = DisposableHelper.DISPOSED;
            io.reactivex.t<? super T> tVar = this.f73414a;
            if (tVar != null) {
                this.f73414a = null;
                tVar.onError(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73415b, cVar)) {
                this.f73415b = cVar;
                this.f73414a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73415b = DisposableHelper.DISPOSED;
            io.reactivex.t<? super T> tVar = this.f73414a;
            if (tVar != null) {
                this.f73414a = null;
                tVar.onSuccess(t9);
            }
        }
    }

    public o(io.reactivex.w<T> wVar) {
        super(wVar);
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar));
    }
}
