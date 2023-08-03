package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableThrottleFirstTimed.java */
/* loaded from: classes3.dex */
public final class i4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72061c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72062d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f72063e;

    /* compiled from: FlowableThrottleFirstTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: i  reason: collision with root package name */
        private static final long f72064i = -9102637559663639004L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72065a;

        /* renamed from: b  reason: collision with root package name */
        final long f72066b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f72067c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f72068d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f72069e;

        /* renamed from: f  reason: collision with root package name */
        final SequentialDisposable f72070f = new SequentialDisposable();

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f72071g;

        /* renamed from: h  reason: collision with root package name */
        boolean f72072h;

        a(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f72065a = dVar;
            this.f72066b = j4;
            this.f72067c = timeUnit;
            this.f72068d = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72069e.cancel();
            this.f72068d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72072h) {
                return;
            }
            this.f72072h = true;
            this.f72065a.onComplete();
            this.f72068d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72072h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72072h = true;
            this.f72065a.onError(th);
            this.f72068d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72072h || this.f72071g) {
                return;
            }
            this.f72071g = true;
            if (get() != 0) {
                this.f72065a.onNext(t9);
                io.reactivex.internal.util.b.e(this, 1L);
                io.reactivex.disposables.c cVar = this.f72070f.get();
                if (cVar != null) {
                    cVar.dispose();
                }
                this.f72070f.replace(this.f72068d.c(this, this.f72066b, this.f72067c));
                return;
            }
            this.f72072h = true;
            cancel();
            this.f72065a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72069e, eVar)) {
                this.f72069e = eVar;
                this.f72065a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72071g = false;
        }
    }

    public i4(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(jVar);
        this.f72061c = j4;
        this.f72062d = timeUnit;
        this.f72063e = h0Var;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(new io.reactivex.subscribers.e(dVar), this.f72061c, this.f72062d, this.f72063e.d()));
    }
}
