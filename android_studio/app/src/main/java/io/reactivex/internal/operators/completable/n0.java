package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableTimer.java */
/* loaded from: classes3.dex */
public final class n0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final long f71431a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f71432b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f71433c;

    /* compiled from: CompletableTimer.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f71434b = 3167244060586201109L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71435a;

        a(io.reactivex.d dVar) {
            this.f71435a = dVar;
        }

        void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f71435a.onComplete();
        }
    }

    public n0(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f71431a = j4;
        this.f71432b = timeUnit;
        this.f71433c = h0Var;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        aVar.a(this.f71433c.g(aVar, this.f71431a, this.f71432b));
    }
}
