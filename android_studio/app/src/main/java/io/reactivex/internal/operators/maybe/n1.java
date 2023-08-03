package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: MaybeToSingle.java */
/* loaded from: classes3.dex */
public final class n1<T> extends io.reactivex.i0<T> implements o7.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73409a;

    /* renamed from: b  reason: collision with root package name */
    final T f73410b;

    /* compiled from: MaybeToSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f73411a;

        /* renamed from: b  reason: collision with root package name */
        final T f73412b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73413c;

        a(io.reactivex.l0<? super T> l0Var, T t9) {
            this.f73411a = l0Var;
            this.f73412b = t9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73413c.dispose();
            this.f73413c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73413c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73413c = DisposableHelper.DISPOSED;
            T t9 = this.f73412b;
            if (t9 != null) {
                this.f73411a.onSuccess(t9);
            } else {
                this.f73411a.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73413c = DisposableHelper.DISPOSED;
            this.f73411a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73413c, cVar)) {
                this.f73413c = cVar;
                this.f73411a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73413c = DisposableHelper.DISPOSED;
            this.f73411a.onSuccess(t9);
        }
    }

    public n1(io.reactivex.w<T> wVar, T t9) {
        this.f73409a = wVar;
        this.f73410b = t9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f73409a.b(new a(l0Var, this.f73410b));
    }

    @Override // o7.f
    public io.reactivex.w<T> source() {
        return this.f73409a;
    }
}
