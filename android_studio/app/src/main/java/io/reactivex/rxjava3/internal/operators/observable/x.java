package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatWithCompletable.java */
/* loaded from: classes4.dex */
public final class x<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f80379b;

    /* compiled from: ObservableConcatWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80380d = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80381a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.core.g f80382b;

        /* renamed from: c  reason: collision with root package name */
        boolean f80383c;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.g other) {
            this.f80381a = actual;
            this.f80382b = other;
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
            if (this.f80383c) {
                this.f80381a.onComplete();
                return;
            }
            this.f80383c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.rxjava3.core.g gVar = this.f80382b;
            this.f80382b = null;
            gVar.d(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f80381a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80381a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (!DisposableHelper.setOnce(this, d4) || this.f80383c) {
                return;
            }
            this.f80381a.onSubscribe(this);
        }
    }

    public x(io.reactivex.rxjava3.core.g0<T> source, io.reactivex.rxjava3.core.g other) {
        super(source);
        this.f80379b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f80379b));
    }
}
