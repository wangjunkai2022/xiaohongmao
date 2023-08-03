package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableScanSeed.java */
/* loaded from: classes4.dex */
public final class o3<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.c<R, ? super T, R> f77661c;

    /* renamed from: d  reason: collision with root package name */
    final q7.s<R> f77662d;

    /* compiled from: FlowableScanSeed.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: m  reason: collision with root package name */
        private static final long f77663m = -1776795561228106469L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f77664a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<R, ? super T, R> f77665b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<R> f77666c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f77667d;

        /* renamed from: e  reason: collision with root package name */
        final int f77668e;

        /* renamed from: f  reason: collision with root package name */
        final int f77669f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f77670g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f77671h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f77672i;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f77673j;

        /* renamed from: k  reason: collision with root package name */
        R f77674k;

        /* renamed from: l  reason: collision with root package name */
        int f77675l;

        a(org.reactivestreams.d<? super R> actual, q7.c<R, ? super T, R> accumulator, R value, int prefetch) {
            this.f77664a = actual;
            this.f77665b = accumulator;
            this.f77674k = value;
            this.f77668e = prefetch;
            this.f77669f = prefetch - (prefetch >> 2);
            SpscArrayQueue spscArrayQueue = new SpscArrayQueue(prefetch);
            this.f77666c = spscArrayQueue;
            spscArrayQueue.offer(value);
            this.f77667d = new AtomicLong();
        }

        void a() {
            int i4;
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f77664a;
            io.reactivex.rxjava3.internal.fuseable.p<R> pVar = this.f77666c;
            int i10 = this.f77669f;
            int i11 = this.f77675l;
            int i12 = 1;
            do {
                long j4 = this.f77667d.get();
                long j10 = 0;
                while (true) {
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (this.f77670g) {
                        pVar.clear();
                        return;
                    } else {
                        boolean z9 = this.f77671h;
                        if (z9 && (th = this.f77672i) != null) {
                            pVar.clear();
                            dVar.onError(th);
                            return;
                        }
                        Object obj = (R) pVar.poll();
                        boolean z10 = obj == null;
                        if (z9 && z10) {
                            dVar.onComplete();
                            return;
                        } else if (z10) {
                            break;
                        } else {
                            dVar.onNext(obj);
                            j10++;
                            i11++;
                            if (i11 == i10) {
                                this.f77673j.request(i10);
                                i11 = 0;
                            }
                        }
                    }
                }
                if (i4 == 0 && this.f77671h) {
                    Throwable th2 = this.f77672i;
                    if (th2 != null) {
                        pVar.clear();
                        dVar.onError(th2);
                        return;
                    } else if (pVar.isEmpty()) {
                        dVar.onComplete();
                        return;
                    }
                }
                if (j10 != 0) {
                    io.reactivex.rxjava3.internal.util.b.e(this.f77667d, j10);
                }
                this.f77675l = i11;
                i12 = addAndGet(-i12);
            } while (i12 != 0);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77670g = true;
            this.f77673j.cancel();
            if (getAndIncrement() == 0) {
                this.f77666c.clear();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77671h) {
                return;
            }
            this.f77671h = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77671h) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77672i = t9;
            this.f77671h = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77671h) {
                return;
            }
            try {
                R apply = this.f77665b.apply(this.f77674k, t9);
                Objects.requireNonNull(apply, "The accumulator returned a null value");
                this.f77674k = apply;
                this.f77666c.offer(apply);
                a();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77673j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77673j, s9)) {
                this.f77673j = s9;
                this.f77664a.onSubscribe(this);
                s9.request(this.f77668e - 1);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77667d, n9);
                a();
            }
        }
    }

    public o3(io.reactivex.rxjava3.core.m<T> source, q7.s<R> seedSupplier, q7.c<R, ? super T, R> accumulator) {
        super(source);
        this.f77661c = accumulator;
        this.f77662d = seedSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        try {
            R r9 = this.f77662d.get();
            Objects.requireNonNull(r9, "The seed supplied is null");
            this.f76811b.G6(new a(s9, this.f77661c, r9, io.reactivex.rxjava3.core.m.V()));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
