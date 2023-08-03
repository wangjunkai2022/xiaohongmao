package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableThrottleLatest.java */
/* loaded from: classes3.dex */
public final class j4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72120c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72121d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f72122e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f72123f;

    /* compiled from: FlowableThrottleLatest.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: o  reason: collision with root package name */
        private static final long f72124o = -8296689127439125014L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72125a;

        /* renamed from: b  reason: collision with root package name */
        final long f72126b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f72127c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f72128d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f72129e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<T> f72130f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f72131g = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f72132h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f72133i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f72134j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f72135k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f72136l;

        /* renamed from: m  reason: collision with root package name */
        long f72137m;

        /* renamed from: n  reason: collision with root package name */
        boolean f72138n;

        a(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, h0.c cVar, boolean z9) {
            this.f72125a = dVar;
            this.f72126b = j4;
            this.f72127c = timeUnit;
            this.f72128d = cVar;
            this.f72129e = z9;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f72130f;
            AtomicLong atomicLong = this.f72131g;
            org.reactivestreams.d<? super T> dVar = this.f72125a;
            int i4 = 1;
            while (!this.f72135k) {
                boolean z9 = this.f72133i;
                if (z9 && this.f72134j != null) {
                    atomicReference.lazySet(null);
                    dVar.onError(this.f72134j);
                    this.f72128d.dispose();
                    return;
                }
                boolean z10 = atomicReference.get() == null;
                if (z9) {
                    if (!z10 && this.f72129e) {
                        T andSet = atomicReference.getAndSet(null);
                        long j4 = this.f72137m;
                        if (j4 != atomicLong.get()) {
                            this.f72137m = j4 + 1;
                            dVar.onNext(andSet);
                            dVar.onComplete();
                        } else {
                            dVar.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                        }
                    } else {
                        atomicReference.lazySet(null);
                        dVar.onComplete();
                    }
                    this.f72128d.dispose();
                    return;
                }
                if (z10) {
                    if (this.f72136l) {
                        this.f72138n = false;
                        this.f72136l = false;
                    }
                } else if (!this.f72138n || this.f72136l) {
                    T andSet2 = atomicReference.getAndSet(null);
                    long j10 = this.f72137m;
                    if (j10 != atomicLong.get()) {
                        dVar.onNext(andSet2);
                        this.f72137m = j10 + 1;
                        this.f72136l = false;
                        this.f72138n = true;
                        this.f72128d.c(this, this.f72126b, this.f72127c);
                    } else {
                        this.f72132h.cancel();
                        dVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                        this.f72128d.dispose();
                        return;
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72135k = true;
            this.f72132h.cancel();
            this.f72128d.dispose();
            if (getAndIncrement() == 0) {
                this.f72130f.lazySet(null);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72133i = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72134j = th;
            this.f72133i = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72130f.set(t9);
            a();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72132h, eVar)) {
                this.f72132h = eVar;
                this.f72125a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72131g, j4);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72136l = true;
            a();
        }
    }

    public j4(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        super(jVar);
        this.f72120c = j4;
        this.f72121d = timeUnit;
        this.f72122e = h0Var;
        this.f72123f = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72120c, this.f72121d, this.f72122e.d(), this.f72123f));
    }
}
