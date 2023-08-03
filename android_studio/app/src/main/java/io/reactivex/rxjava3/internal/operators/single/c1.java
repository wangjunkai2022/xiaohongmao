package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleUnsubscribeOn.java */
/* loaded from: classes4.dex */
public final class c1<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80748a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80749b;

    /* compiled from: SingleUnsubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80750d = 3256698449646456986L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80751a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80752b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80753c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f80751a = actual;
            this.f80752b = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.disposables.f andSet = getAndSet(disposableHelper);
            if (andSet != disposableHelper) {
                this.f80753c = andSet;
                this.f80752b.f(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80751a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f80751a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80751a.onSuccess(value);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f80753c.dispose();
        }
    }

    public c1(io.reactivex.rxjava3.core.v0<T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f80748a = source;
        this.f80749b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80748a.d(new a(observer, this.f80749b));
    }
}
