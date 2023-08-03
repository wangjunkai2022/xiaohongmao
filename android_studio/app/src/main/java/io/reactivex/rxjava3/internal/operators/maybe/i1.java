package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTakeUntilMaybe.java */
/* loaded from: classes4.dex */
public final class i1<T, U> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<U> f78613b;

    /* compiled from: MaybeTakeUntilMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78614c = -2187421758664251153L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78615a;

        /* renamed from: b  reason: collision with root package name */
        final C0648a<U> f78616b = new C0648a<>(this);

        /* compiled from: MaybeTakeUntilMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.i1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0648a<U> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<U> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78617b = -1266041316834525931L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, U> f78618a;

            C0648a(a<?, U> parent) {
                this.f78618a = parent;
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78618a.a();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78618a.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(Object value) {
                this.f78618a.a();
            }
        }

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78615a = downstream;
        }

        void a() {
            if (DisposableHelper.dispose(this)) {
                this.f78615a.onComplete();
            }
        }

        void b(Throwable e4) {
            if (DisposableHelper.dispose(this)) {
                this.f78615a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f78616b);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            DisposableHelper.dispose(this.f78616b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78615a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            DisposableHelper.dispose(this.f78616b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78615a.onError(e4);
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
            DisposableHelper.dispose(this.f78616b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f78615a.onSuccess(value);
            }
        }
    }

    public i1(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.b0<U> other) {
        super(source);
        this.f78613b = other;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        this.f78613b.b(aVar.f78616b);
        this.f78452a.b(aVar);
    }
}
