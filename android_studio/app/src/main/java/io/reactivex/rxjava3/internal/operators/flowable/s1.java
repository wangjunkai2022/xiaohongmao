package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableGroupJoin.java */
/* loaded from: classes4.dex */
public final class s1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<TLeft, R> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends TRight> f77896c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f77897d;

    /* renamed from: e  reason: collision with root package name */
    final q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f77898e;

    /* renamed from: f  reason: collision with root package name */
    final q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.m<TRight>, ? extends R> f77899f;

    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes4.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements org.reactivestreams.e, b {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77900o = -6071216598687999801L;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f77901p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f77902q = 2;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f77903r = 3;

        /* renamed from: s  reason: collision with root package name */
        static final Integer f77904s = 4;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f77905a;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> f77912h;

        /* renamed from: i  reason: collision with root package name */
        final q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> f77913i;

        /* renamed from: j  reason: collision with root package name */
        final q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.m<TRight>, ? extends R> f77914j;

        /* renamed from: l  reason: collision with root package name */
        int f77916l;

        /* renamed from: m  reason: collision with root package name */
        int f77917m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f77918n;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f77906b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f77908d = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f77907c = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.m.V());

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, io.reactivex.rxjava3.processors.h<TRight>> f77909e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final Map<Integer, TRight> f77910f = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<Throwable> f77911g = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        final AtomicInteger f77915k = new AtomicInteger(2);

        a(org.reactivestreams.d<? super R> actual, q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.m<TRight>, ? extends R> resultSelector) {
            this.f77905a = actual;
            this.f77912h = leftEnd;
            this.f77913i = rightEnd;
            this.f77914j = resultSelector;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void a(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f77911g, ex)) {
                this.f77915k.decrementAndGet();
                i();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void b(boolean isLeft, Object o9) {
            synchronized (this) {
                this.f77907c.offer(isLeft ? f77901p : f77902q, o9);
            }
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void c(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f77911g, ex)) {
                i();
            } else {
                io.reactivex.rxjava3.plugins.a.Y(ex);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77918n) {
                return;
            }
            this.f77918n = true;
            h();
            if (getAndIncrement() == 0) {
                this.f77907c.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void d(d sender) {
            this.f77908d.c(sender);
            this.f77915k.decrementAndGet();
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.s1.b
        public void e(boolean isLeft, c index) {
            synchronized (this) {
                this.f77907c.offer(isLeft ? f77903r : f77904s, index);
            }
            i();
        }

        void h() {
            this.f77908d.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f77907c;
            org.reactivestreams.d<? super R> dVar = this.f77905a;
            int i4 = 1;
            while (!this.f77918n) {
                if (this.f77911g.get() != null) {
                    bVar.clear();
                    h();
                    j(dVar);
                    return;
                }
                boolean z9 = this.f77915k.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z10 = num == null;
                if (z9 && z10) {
                    for (io.reactivex.rxjava3.processors.h<TRight> hVar : this.f77909e.values()) {
                        hVar.onComplete();
                    }
                    this.f77909e.clear();
                    this.f77910f.clear();
                    this.f77908d.dispose();
                    dVar.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f77901p) {
                        io.reactivex.rxjava3.processors.h<TRight> m9 = io.reactivex.rxjava3.processors.h.m9();
                        int i10 = this.f77916l;
                        this.f77916l = i10 + 1;
                        this.f77909e.put(Integer.valueOf(i10), m9);
                        try {
                            org.reactivestreams.c apply = this.f77912h.apply(poll);
                            Objects.requireNonNull(apply, "The leftEnd returned a null Publisher");
                            org.reactivestreams.c cVar = apply;
                            c cVar2 = new c(this, true, i10);
                            this.f77908d.b(cVar2);
                            cVar.i(cVar2);
                            if (this.f77911g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            try {
                                Object obj = (R) this.f77914j.apply(poll, m9);
                                Objects.requireNonNull(obj, "The resultSelector returned a null value");
                                if (this.f77906b.get() != 0) {
                                    dVar.onNext(obj);
                                    io.reactivex.rxjava3.internal.util.b.e(this.f77906b, 1L);
                                    for (TRight tright : this.f77910f.values()) {
                                        m9.onNext(tright);
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
                    } else if (num == f77902q) {
                        int i11 = this.f77917m;
                        this.f77917m = i11 + 1;
                        this.f77910f.put(Integer.valueOf(i11), poll);
                        try {
                            org.reactivestreams.c apply2 = this.f77913i.apply(poll);
                            Objects.requireNonNull(apply2, "The rightEnd returned a null Publisher");
                            org.reactivestreams.c cVar3 = apply2;
                            c cVar4 = new c(this, false, i11);
                            this.f77908d.b(cVar4);
                            cVar3.i(cVar4);
                            if (this.f77911g.get() != null) {
                                bVar.clear();
                                h();
                                j(dVar);
                                return;
                            }
                            for (io.reactivex.rxjava3.processors.h<TRight> hVar2 : this.f77909e.values()) {
                                hVar2.onNext(poll);
                            }
                        } catch (Throwable th3) {
                            k(th3, dVar, bVar);
                            return;
                        }
                    } else if (num == f77903r) {
                        c cVar5 = (c) poll;
                        io.reactivex.rxjava3.processors.h<TRight> remove = this.f77909e.remove(Integer.valueOf(cVar5.f77922c));
                        this.f77908d.a(cVar5);
                        if (remove != null) {
                            remove.onComplete();
                        }
                    } else {
                        c cVar6 = (c) poll;
                        this.f77910f.remove(Integer.valueOf(cVar6.f77922c));
                        this.f77908d.a(cVar6);
                    }
                }
            }
            bVar.clear();
        }

        void j(org.reactivestreams.d<?> a10) {
            Throwable f10 = io.reactivex.rxjava3.internal.util.g.f(this.f77911g);
            for (io.reactivex.rxjava3.processors.h<TRight> hVar : this.f77909e.values()) {
                hVar.onError(f10);
            }
            this.f77909e.clear();
            this.f77910f.clear();
            a10.onError(f10);
        }

        void k(Throwable exc, org.reactivestreams.d<?> a10, io.reactivex.rxjava3.internal.fuseable.q<?> q9) {
            io.reactivex.rxjava3.exceptions.a.b(exc);
            io.reactivex.rxjava3.internal.util.g.a(this.f77911g, exc);
            q9.clear();
            h();
            j(a10);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77906b, n9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(Throwable ex);

        void b(boolean isLeft, Object o9);

        void c(Throwable ex);

        void d(d sender);

        void e(boolean isLeft, c index);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes4.dex */
    public static final class c extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f77919d = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f77920a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f77921b;

        /* renamed from: c  reason: collision with root package name */
        final int f77922c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b parent, boolean isLeft, int index) {
            this.f77920a = parent;
            this.f77921b = isLeft;
            this.f77922c = index;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77920a.e(this.f77921b, this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77920a.c(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            if (SubscriptionHelper.cancel(this)) {
                this.f77920a.e(this.f77921b, this);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    /* compiled from: FlowableGroupJoin.java */
    /* loaded from: classes4.dex */
    static final class d extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f77923c = 1883890389173668373L;

        /* renamed from: a  reason: collision with root package name */
        final b f77924a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f77925b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(b parent, boolean isLeft) {
            this.f77924a = parent;
            this.f77925b = isLeft;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77924a.d(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77924a.a(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            this.f77924a.b(this.f77925b, t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    public s1(io.reactivex.rxjava3.core.m<TLeft> source, org.reactivestreams.c<? extends TRight> other, q7.o<? super TLeft, ? extends org.reactivestreams.c<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends org.reactivestreams.c<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super io.reactivex.rxjava3.core.m<TRight>, ? extends R> resultSelector) {
        super(source);
        this.f77896c = other;
        this.f77897d = leftEnd;
        this.f77898e = rightEnd;
        this.f77899f = resultSelector;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        a aVar = new a(s9, this.f77897d, this.f77898e, this.f77899f);
        s9.onSubscribe(aVar);
        d dVar = new d(aVar, true);
        aVar.f77908d.b(dVar);
        d dVar2 = new d(aVar, false);
        aVar.f77908d.b(dVar2);
        this.f76811b.G6(dVar);
        this.f77896c.i(dVar2);
    }
}
