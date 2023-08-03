package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeUnsubscribeOn.java */
/* loaded from: classes3.dex */
public final class p1<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f73425b;

    /* compiled from: MaybeUnsubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73426d = 3256698449646456986L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73427a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f73428b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73429c;

        a(io.reactivex.t<? super T> tVar, io.reactivex.h0 h0Var) {
            this.f73427a = tVar;
            this.f73428b = h0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            io.reactivex.disposables.c andSet = getAndSet(disposableHelper);
            if (andSet != disposableHelper) {
                this.f73429c = andSet;
                this.f73428b.f(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73427a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73427a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73427a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73427a.onSuccess(t9);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f73429c.dispose();
        }
    }

    public p1(io.reactivex.w<T> wVar, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f73425b = h0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73425b));
    }
}
