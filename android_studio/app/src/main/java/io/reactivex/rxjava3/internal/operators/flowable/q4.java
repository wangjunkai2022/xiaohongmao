package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTimer.java */
/* loaded from: classes4.dex */
public final class q4 extends io.reactivex.rxjava3.core.m<Long> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77839b;

    /* renamed from: c  reason: collision with root package name */
    final long f77840c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77841d;

    /* compiled from: FlowableTimer.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements org.reactivestreams.e, Runnable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f77842c = -2809475196591179431L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super Long> f77843a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f77844b;

        a(org.reactivestreams.d<? super Long> downstream) {
            this.f77843a = downstream;
        }

        public void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.trySet(this, d4);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            DisposableHelper.dispose(this);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                this.f77844b = true;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() != DisposableHelper.DISPOSED) {
                if (this.f77844b) {
                    this.f77843a.onNext(0L);
                    lazySet(EmptyDisposable.INSTANCE);
                    this.f77843a.onComplete();
                    return;
                }
                lazySet(EmptyDisposable.INSTANCE);
                this.f77843a.onError(new MissingBackpressureException("Can't deliver value due to lack of requests"));
            }
        }
    }

    public q4(long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f77840c = delay;
        this.f77841d = unit;
        this.f77839b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super Long> s9) {
        a aVar = new a(s9);
        s9.onSubscribe(aVar);
        aVar.a(this.f77839b.g(aVar, this.f77840c, this.f77841d));
    }
}
