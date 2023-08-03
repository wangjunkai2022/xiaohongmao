package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableSkipLastTimed.java */
/* loaded from: classes3.dex */
public final class u3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72810c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72811d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f72812e;

    /* renamed from: f  reason: collision with root package name */
    final int f72813f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f72814g;

    /* compiled from: FlowableSkipLastTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f72815l = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72816a;

        /* renamed from: b  reason: collision with root package name */
        final long f72817b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f72818c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f72819d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f72820e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f72821f;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f72822g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicLong f72823h = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f72824i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f72825j;

        /* renamed from: k  reason: collision with root package name */
        Throwable f72826k;

        a(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
            this.f72816a = dVar;
            this.f72817b = j4;
            this.f72818c = timeUnit;
            this.f72819d = h0Var;
            this.f72820e = new io.reactivex.internal.queue.b<>(i4);
            this.f72821f = z9;
        }

        boolean a(boolean z9, boolean z10, org.reactivestreams.d<? super T> dVar, boolean z11) {
            if (this.f72824i) {
                this.f72820e.clear();
                return true;
            } else if (z9) {
                if (z11) {
                    if (z10) {
                        Throwable th = this.f72826k;
                        if (th != null) {
                            dVar.onError(th);
                        } else {
                            dVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f72826k;
                if (th2 != null) {
                    this.f72820e.clear();
                    dVar.onError(th2);
                    return true;
                } else if (z10) {
                    dVar.onComplete();
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
            org.reactivestreams.d<? super T> dVar = this.f72816a;
            io.reactivex.internal.queue.b<Object> bVar = this.f72820e;
            boolean z9 = this.f72821f;
            TimeUnit timeUnit = this.f72818c;
            io.reactivex.h0 h0Var = this.f72819d;
            long j4 = this.f72817b;
            int i4 = 1;
            do {
                long j10 = this.f72823h.get();
                long j11 = 0;
                while (j11 != j10) {
                    boolean z10 = this.f72825j;
                    Long l10 = (Long) bVar.peek();
                    boolean z11 = l10 == null;
                    boolean z12 = (z11 || l10.longValue() <= h0Var.e(timeUnit) - j4) ? z11 : true;
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
                    io.reactivex.internal.util.b.e(this.f72823h, j11);
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72824i) {
                return;
            }
            this.f72824i = true;
            this.f72822g.cancel();
            if (getAndIncrement() == 0) {
                this.f72820e.clear();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72825j = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72826k = th;
            this.f72825j = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72820e.offer(Long.valueOf(this.f72819d.e(this.f72818c)), t9);
            b();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72822g, eVar)) {
                this.f72822g = eVar;
                this.f72816a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72823h, j4);
                b();
            }
        }
    }

    public u3(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
        super(jVar);
        this.f72810c = j4;
        this.f72811d = timeUnit;
        this.f72812e = h0Var;
        this.f72813f = i4;
        this.f72814g = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72810c, this.f72811d, this.f72812e, this.f72813f, this.f72814g));
    }
}
