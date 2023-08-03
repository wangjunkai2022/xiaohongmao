package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.operators.flowable.n1;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableJoin.java */
/* loaded from: classes3.dex */
public final class t1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.flowable.a<TLeft, R> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends TRight> f72710c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f72711d;

    /* renamed from: e  reason: collision with root package name */
    final n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f72712e;

    /* renamed from: f  reason: collision with root package name */
    final n7.c<? super TLeft, ? super TRight, ? extends R> f72713f;

    /* compiled from: FlowableJoin.java */
    /* loaded from: classes3.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements org.reactivestreams.e, n1.b {

        /* renamed from: o  reason: collision with root package name */
        private static final long f72714o = -6071216598687999801L;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f72715p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f72716q = 2;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f72717r = 3;

        /* renamed from: s  reason: collision with root package name */
        static final Integer f72718s = 4;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72719a;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f72726h;

        /* renamed from: i  reason: collision with root package name */
        final n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f72727i;

        /* renamed from: j  reason: collision with root package name */
        final n7.c<? super TLeft, ? super TRight, ? extends R> f72728j;

        /* renamed from: l  reason: collision with root package name */
        int f72730l;

        /* renamed from: m  reason: collision with root package name */
        int f72731m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f72732n;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f72720b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.disposables.b f72722d = new io.reactivex.disposables.b();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f72721c = new io.reactivex.internal.queue.b<>(io.reactivex.j.Y());

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TLeft> f72723e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final Map<Integer, TRight> f72724f = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<Throwable> f72725g = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f72729k = new AtomicInteger(2);

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> oVar, n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> oVar2, n7.c<? super TLeft, ? super TRight, ? extends R> cVar) {
            this.f72719a = dVar;
            this.f72726h = oVar;
            this.f72727i = oVar2;
            this.f72728j = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void a(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f72725g, th)) {
                this.f72729k.decrementAndGet();
                i();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void b(boolean z9, Object obj) {
            synchronized (this) {
                this.f72721c.offer(z9 ? f72715p : f72716q, obj);
            }
            i();
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void c(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f72725g, th)) {
                i();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72732n) {
                return;
            }
            this.f72732n = true;
            h();
            if (getAndIncrement() == 0) {
                this.f72721c.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void d(boolean z9, n1.c cVar) {
            synchronized (this) {
                this.f72721c.offer(z9 ? f72717r : f72718s, cVar);
            }
            i();
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void e(n1.d dVar) {
            this.f72722d.c(dVar);
            this.f72729k.decrementAndGet();
            i();
        }

        void h() {
            this.f72722d.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<Object> bVar = this.f72721c;
            org.reactivestreams.d<? super R> dVar = this.f72719a;
            boolean z9 = true;
            int i4 = 1;
            while (!this.f72732n) {
                if (this.f72725g.get() != null) {
                    bVar.clear();
                    h();
                    j(dVar);
                    return;
                }
                boolean z10 = this.f72729k.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z11 = num == null;
                if (z10 && z11) {
                    this.f72723e.clear();
                    this.f72724f.clear();
                    this.f72722d.dispose();
                    dVar.onComplete();
                    return;
                } else if (z11) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f72715p) {
                        int i10 = this.f72730l;
                        this.f72730l = i10 + 1;
                        this.f72723e.put(Integer.valueOf(i10), poll);
                        try {
                            org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72726h.apply(poll), "The leftEnd returned a null Publisher");
                            n1.c cVar2 = new n1.c(this, z9, i10);
                            this.f72722d.b(cVar2);
                            cVar.i(cVar2);
                            if (this.f72725g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            long j4 = this.f72720b.get();
                            long j10 = 0;
                            for (TRight tright : this.f72724f.values()) {
                                try {
                                    Object obj = (Object) io.reactivex.internal.functions.b.g(this.f72728j.apply(poll, tright), "The resultSelector returned a null value");
                                    if (j10 != j4) {
                                        dVar.onNext(obj);
                                        j10++;
                                    } else {
                                        io.reactivex.internal.util.g.a(this.f72725g, new MissingBackpressureException("Could not emit value due to lack of requests"));
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
                                io.reactivex.internal.util.b.e(this.f72720b, j10);
                            }
                        } catch (Throwable th2) {
                            k(th2, dVar, bVar);
                            return;
                        }
                    } else if (num == f72716q) {
                        int i11 = this.f72731m;
                        this.f72731m = i11 + 1;
                        this.f72724f.put(Integer.valueOf(i11), poll);
                        try {
                            org.reactivestreams.c cVar3 = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72727i.apply(poll), "The rightEnd returned a null Publisher");
                            n1.c cVar4 = new n1.c(this, false, i11);
                            this.f72722d.b(cVar4);
                            cVar3.i(cVar4);
                            if (this.f72725g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            long j11 = this.f72720b.get();
                            long j12 = 0;
                            for (TLeft tleft : this.f72723e.values()) {
                                try {
                                    Object obj2 = (Object) io.reactivex.internal.functions.b.g(this.f72728j.apply(tleft, poll), "The resultSelector returned a null value");
                                    if (j12 != j11) {
                                        dVar.onNext(obj2);
                                        j12++;
                                    } else {
                                        io.reactivex.internal.util.g.a(this.f72725g, new MissingBackpressureException("Could not emit value due to lack of requests"));
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
                                io.reactivex.internal.util.b.e(this.f72720b, j12);
                            }
                        } catch (Throwable th4) {
                            k(th4, dVar, bVar);
                            return;
                        }
                    } else if (num == f72717r) {
                        n1.c cVar5 = (n1.c) poll;
                        this.f72723e.remove(Integer.valueOf(cVar5.f72370c));
                        this.f72722d.a(cVar5);
                    } else if (num == f72718s) {
                        n1.c cVar6 = (n1.c) poll;
                        this.f72724f.remove(Integer.valueOf(cVar6.f72370c));
                        this.f72722d.a(cVar6);
                    }
                    z9 = true;
                }
            }
            bVar.clear();
        }

        void j(org.reactivestreams.d<?> dVar) {
            Throwable c10 = io.reactivex.internal.util.g.c(this.f72725g);
            this.f72723e.clear();
            this.f72724f.clear();
            dVar.onError(c10);
        }

        void k(Throwable th, org.reactivestreams.d<?> dVar, o7.o<?> oVar) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.internal.util.g.a(this.f72725g, th);
            oVar.clear();
            h();
            j(dVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72720b, j4);
            }
        }
    }

    public t1(io.reactivex.j<TLeft> jVar, org.reactivestreams.c<? extends TRight> cVar, n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> oVar, n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> oVar2, n7.c<? super TLeft, ? super TRight, ? extends R> cVar2) {
        super(jVar);
        this.f72710c = cVar;
        this.f72711d = oVar;
        this.f72712e = oVar2;
        this.f72713f = cVar2;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        a aVar = new a(dVar, this.f72711d, this.f72712e, this.f72713f);
        dVar.onSubscribe(aVar);
        n1.d dVar2 = new n1.d(aVar, true);
        aVar.f72722d.b(dVar2);
        n1.d dVar3 = new n1.d(aVar, false);
        aVar.f72722d.b(dVar3);
        this.f71538b.j6(dVar2);
        this.f72710c.i(dVar3);
    }
}
