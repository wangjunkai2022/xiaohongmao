package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatWithMaybe.java */
/* loaded from: classes4.dex */
public final class y<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f80420b;

    /* compiled from: ObservableConcatWithMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80421d = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80422a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.core.b0<? extends T> f80423b;

        /* renamed from: c  reason: collision with root package name */
        boolean f80424c;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.b0<? extends T> other) {
            this.f80422a = actual;
            this.f80423b = other;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f80424c) {
                this.f80422a.onComplete();
                return;
            }
            this.f80424c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.rxjava3.core.b0<? extends T> b0Var = this.f80423b;
            this.f80423b = null;
            b0Var.b(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f80422a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80422a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (!DisposableHelper.setOnce(this, d4) || this.f80424c) {
                return;
            }
            this.f80422a.onSubscribe(this);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            this.f80422a.onNext(t9);
            this.f80422a.onComplete();
        }
    }

    public y(io.reactivex.rxjava3.core.g0<T> source, io.reactivex.rxjava3.core.b0<? extends T> other) {
        super(source);
        this.f80420b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f80420b));
    }
}
