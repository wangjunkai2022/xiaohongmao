package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTimeoutMaybe.java */
/* loaded from: classes4.dex */
public final class l1<T, U> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<U> f78662b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f78663c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeTimeoutMaybe.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78664b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78665a;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78665a = downstream;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78665a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78665a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78665a.onSuccess(value);
        }
    }

    /* compiled from: MaybeTimeoutMaybe.java */
    /* loaded from: classes4.dex */
    static final class b<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78666e = -5955289211445418871L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78667a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, U> f78668b = new c<>(this);

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.b0<? extends T> f78669c;

        /* renamed from: d  reason: collision with root package name */
        final a<T> f78670d;

        b(io.reactivex.rxjava3.core.y<? super T> actual, io.reactivex.rxjava3.core.b0<? extends T> fallback) {
            this.f78667a = actual;
            this.f78669c = fallback;
            this.f78670d = fallback != null ? new a<>(actual) : null;
        }

        public void a() {
            if (DisposableHelper.dispose(this)) {
                io.reactivex.rxjava3.core.b0<? extends T> b0Var = this.f78669c;
                if (b0Var == null) {
                    this.f78667a.onError(new TimeoutException());
                } else {
                    b0Var.b(this.f78670d);
                }
            }
        }

        public void b(Throwable e4) {
            if (DisposableHelper.dispose(this)) {
                this.f78667a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f78668b);
            a<T> aVar = this.f78670d;
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            DisposableHelper.dispose(this.f78668b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78667a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            DisposableHelper.dispose(this.f78668b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78667a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            DisposableHelper.dispose(this.f78668b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78667a.onSuccess(value);
            }
        }
    }

    /* compiled from: MaybeTimeoutMaybe.java */
    /* loaded from: classes4.dex */
    static final class c<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<Object> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78671b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, U> f78672a;

        c(b<T, U> parent) {
            this.f78672a = parent;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78672a.a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78672a.b(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(Object value) {
            this.f78672a.a();
        }
    }

    public l1(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.b0<U> other, io.reactivex.rxjava3.core.b0<? extends T> fallback) {
        super(source);
        this.f78662b = other;
        this.f78663c = fallback;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        b bVar = new b(observer, this.f78663c);
        observer.onSubscribe(bVar);
        this.f78662b.b(bVar.f78668b);
        this.f78452a.b(bVar);
    }
}
