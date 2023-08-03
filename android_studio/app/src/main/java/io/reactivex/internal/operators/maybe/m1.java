package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;

/* compiled from: MaybeToObservable.java */
/* loaded from: classes3.dex */
public final class m1<T> extends io.reactivex.z<T> implements o7.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73397a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeToObservable.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends DeferredScalarDisposable<T> implements io.reactivex.t<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f73398k = 7603343402964826922L;

        /* renamed from: j  reason: collision with root package name */
        io.reactivex.disposables.c f73399j;

        a(io.reactivex.g0<? super T> g0Var) {
            super(g0Var);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.c
        public void dispose() {
            super.dispose();
            this.f73399j.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            complete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            error(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73399j, cVar)) {
                this.f73399j = cVar;
                this.f71190b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            complete(t9);
        }
    }

    public m1(io.reactivex.w<T> wVar) {
        this.f73397a = wVar;
    }

    public static <T> io.reactivex.t<T> b(io.reactivex.g0<? super T> g0Var) {
        return new a(g0Var);
    }

    @Override // o7.f
    public io.reactivex.w<T> source() {
        return this.f73397a;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73397a.b(b(g0Var));
    }
}
