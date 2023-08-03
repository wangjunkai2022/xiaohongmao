package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeObserveOn.java */
/* loaded from: classes4.dex */
public final class a1<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78458b;

    /* compiled from: MaybeObserveOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78459e = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78460a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f78461b;

        /* renamed from: c  reason: collision with root package name */
        T f78462c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f78463d;

        a(io.reactivex.rxjava3.core.y<? super T> actual, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f78460a = actual;
            this.f78461b = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            DisposableHelper.replace(this, this.f78461b.f(this));
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78463d = e4;
            DisposableHelper.replace(this, this.f78461b.f(this));
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f78460a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78462c = value;
            DisposableHelper.replace(this, this.f78461b.f(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f78463d;
            if (th != null) {
                this.f78463d = null;
                this.f78460a.onError(th);
                return;
            }
            T t9 = this.f78462c;
            if (t9 != null) {
                this.f78462c = null;
                this.f78460a.onSuccess(t9);
                return;
            }
            this.f78460a.onComplete();
        }
    }

    public a1(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f78458b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78458b));
    }
}
