package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeFilter.java */
/* loaded from: classes3.dex */
public final class x<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f73508b;

    /* compiled from: MaybeFilter.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73509a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f73510b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73511c;

        a(io.reactivex.t<? super T> tVar, n7.r<? super T> rVar) {
            this.f73509a = tVar;
            this.f73510b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            io.reactivex.disposables.c cVar = this.f73511c;
            this.f73511c = DisposableHelper.DISPOSED;
            cVar.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73511c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73509a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73509a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73511c, cVar)) {
                this.f73511c = cVar;
                this.f73509a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                if (this.f73510b.test(t9)) {
                    this.f73509a.onSuccess(t9);
                } else {
                    this.f73509a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73509a.onError(th);
            }
        }
    }

    public x(io.reactivex.w<T> wVar, n7.r<? super T> rVar) {
        super(wVar);
        this.f73508b = rVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73508b));
    }
}
