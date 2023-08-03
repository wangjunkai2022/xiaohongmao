package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTakeUntilMaybe.java */
/* loaded from: classes3.dex */
public final class g1<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<U> f73312b;

    /* compiled from: MaybeTakeUntilMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73313c = -2187421758664251153L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73314a;

        /* renamed from: b  reason: collision with root package name */
        final C0569a<U> f73315b = new C0569a<>(this);

        /* compiled from: MaybeTakeUntilMaybe.java */
        /* renamed from: io.reactivex.internal.operators.maybe.g1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0569a<U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<U> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73316b = -1266041316834525931L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, U> f73317a;

            C0569a(a<?, U> aVar) {
                this.f73317a = aVar;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73317a.a();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73317a.b(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(Object obj) {
                this.f73317a.a();
            }
        }

        a(io.reactivex.t<? super T> tVar) {
            this.f73314a = tVar;
        }

        void a() {
            if (DisposableHelper.dispose(this)) {
                this.f73314a.onComplete();
            }
        }

        void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f73314a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f73315b);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            DisposableHelper.dispose(this.f73315b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73314a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f73315b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73314a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            DisposableHelper.dispose(this.f73315b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73314a.onSuccess(t9);
            }
        }
    }

    public g1(io.reactivex.w<T> wVar, io.reactivex.w<U> wVar2) {
        super(wVar);
        this.f73312b = wVar2;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        this.f73312b.b(aVar.f73315b);
        this.f73172a.b(aVar);
    }
}
