package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeObserveOn.java */
/* loaded from: classes3.dex */
public final class y0<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f73518b;

    /* compiled from: MaybeObserveOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73519e = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73520a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f73521b;

        /* renamed from: c  reason: collision with root package name */
        T f73522c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f73523d;

        a(io.reactivex.t<? super T> tVar, io.reactivex.h0 h0Var) {
            this.f73520a = tVar;
            this.f73521b = h0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            DisposableHelper.replace(this, this.f73521b.f(this));
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73523d = th;
            DisposableHelper.replace(this, this.f73521b.f(this));
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73520a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73522c = t9;
            DisposableHelper.replace(this, this.f73521b.f(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f73523d;
            if (th != null) {
                this.f73523d = null;
                this.f73520a.onError(th);
                return;
            }
            T t9 = this.f73522c;
            if (t9 != null) {
                this.f73522c = null;
                this.f73520a.onSuccess(t9);
                return;
            }
            this.f73520a.onComplete();
        }
    }

    public y0(io.reactivex.w<T> wVar, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f73518b = h0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73518b));
    }
}
