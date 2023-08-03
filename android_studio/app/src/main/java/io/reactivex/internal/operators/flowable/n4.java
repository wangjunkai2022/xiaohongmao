package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTimer.java */
/* loaded from: classes3.dex */
public final class n4 extends io.reactivex.j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f72395b;

    /* renamed from: c  reason: collision with root package name */
    final long f72396c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72397d;

    /* compiled from: FlowableTimer.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements org.reactivestreams.e, Runnable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f72398c = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f72399a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f72400b;

        a(org.reactivestreams.d<? super Long> dVar) {
            this.f72399a = dVar;
        }

        public void a(io.reactivex.disposables.c cVar) {
            DisposableHelper.trySet(this, cVar);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            DisposableHelper.dispose(this);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                this.f72400b = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() != DisposableHelper.DISPOSED) {
                if (this.f72400b) {
                    this.f72399a.onNext(0L);
                    lazySet(EmptyDisposable.INSTANCE);
                    this.f72399a.onComplete();
                    return;
                }
                lazySet(EmptyDisposable.INSTANCE);
                this.f72399a.onError(new MissingBackpressureException("Can't deliver value due to lack of requests"));
            }
        }
    }

    public n4(long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f72396c = j4;
        this.f72397d = timeUnit;
        this.f72395b = h0Var;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super Long> dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        aVar.a(this.f72395b.g(aVar, this.f72396c, this.f72397d));
    }
}
