package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableScanSeed.java */
/* loaded from: classes3.dex */
public final class l3<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.c<R, ? super T, R> f72184c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<R> f72185d;

    /* compiled from: FlowableScanSeed.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: m  reason: collision with root package name */
        private static final long f72186m = -1776795561228106469L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72187a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<R, ? super T, R> f72188b;

        /* renamed from: c  reason: collision with root package name */
        final o7.n<R> f72189c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f72190d;

        /* renamed from: e  reason: collision with root package name */
        final int f72191e;

        /* renamed from: f  reason: collision with root package name */
        final int f72192f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f72193g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f72194h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f72195i;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f72196j;

        /* renamed from: k  reason: collision with root package name */
        R f72197k;

        /* renamed from: l  reason: collision with root package name */
        int f72198l;

        a(org.reactivestreams.d<? super R> dVar, n7.c<R, ? super T, R> cVar, R r9, int i4) {
            this.f72187a = dVar;
            this.f72188b = cVar;
            this.f72197k = r9;
            this.f72191e = i4;
            this.f72192f = i4 - (i4 >> 2);
            SpscArrayQueue spscArrayQueue = new SpscArrayQueue(i4);
            this.f72189c = spscArrayQueue;
            spscArrayQueue.offer(r9);
            this.f72190d = new AtomicLong();
        }

        void a() {
            int i4;
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f72187a;
            o7.n<R> nVar = this.f72189c;
            int i10 = this.f72192f;
            int i11 = this.f72198l;
            int i12 = 1;
            do {
                long j4 = this.f72190d.get();
                long j10 = 0;
                while (true) {
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (this.f72193g) {
                        nVar.clear();
                        return;
                    } else {
                        boolean z9 = this.f72194h;
                        if (z9 && (th = this.f72195i) != null) {
                            nVar.clear();
                            dVar.onError(th);
                            return;
                        }
                        Object obj = (R) nVar.poll();
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
                                this.f72196j.request(i10);
                                i11 = 0;
                            }
                        }
                    }
                }
                if (i4 == 0 && this.f72194h) {
                    Throwable th2 = this.f72195i;
                    if (th2 != null) {
                        nVar.clear();
                        dVar.onError(th2);
                        return;
                    } else if (nVar.isEmpty()) {
                        dVar.onComplete();
                        return;
                    }
                }
                if (j10 != 0) {
                    io.reactivex.internal.util.b.e(this.f72190d, j10);
                }
                this.f72198l = i11;
                i12 = addAndGet(-i12);
            } while (i12 != 0);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72193g = true;
            this.f72196j.cancel();
            if (getAndIncrement() == 0) {
                this.f72189c.clear();
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72194h) {
                return;
            }
            this.f72194h = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72194h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72195i = th;
            this.f72194h = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72194h) {
                return;
            }
            try {
                R r9 = (R) io.reactivex.internal.functions.b.g(this.f72188b.apply(this.f72197k, t9), "The accumulator returned a null value");
                this.f72197k = r9;
                this.f72189c.offer(r9);
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72196j.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72196j, eVar)) {
                this.f72196j = eVar;
                this.f72187a.onSubscribe(this);
                eVar.request(this.f72191e - 1);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72190d, j4);
                a();
            }
        }
    }

    public l3(io.reactivex.j<T> jVar, Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        super(jVar);
        this.f72184c = cVar;
        this.f72185d = callable;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        try {
            this.f71538b.j6(new a(dVar, this.f72184c, io.reactivex.internal.functions.b.g(this.f72185d.call(), "The seed supplied is null"), io.reactivex.j.Y()));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
