package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableTakeLastTimed.java */
/* loaded from: classes4.dex */
public final class g4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77252c;

    /* renamed from: d  reason: collision with root package name */
    final long f77253d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f77254e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77255f;

    /* renamed from: g  reason: collision with root package name */
    final int f77256g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f77257h;

    /* compiled from: FlowableTakeLastTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: m  reason: collision with root package name */
        private static final long f77258m = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77259a;

        /* renamed from: b  reason: collision with root package name */
        final long f77260b;

        /* renamed from: c  reason: collision with root package name */
        final long f77261c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f77262d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f77263e;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f77264f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f77265g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f77266h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f77267i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f77268j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f77269k;

        /* renamed from: l  reason: collision with root package name */
        Throwable f77270l;

        a(org.reactivestreams.d<? super T> actual, long count, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
            this.f77259a = actual;
            this.f77260b = count;
            this.f77261c = time;
            this.f77262d = unit;
            this.f77263e = scheduler;
            this.f77264f = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f77265g = delayError;
        }

        boolean a(boolean empty, org.reactivestreams.d<? super T> a10, boolean delayError) {
            if (this.f77268j) {
                this.f77264f.clear();
                return true;
            } else if (delayError) {
                if (empty) {
                    Throwable th = this.f77270l;
                    if (th != null) {
                        a10.onError(th);
                    } else {
                        a10.onComplete();
                    }
                    return true;
                }
                return false;
            } else {
                Throwable th2 = this.f77270l;
                if (th2 != null) {
                    this.f77264f.clear();
                    a10.onError(th2);
                    return true;
                } else if (empty) {
                    a10.onComplete();
                    return true;
                } else {
                    return false;
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f77259a;
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f77264f;
            boolean z9 = this.f77265g;
            int i4 = 1;
            do {
                if (this.f77269k) {
                    if (a(bVar.isEmpty(), dVar, z9)) {
                        return;
                    }
                    long j4 = this.f77267i.get();
                    long j10 = 0;
                    while (true) {
                        if (a(bVar.peek() == null, dVar, z9)) {
                            return;
                        }
                        if (j4 != j10) {
                            bVar.poll();
                            dVar.onNext(bVar.poll());
                            j10++;
                        } else if (j10 != 0) {
                            io.reactivex.rxjava3.internal.util.b.e(this.f77267i, j10);
                        }
                    }
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        void c(long now, io.reactivex.rxjava3.internal.queue.b<Object> q9) {
            long j4 = this.f77261c;
            long j10 = this.f77260b;
            boolean z9 = j10 == Long.MAX_VALUE;
            while (!q9.isEmpty()) {
                if (((Long) q9.peek()).longValue() >= now - j4 && (z9 || (q9.p() >> 1) <= j10)) {
                    return;
                }
                q9.poll();
                q9.poll();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77268j) {
                return;
            }
            this.f77268j = true;
            this.f77266h.cancel();
            if (getAndIncrement() == 0) {
                this.f77264f.clear();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            c(this.f77263e.e(this.f77262d), this.f77264f);
            this.f77269k = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77265g) {
                c(this.f77263e.e(this.f77262d), this.f77264f);
            }
            this.f77270l = t9;
            this.f77269k = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f77264f;
            long e4 = this.f77263e.e(this.f77262d);
            bVar.offer(Long.valueOf(e4), t9);
            c(e4, bVar);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77266h, s9)) {
                this.f77266h = s9;
                this.f77259a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77267i, n9);
                b();
            }
        }
    }

    public g4(io.reactivex.rxjava3.core.m<T> source, long count, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
        super(source);
        this.f77252c = count;
        this.f77253d = time;
        this.f77254e = unit;
        this.f77255f = scheduler;
        this.f77256g = bufferSize;
        this.f77257h = delayError;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77252c, this.f77253d, this.f77254e, this.f77255f, this.f77256g, this.f77257h));
    }
}
