package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: FlowableUnsubscribeOn.java */
/* loaded from: classes4.dex */
public final class t4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77988c;

    /* compiled from: FlowableUnsubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f77989d = 1015244841293359600L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77990a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f77991b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77992c;

        /* compiled from: FlowableUnsubscribeOn.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.t4$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0639a implements Runnable {
            RunnableC0639a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f77992c.cancel();
            }
        }

        a(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f77990a = actual;
            this.f77991b = scheduler;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (compareAndSet(false, true)) {
                this.f77991b.f(new RunnableC0639a());
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (get()) {
                return;
            }
            this.f77990a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (get()) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
            } else {
                this.f77990a.onError(t9);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (get()) {
                return;
            }
            this.f77990a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77992c, s9)) {
                this.f77992c = s9;
                this.f77990a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77992c.request(n9);
        }
    }

    public t4(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f77988c = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77988c));
    }
}
