package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableAndThenCompletable.java */
/* loaded from: classes3.dex */
public final class b extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71282a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f71283b;

    /* compiled from: CompletableAndThenCompletable.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f71284a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.d f71285b;

        a(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.d dVar) {
            this.f71284a = atomicReference;
            this.f71285b = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71285b.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71285b.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this.f71284a, cVar);
        }
    }

    /* compiled from: CompletableAndThenCompletable.java */
    /* renamed from: io.reactivex.internal.operators.completable.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0543b extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f71286c = -4101678820158072998L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71287a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g f71288b;

        C0543b(io.reactivex.d dVar, io.reactivex.g gVar) {
            this.f71287a = dVar;
            this.f71288b = gVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71288b.d(new a(this, this.f71287a));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71287a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f71287a.onSubscribe(this);
            }
        }
    }

    public b(io.reactivex.g gVar, io.reactivex.g gVar2) {
        this.f71282a = gVar;
        this.f71283b = gVar2;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71282a.d(new C0543b(dVar, this.f71283b));
    }
}
