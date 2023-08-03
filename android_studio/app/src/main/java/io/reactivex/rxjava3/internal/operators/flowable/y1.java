package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.operators.flowable.s1;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableJoin.java */
/* loaded from: classes4.dex */
public final class y1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<TLeft, R> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends TRight> f78310c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f78311d;

    /* renamed from: e  reason: collision with root package name */
    final q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f78312e;

    /* renamed from: f  reason: collision with root package name */
    final q7.c<? super TLeft, ? super TRight, ? extends R> f78313f;

    /* compiled from: FlowableJoin.java */
    /* loaded from: classes4.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements org.reactivestreams.e, s1.b {

        /* renamed from: o  reason: collision with root package name */
        private static final long f78314o = -6071216598687999801L;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f78315p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f78316q = 2;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f78317r = 3;

        /* renamed from: s  reason: collision with root package name */
        static final Integer f78318s = 4;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78319a;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f78326h;

        /* renamed from: i  reason: collision with root package name */
        final q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f78327i;

        /* renamed from: j  reason: collision with root package name */
        final q7.c<? super TLeft, ? super TRight, ? extends R> f78328j;

        /* renamed from: l  reason: collision with root package name */
        int f78330l;

        /* renamed from: m  reason: collision with root package name */
        int f78331m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f78332n;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f78320b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f78322d = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f78321c = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.m.V());

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TLeft> f78323e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final Map<Integer, TRight> f78324f = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<Throwable> f78325g = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f78329k = new AtomicInteger(2);

        a(org.reactivestreams.d<? super R> actual, q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super TRight, ? extends R> resultSelector) {
            this.f78319a = actual;
            this.f78326h = leftEnd;
            this.f78327i = rightEnd;
            this.f78328j = resultSelector;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void a(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f78325g, ex)) {
                this.f78329k.decrementAndGet();
                i();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void b(boolean isLeft, Object o9) {
            synchronized (this) {
                this.f78321c.offer(isLeft ? f78315p : f78316q, o9);
            }
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void c(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f78325g, ex)) {
                i();
            } else {
                io.reactivex.rxjava3.plugins.a.Y(ex);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78332n) {
                return;
            }
            this.f78332n = true;
            h();
            if (getAndIncrement() == 0) {
                this.f78321c.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void d(s1.d sender) {
            this.f78322d.c(sender);
            this.f78329k.decrementAndGet();
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void e(boolean isLeft, s1.c index) {
            synchronized (this) {
                this.f78321c.offer(isLeft ? f78317r : f78318s, index);
            }
            i();
        }

        void h() {
            this.f78322d.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f78321c;
            org.reactivestreams.d<? super R> dVar = this.f78319a;
            boolean z9 = true;
            int i4 = 1;
            while (!this.f78332n) {
                if (this.f78325g.get() != null) {
                    bVar.clear();
                    h();
                    j(dVar);
                    return;
                }
                boolean z10 = this.f78329k.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z11 = num == null;
                if (z10 && z11) {
                    this.f78323e.clear();
                    this.f78324f.clear();
                    this.f78322d.dispose();
                    dVar.onComplete();
                    return;
                } else if (z11) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f78315p) {
                        int i10 = this.f78330l;
                        this.f78330l = i10 + 1;
                        this.f78323e.put(Integer.valueOf(i10), poll);
                        try {
                            org.reactivestreams.c apply = this.f78326h.apply(poll);
                            Objects.requireNonNull(apply, "The leftEnd returned a null Publisher");
                            org.reactivestreams.c cVar = apply;
                            s1.c cVar2 = new s1.c(this, z9, i10);
                            this.f78322d.b(cVar2);
                            cVar.i(cVar2);
                            if (this.f78325g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            long j4 = this.f78320b.get();
                            long j10 = 0;
                            for (TRight tright : this.f78324f.values()) {
                                try {
                                    Object obj = (R) this.f78328j.apply(poll, tright);
                                    Objects.requireNonNull(obj, "The resultSelector returned a null value");
                                    if (j10 != j4) {
                                        dVar.onNext(obj);
                                        j10++;
                                    } else {
                                        io.reactivex.rxjava3.internal.util.g.a(this.f78325g, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        bVar.clear();
                                        h();
                                        j(dVar);
                                        return;
                                    }
                                } catch (Throwable th) {
                                    k(th, dVar, bVar);
                                    return;
                                }
                            }
                            if (j10 != 0) {
                                io.reactivex.rxjava3.internal.util.b.e(this.f78320b, j10);
                            }
                        } catch (Throwable th2) {
                            k(th2, dVar, bVar);
                            return;
                        }
                    } else if (num == f78316q) {
                        int i11 = this.f78331m;
                        this.f78331m = i11 + 1;
                        this.f78324f.put(Integer.valueOf(i11), poll);
                        try {
                            org.reactivestreams.c apply2 = this.f78327i.apply(poll);
                            Objects.requireNonNull(apply2, "The rightEnd returned a null Publisher");
                            org.reactivestreams.c cVar3 = apply2;
                            s1.c cVar4 = new s1.c(this, false, i11);
                            this.f78322d.b(cVar4);
                            cVar3.i(cVar4);
                            if (this.f78325g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            long j11 = this.f78320b.get();
                            long j12 = 0;
                            for (TLeft tleft : this.f78323e.values()) {
                                try {
                                    Object obj2 = (R) this.f78328j.apply(tleft, poll);
                                    Objects.requireNonNull(obj2, "The resultSelector returned a null value");
                                    if (j12 != j11) {
                                        dVar.onNext(obj2);
                                        j12++;
                                    } else {
                                        io.reactivex.rxjava3.internal.util.g.a(this.f78325g, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        bVar.clear();
                                        h();
                                        j(dVar);
                                        return;
                                    }
                                } catch (Throwable th3) {
                                    k(th3, dVar, bVar);
                                    return;
                                }
                            }
                            if (j12 != 0) {
                                io.reactivex.rxjava3.internal.util.b.e(this.f78320b, j12);
                            }
                        } catch (Throwable th4) {
                            k(th4, dVar, bVar);
                            return;
                        }
                    } else if (num == f78317r) {
                        s1.c cVar5 = (s1.c) poll;
                        this.f78323e.remove(Integer.valueOf(cVar5.f77922c));
                        this.f78322d.a(cVar5);
                    } else {
                        s1.c cVar6 = (s1.c) poll;
                        this.f78324f.remove(Integer.valueOf(cVar6.f77922c));
                        this.f78322d.a(cVar6);
                    }
                    z9 = true;
                }
            }
            bVar.clear();
        }

        void j(org.reactivestreams.d<?> a10) {
            Throwable f10 = io.reactivex.rxjava3.internal.util.g.f(this.f78325g);
            this.f78323e.clear();
            this.f78324f.clear();
            a10.onError(f10);
        }

        void k(Throwable exc, org.reactivestreams.d<?> a10, io.reactivex.rxjava3.internal.fuseable.q<?> q9) {
            io.reactivex.rxjava3.exceptions.a.b(exc);
            io.reactivex.rxjava3.internal.util.g.a(this.f78325g, exc);
            q9.clear();
            h();
            j(a10);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78320b, n9);
            }
        }
    }

    public y1(io.reactivex.rxjava3.core.m<TLeft> source, org.reactivestreams.c<? extends TRight> other, q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super TRight, ? extends R> resultSelector) {
        super(source);
        this.f78310c = other;
        this.f78311d = leftEnd;
        this.f78312e = rightEnd;
        this.f78313f = resultSelector;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        a aVar = new a(s9, this.f78311d, this.f78312e, this.f78313f);
        s9.onSubscribe(aVar);
        s1.d dVar = new s1.d(aVar, true);
        aVar.f78322d.b(dVar);
        s1.d dVar2 = new s1.d(aVar, false);
        aVar.f78322d.b(dVar2);
        this.f76811b.G6(dVar);
        this.f78310c.i(dVar2);
    }
}
