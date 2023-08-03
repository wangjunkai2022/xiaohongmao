package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableSubscribeOn.java */
/* loaded from: classes3.dex */
public final class k0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71393a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f71394b;

    /* compiled from: CompletableSubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71395d = 7000911171163930287L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71396a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f71397b = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.g f71398c;

        a(io.reactivex.d dVar, io.reactivex.g gVar) {
            this.f71396a = dVar;
            this.f71398c = gVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f71397b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71396a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71396a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f71398c.d(this);
        }
    }

    public k0(io.reactivex.g gVar, io.reactivex.h0 h0Var) {
        this.f71393a = gVar;
        this.f71394b = h0Var;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar, this.f71393a);
        dVar.onSubscribe(aVar);
        aVar.f71397b.replace(this.f71394b.f(aVar));
    }
}
