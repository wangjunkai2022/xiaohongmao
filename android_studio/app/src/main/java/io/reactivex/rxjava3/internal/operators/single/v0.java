package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleSubscribeOn.java */
/* loaded from: classes4.dex */
public final class v0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80942a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80943b;

    /* compiled from: SingleSubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80944d = 7000911171163930287L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80945a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f80946b = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.v0<? extends T> f80947c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.v0<? extends T> source) {
            this.f80945a = actual;
            this.f80947c = source;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f80946b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80945a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80945a.onSuccess(value);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f80947c.d(this);
        }
    }

    public v0(io.reactivex.rxjava3.core.v0<? extends T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f80942a = source;
        this.f80943b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        a aVar = new a(observer, this.f80942a);
        observer.onSubscribe(aVar);
        aVar.f80946b.replace(this.f80943b.f(aVar));
    }
}
