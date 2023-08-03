package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeTimer.java */
/* loaded from: classes3.dex */
public final class k1 extends io.reactivex.q<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f73371a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f73372b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.h0 f73373c;

    /* compiled from: MaybeTimer.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.disposables.c, Runnable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73374b = 2875964065294031672L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super Long> f73375a;

        a(io.reactivex.t<? super Long> tVar) {
            this.f73375a = tVar;
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
            this.f73375a.onSuccess(0L);
        }
    }

    public k1(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f73371a = j4;
        this.f73372b = timeUnit;
        this.f73373c = h0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super Long> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        aVar.a(this.f73373c.g(aVar, this.f73371a, this.f73372b));
    }
}
