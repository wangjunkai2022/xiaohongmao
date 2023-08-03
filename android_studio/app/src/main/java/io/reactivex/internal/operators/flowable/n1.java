package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableGroupJoin.java */
/* loaded from: classes3.dex */
public final class n1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.flowable.a<TLeft, R> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends TRight> f72344c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f72345d;

    /* renamed from: e  reason: collision with root package name */
    final n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f72346e;

    /* renamed from: f  reason: collision with root package name */
    final n7.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> f72347f;

    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes3.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements org.reactivestreams.e, b {

        /* renamed from: o  reason: collision with root package name */
        private static final long f72348o = -6071216598687999801L;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f72349p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f72350q = 2;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f72351r = 3;

        /* renamed from: s  reason: collision with root package name */
        static final Integer f72352s = 4;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72353a;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f72360h;

        /* renamed from: i  reason: collision with root package name */
        final n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f72361i;

        /* renamed from: j  reason: collision with root package name */
        final n7.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> f72362j;

        /* renamed from: l  reason: collision with root package name */
        int f72364l;

        /* renamed from: m  reason: collision with root package name */
        int f72365m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f72366n;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f72354b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.disposables.b f72356d = new io.reactivex.disposables.b();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f72355c = new io.reactivex.internal.queue.b<>(io.reactivex.j.Y());

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, io.reactivex.processors.h<TRight>> f72357e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final Map<Integer, TRight> f72358f = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<Throwable> f72359g = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f72363k = new AtomicInteger(2);

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> oVar, n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> oVar2, n7.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> cVar) {
            this.f72353a = dVar;
            this.f72360h = oVar;
            this.f72361i = oVar2;
            this.f72362j = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void a(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f72359g, th)) {
                this.f72363k.decrementAndGet();
                i();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void b(boolean z9, Object obj) {
            synchronized (this) {
                this.f72355c.offer(z9 ? f72349p : f72350q, obj);
            }
            i();
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void c(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f72359g, th)) {
                i();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72366n) {
                return;
            }
            this.f72366n = true;
            h();
            if (getAndIncrement() == 0) {
                this.f72355c.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void d(boolean z9, c cVar) {
            synchronized (this) {
                this.f72355c.offer(z9 ? f72351r : f72352s, cVar);
            }
            i();
        }

        @Override // io.reactivex.internal.operators.flowable.n1.b
        public void e(d dVar) {
            this.f72356d.c(dVar);
            this.f72363k.decrementAndGet();
            i();
        }

        void h() {
            this.f72356d.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<Object> bVar = this.f72355c;
            org.reactivestreams.d<? super R> dVar = this.f72353a;
            int i4 = 1;
            while (!this.f72366n) {
                if (this.f72359g.get() != null) {
                    bVar.clear();
                    h();
                    j(dVar);
                    return;
                }
                boolean z9 = this.f72363k.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z10 = num == null;
                if (z9 && z10) {
                    for (io.reactivex.processors.h<TRight> hVar : this.f72357e.values()) {
                        hVar.onComplete();
                    }
                    this.f72357e.clear();
                    this.f72358f.clear();
                    this.f72356d.dispose();
                    dVar.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f72349p) {
                        io.reactivex.processors.h<TRight> S8 = io.reactivex.processors.h.S8();
                        int i10 = this.f72364l;
                        this.f72364l = i10 + 1;
                        this.f72357e.put(Integer.valueOf(i10), S8);
                        try {
                            org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72360h.apply(poll), "The leftEnd returned a null Publisher");
                            c cVar2 = new c(this, true, i10);
                            this.f72356d.b(cVar2);
                            cVar.i(cVar2);
                            if (this.f72359g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            try {
                                Object obj = (Object) io.reactivex.internal.functions.b.g(this.f72362j.apply(poll, S8), "The resultSelector returned a null value");
                                if (this.f72354b.get() != 0) {
                                    dVar.onNext(obj);
                                    io.reactivex.internal.util.b.e(this.f72354b, 1L);
                                    for (TRight tright : this.f72358f.values()) {
                                        S8.onNext(tright);
                                    }
                                } else {
                                    k(new MissingBackpressureException("Could not emit value due to lack of requests"), dVar, bVar);
                                    return;
                                }
                            } catch (Throwable th) {
                                k(th, dVar, bVar);
                                return;
                            }
                        } catch (Throwable th2) {
                            k(th2, dVar, bVar);
                            return;
                        }
                    } else if (num == f72350q) {
                        int i11 = this.f72365m;
                        this.f72365m = i11 + 1;
                        this.f72358f.put(Integer.valueOf(i11), poll);
                        try {
                            org.reactivestreams.c cVar3 = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72361i.apply(poll), "The rightEnd returned a null Publisher");
                            c cVar4 = new c(this, false, i11);
                            this.f72356d.b(cVar4);
                            cVar3.i(cVar4);
                            if (this.f72359g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            for (io.reactivex.processors.h<TRight> hVar2 : this.f72357e.values()) {
                                hVar2.onNext(poll);
                            }
                        } catch (Throwable th3) {
                            k(th3, dVar, bVar);
                            return;
                        }
                    } else if (num == f72351r) {
                        c cVar5 = (c) poll;
                        io.reactivex.processors.h<TRight> remove = this.f72357e.remove(Integer.valueOf(cVar5.f72370c));
                        this.f72356d.a(cVar5);
                        if (remove != null) {
                            remove.onComplete();
                        }
                    } else if (num == f72352s) {
                        c cVar6 = (c) poll;
                        this.f72358f.remove(Integer.valueOf(cVar6.f72370c));
                        this.f72356d.a(cVar6);
                    }
                }
            }
            bVar.clear();
        }

        void j(org.reactivestreams.d<?> dVar) {
            Throwable c10 = io.reactivex.internal.util.g.c(this.f72359g);
            for (io.reactivex.processors.h<TRight> hVar : this.f72357e.values()) {
                hVar.onError(c10);
            }
            this.f72357e.clear();
            this.f72358f.clear();
            dVar.onError(c10);
        }

        void k(Throwable th, org.reactivestreams.d<?> dVar, o7.o<?> oVar) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.internal.util.g.a(this.f72359g, th);
            oVar.clear();
            h();
            j(dVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72354b, j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(Throwable th);

        void b(boolean z9, Object obj);

        void c(Throwable th);

        void d(boolean z9, c cVar);

        void e(d dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes3.dex */
    public static final class c extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72367d = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f72368a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f72369b;

        /* renamed from: c  reason: collision with root package name */
        final int f72370c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b bVar, boolean z9, int i4) {
            this.f72368a = bVar;
            this.f72369b = z9;
            this.f72370c = i4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72368a.d(this.f72369b, this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72368a.c(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f72368a.d(this.f72369b, this);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes3.dex */
    static final class d extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f72371c = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f72372a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f72373b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(b bVar, boolean z9) {
            this.f72372a = bVar;
            this.f72373b = z9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72372a.e(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72372a.a(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            this.f72372a.b(this.f72373b, obj);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    public n1(io.reactivex.j<TLeft> jVar, org.reactivestreams.c<? extends TRight> cVar, n7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> oVar, n7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> oVar2, n7.c<? super TLeft, ? super io.reactivex.j<TRight>, ? extends R> cVar2) {
        super(jVar);
        this.f72344c = cVar;
        this.f72345d = oVar;
        this.f72346e = oVar2;
        this.f72347f = cVar2;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        a aVar = new a(dVar, this.f72345d, this.f72346e, this.f72347f);
        dVar.onSubscribe(aVar);
        d dVar2 = new d(aVar, true);
        aVar.f72356d.b(dVar2);
        d dVar3 = new d(aVar, false);
        aVar.f72356d.b(dVar3);
        this.f71538b.j6(dVar2);
        this.f72344c.i(dVar3);
    }
}
