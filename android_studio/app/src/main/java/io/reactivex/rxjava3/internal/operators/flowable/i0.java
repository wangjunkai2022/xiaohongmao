package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: FlowableDelay.java */
/* loaded from: classes4.dex */
public final class i0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77310c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77311d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77312e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f77313f;

    /* compiled from: FlowableDelay.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77314a;

        /* renamed from: b  reason: collision with root package name */
        final long f77315b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f77316c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f77317d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f77318e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f77319f;

        /* compiled from: FlowableDelay.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.i0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0633a implements Runnable {
            RunnableC0633a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f77314a.onComplete();
                } finally {
                    a.this.f77317d.dispose();
                }
            }
        }

        /* compiled from: FlowableDelay.java */
        /* loaded from: classes4.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f77321a;

            b(Throwable t9) {
                this.f77321a = t9;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f77314a.onError(this.f77321a);
                } finally {
                    a.this.f77317d.dispose();
                }
            }
        }

        /* compiled from: FlowableDelay.java */
        /* loaded from: classes4.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f77323a;

            c(T t9) {
                this.f77323a = t9;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f77314a.onNext((T) this.f77323a);
            }
        }

        a(org.reactivestreams.d<? super T> actual, long delay, TimeUnit unit, o0.c w9, boolean delayError) {
            this.f77314a = actual;
            this.f77315b = delay;
            this.f77316c = unit;
            this.f77317d = w9;
            this.f77318e = delayError;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77319f.cancel();
            this.f77317d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77317d.c(new RunnableC0633a(), this.f77315b, this.f77316c);
        }

        @Override // org.reactivestreams.d
        public void onError(final Throwable t9) {
            this.f77317d.c(new b(t9), this.f77318e ? this.f77315b : 0L, this.f77316c);
        }

        @Override // org.reactivestreams.d
        public void onNext(final T t9) {
            this.f77317d.c(new c(t9), this.f77315b, this.f77316c);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77319f, s9)) {
                this.f77319f = s9;
                this.f77314a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77319f.request(n9);
        }
    }

    public i0(io.reactivex.rxjava3.core.m<T> source, long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError) {
        super(source);
        this.f77310c = delay;
        this.f77311d = unit;
        this.f77312e = scheduler;
        this.f77313f = delayError;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> t9) {
        this.f76811b.G6(new a(this.f77313f ? t9 : new io.reactivex.rxjava3.subscribers.e(t9), this.f77310c, this.f77311d, this.f77312e.d(), this.f77313f));
    }
}
