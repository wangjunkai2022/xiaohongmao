package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeDoAfterSuccess.java */
/* loaded from: classes3.dex */
public final class p<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super T> f73418b;

    /* compiled from: MaybeDoAfterSuccess.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73419a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super T> f73420b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73421c;

        a(io.reactivex.t<? super T> tVar, n7.g<? super T> gVar) {
            this.f73419a = tVar;
            this.f73420b = gVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73421c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73421c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73419a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73419a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73421c, cVar)) {
                this.f73421c = cVar;
                this.f73419a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73419a.onSuccess(t9);
            try {
                this.f73420b.accept(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }
    }

    public p(io.reactivex.w<T> wVar, n7.g<? super T> gVar) {
        super(wVar);
        this.f73418b = gVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73418b));
    }
}
