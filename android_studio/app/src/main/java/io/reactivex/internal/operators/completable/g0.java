package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableObserveOn.java */
/* loaded from: classes3.dex */
public final class g0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71345a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f71346b;

    /* compiled from: CompletableObserveOn.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c, Runnable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71347d = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71348a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f71349b;

        /* renamed from: c  reason: collision with root package name */
        Throwable f71350c;

        a(io.reactivex.d dVar, io.reactivex.h0 h0Var) {
            this.f71348a = dVar;
            this.f71349b = h0Var;
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
            DisposableHelper.replace(this, this.f71349b.f(this));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71350c = th;
            DisposableHelper.replace(this, this.f71349b.f(this));
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f71348a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f71350c;
            if (th != null) {
                this.f71350c = null;
                this.f71348a.onError(th);
                return;
            }
            this.f71348a.onComplete();
        }
    }

    public g0(io.reactivex.g gVar, io.reactivex.h0 h0Var) {
        this.f71345a = gVar;
        this.f71346b = h0Var;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71345a.d(new a(dVar, this.f71346b));
    }
}
