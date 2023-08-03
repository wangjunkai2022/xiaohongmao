package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelay.java */
/* loaded from: classes4.dex */
public final class k<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f78627b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f78628c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78629d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f78630e;

    /* compiled from: MaybeDelay.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f78631h = 5566860102500855068L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78632a;

        /* renamed from: b  reason: collision with root package name */
        final long f78633b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f78634c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f78635d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f78636e;

        /* renamed from: f  reason: collision with root package name */
        T f78637f;

        /* renamed from: g  reason: collision with root package name */
        Throwable f78638g;

        a(io.reactivex.rxjava3.core.y<? super T> actual, long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError) {
            this.f78632a = actual;
            this.f78633b = delay;
            this.f78634c = unit;
            this.f78635d = scheduler;
            this.f78636e = delayError;
        }

        void a(long delay) {
            DisposableHelper.replace(this, this.f78635d.g(this, delay, this.f78634c));
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
            a(this.f78633b);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78638g = e4;
            a(this.f78636e ? this.f78633b : 0L);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f78632a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78637f = value;
            a(this.f78633b);
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f78638g;
            if (th != null) {
                this.f78632a.onError(th);
                return;
            }
            T t9 = this.f78637f;
            if (t9 != null) {
                this.f78632a.onSuccess(t9);
            } else {
                this.f78632a.onComplete();
            }
        }
    }

    public k(io.reactivex.rxjava3.core.b0<T> source, long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError) {
        super(source);
        this.f78627b = delay;
        this.f78628c = unit;
        this.f78629d = scheduler;
        this.f78630e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78627b, this.f78628c, this.f78629d, this.f78630e));
    }
}
