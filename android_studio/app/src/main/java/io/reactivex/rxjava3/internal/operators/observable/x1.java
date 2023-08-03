package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableLastSingle.java */
/* loaded from: classes4.dex */
public final class x1<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f80396a;

    /* renamed from: b  reason: collision with root package name */
    final T f80397b;

    /* compiled from: ObservableLastSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80398a;

        /* renamed from: b  reason: collision with root package name */
        final T f80399b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80400c;

        /* renamed from: d  reason: collision with root package name */
        T f80401d;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, T defaultItem) {
            this.f80398a = actual;
            this.f80399b = defaultItem;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80400c.dispose();
            this.f80400c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80400c == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80400c = DisposableHelper.DISPOSED;
            T t9 = this.f80401d;
            if (t9 != null) {
                this.f80401d = null;
                this.f80398a.onSuccess(t9);
                return;
            }
            T t10 = this.f80399b;
            if (t10 != null) {
                this.f80398a.onSuccess(t10);
            } else {
                this.f80398a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80400c = DisposableHelper.DISPOSED;
            this.f80401d = null;
            this.f80398a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80401d = t9;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80400c, d4)) {
                this.f80400c = d4;
                this.f80398a.onSubscribe(this);
            }
        }
    }

    public x1(io.reactivex.rxjava3.core.l0<T> source, T defaultItem) {
        this.f80396a = source;
        this.f80397b = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80396a.a(new a(observer, this.f80397b));
    }
}
