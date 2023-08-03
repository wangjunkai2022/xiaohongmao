package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTimeoutMaybe.java */
/* loaded from: classes3.dex */
public final class i1<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<U> f73332b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f73333c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeTimeoutMaybe.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73334b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73335a;

        a(io.reactivex.t<? super T> tVar) {
            this.f73335a = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73335a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73335a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73335a.onSuccess(t9);
        }
    }

    /* compiled from: MaybeTimeoutMaybe.java */
    /* loaded from: classes3.dex */
    static final class b<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73336e = -5955289211445418871L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73337a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, U> f73338b = new c<>(this);

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.w<? extends T> f73339c;

        /* renamed from: d  reason: collision with root package name */
        final a<T> f73340d;

        b(io.reactivex.t<? super T> tVar, io.reactivex.w<? extends T> wVar) {
            this.f73337a = tVar;
            this.f73339c = wVar;
            this.f73340d = wVar != null ? new a<>(tVar) : null;
        }

        public void a() {
            if (DisposableHelper.dispose(this)) {
                io.reactivex.w<? extends T> wVar = this.f73339c;
                if (wVar == null) {
                    this.f73337a.onError(new TimeoutException());
                } else {
                    wVar.b(this.f73340d);
                }
            }
        }

        public void b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f73337a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f73338b);
            a<T> aVar = this.f73340d;
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            DisposableHelper.dispose(this.f73338b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73337a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f73338b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73337a.onError(th);
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
            DisposableHelper.dispose(this.f73338b);
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (getAndSet(disposableHelper) != disposableHelper) {
                this.f73337a.onSuccess(t9);
            }
        }
    }

    /* compiled from: MaybeTimeoutMaybe.java */
    /* loaded from: classes3.dex */
    static final class c<T, U> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<Object> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73341b = 8663801314800248617L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, U> f73342a;

        c(b<T, U> bVar) {
            this.f73342a = bVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73342a.a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73342a.b(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(Object obj) {
            this.f73342a.a();
        }
    }

    public i1(io.reactivex.w<T> wVar, io.reactivex.w<U> wVar2, io.reactivex.w<? extends T> wVar3) {
        super(wVar);
        this.f73332b = wVar2;
        this.f73333c = wVar3;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        b bVar = new b(tVar, this.f73333c);
        tVar.onSubscribe(bVar);
        this.f73332b.b(bVar.f73338b);
        this.f73172a.b(bVar);
    }
}
