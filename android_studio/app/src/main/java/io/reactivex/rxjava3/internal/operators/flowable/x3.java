package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableSkipLastTimed.java */
/* loaded from: classes4.dex */
public final class x3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f78237c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f78238d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78239e;

    /* renamed from: f  reason: collision with root package name */
    final int f78240f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f78241g;

    /* compiled from: FlowableSkipLastTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f78242l = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78243a;

        /* renamed from: b  reason: collision with root package name */
        final long f78244b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f78245c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f78246d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f78247e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f78248f;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f78249g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f78250h = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f78251i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78252j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f78253k;

        a(org.reactivestreams.d<? super T> actual, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
            this.f78243a = actual;
            this.f78244b = time;
            this.f78245c = unit;
            this.f78246d = scheduler;
            this.f78247e = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f78248f = delayError;
        }

        boolean a(boolean d4, boolean empty, org.reactivestreams.d<? super T> a10, boolean delayError) {
            if (this.f78251i) {
                this.f78247e.clear();
                return true;
            } else if (d4) {
                if (delayError) {
                    if (empty) {
                        Throwable th = this.f78253k;
                        if (th != null) {
                            a10.onError(th);
                        } else {
                            a10.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f78253k;
                if (th2 != null) {
                    this.f78247e.clear();
                    a10.onError(th2);
                    return true;
                } else if (empty) {
                    a10.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f78243a;
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f78247e;
            boolean z9 = this.f78248f;
            TimeUnit timeUnit = this.f78245c;
            io.reactivex.rxjava3.core.o0 o0Var = this.f78246d;
            long j4 = this.f78244b;
            int i4 = 1;
            do {
                long j10 = this.f78250h.get();
                long j11 = 0;
                while (j11 != j10) {
                    boolean z10 = this.f78252j;
                    Long l10 = (Long) bVar.peek();
                    boolean z11 = l10 == null;
                    boolean z12 = (z11 || l10.longValue() <= o0Var.e(timeUnit) - j4) ? z11 : true;
                    if (a(z10, z12, dVar, z9)) {
                        return;
                    }
                    if (z12) {
                        break;
                    }
                    bVar.poll();
                    dVar.onNext(bVar.poll());
                    j11++;
                }
                if (j11 != 0) {
                    io.reactivex.rxjava3.internal.util.b.e(this.f78250h, j11);
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78251i) {
                return;
            }
            this.f78251i = true;
            this.f78249g.cancel();
            if (getAndIncrement() == 0) {
                this.f78247e.clear();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78252j = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78253k = t9;
            this.f78252j = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f78247e.offer(Long.valueOf(this.f78246d.e(this.f78245c)), t9);
            b();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78249g, s9)) {
                this.f78249g = s9;
                this.f78243a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78250h, n9);
                b();
            }
        }
    }

    public x3(io.reactivex.rxjava3.core.m<T> source, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
        super(source);
        this.f78237c = time;
        this.f78238d = unit;
        this.f78239e = scheduler;
        this.f78240f = bufferSize;
        this.f78241g = delayError;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f78237c, this.f78238d, this.f78239e, this.f78240f, this.f78241g));
    }
}
