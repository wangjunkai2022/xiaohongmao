package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.operators.observable.n1;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableJoin.java */
/* loaded from: classes4.dex */
public final class u1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.rxjava3.internal.operators.observable.a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends TRight> f80185b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> f80186c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> f80187d;

    /* renamed from: e  reason: collision with root package name */
    final q7.c<? super TLeft, ? super TRight, ? extends R> f80188e;

    /* compiled from: ObservableJoin.java */
    /* loaded from: classes4.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f, n1.b {

        /* renamed from: n  reason: collision with root package name */
        private static final long f80189n = -6071216598687999801L;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f80190o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f80191p = 2;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f80192q = 3;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f80193r = 4;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f80194a;

        /* renamed from: g  reason: collision with root package name */
        final q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> f80200g;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> f80201h;

        /* renamed from: i  reason: collision with root package name */
        final q7.c<? super TLeft, ? super TRight, ? extends R> f80202i;

        /* renamed from: k  reason: collision with root package name */
        int f80204k;

        /* renamed from: l  reason: collision with root package name */
        int f80205l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f80206m;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f80196c = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f80195b = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.g0.R());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, TLeft> f80197d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f80198e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f80199f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f80203j = new AtomicInteger(2);

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super TRight, ? extends R> resultSelector) {
            this.f80194a = actual;
            this.f80200g = leftEnd;
            this.f80201h = rightEnd;
            this.f80202i = resultSelector;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void a(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f80199f, ex)) {
                this.f80203j.decrementAndGet();
                i();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void b(boolean isLeft, Object o9) {
            synchronized (this) {
                this.f80195b.offer(isLeft ? f80190o : f80191p, o9);
            }
            i();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void c(Throwable ex) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f80199f, ex)) {
                i();
            } else {
                io.reactivex.rxjava3.plugins.a.Y(ex);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void d(n1.d sender) {
            this.f80196c.c(sender);
            this.f80203j.decrementAndGet();
            i();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f80206m) {
                return;
            }
            this.f80206m = true;
            h();
            if (getAndIncrement() == 0) {
                this.f80195b.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.n1.b
        public void e(boolean isLeft, n1.c index) {
            synchronized (this) {
                this.f80195b.offer(isLeft ? f80192q : f80193r, index);
            }
            i();
        }

        void h() {
            this.f80196c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.queue.b<?> bVar = this.f80195b;
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f80194a;
            int i4 = 1;
            while (!this.f80206m) {
                if (this.f80199f.get() != null) {
                    bVar.clear();
                    h();
                    j(n0Var);
                    return;
                }
                boolean z9 = this.f80203j.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z10 = num == null;
                if (z9 && z10) {
                    this.f80197d.clear();
                    this.f80198e.clear();
                    this.f80196c.dispose();
                    n0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f80190o) {
                        int i10 = this.f80204k;
                        this.f80204k = i10 + 1;
                        this.f80197d.put(Integer.valueOf(i10), poll);
                        try {
                            io.reactivex.rxjava3.core.l0 apply = this.f80200g.apply(poll);
                            Objects.requireNonNull(apply, "The leftEnd returned a null ObservableSource");
                            io.reactivex.rxjava3.core.l0 l0Var = apply;
                            n1.c cVar = new n1.c(this, true, i10);
                            this.f80196c.b(cVar);
                            l0Var.a(cVar);
                            if (this.f80199f.get() != null) {
                                bVar.clear();
                                h();
                                j(n0Var);
                                return;
                            }
                            for (TRight tright : this.f80198e.values()) {
                                try {
                                    Object obj = (R) this.f80202i.apply(poll, tright);
                                    Objects.requireNonNull(obj, "The resultSelector returned a null value");
                                    n0Var.onNext(obj);
                                } catch (Throwable th) {
                                    k(th, n0Var, bVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th2) {
                            k(th2, n0Var, bVar);
                            return;
                        }
                    } else if (num == f80191p) {
                        int i11 = this.f80205l;
                        this.f80205l = i11 + 1;
                        this.f80198e.put(Integer.valueOf(i11), poll);
                        try {
                            io.reactivex.rxjava3.core.l0 apply2 = this.f80201h.apply(poll);
                            Objects.requireNonNull(apply2, "The rightEnd returned a null ObservableSource");
                            io.reactivex.rxjava3.core.l0 l0Var2 = apply2;
                            n1.c cVar2 = new n1.c(this, false, i11);
                            this.f80196c.b(cVar2);
                            l0Var2.a(cVar2);
                            if (this.f80199f.get() != null) {
                                bVar.clear();
                                h();
                                j(n0Var);
                                return;
                            }
                            for (TLeft tleft : this.f80197d.values()) {
                                try {
                                    Object obj2 = (R) this.f80202i.apply(tleft, poll);
                                    Objects.requireNonNull(obj2, "The resultSelector returned a null value");
                                    n0Var.onNext(obj2);
                                } catch (Throwable th3) {
                                    k(th3, n0Var, bVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th4) {
                            k(th4, n0Var, bVar);
                            return;
                        }
                    } else if (num == f80192q) {
                        n1.c cVar3 = (n1.c) poll;
                        this.f80197d.remove(Integer.valueOf(cVar3.f79829c));
                        this.f80196c.a(cVar3);
                    } else {
                        n1.c cVar4 = (n1.c) poll;
                        this.f80198e.remove(Integer.valueOf(cVar4.f79829c));
                        this.f80196c.a(cVar4);
                    }
                }
            }
            bVar.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80206m;
        }

        void j(io.reactivex.rxjava3.core.n0<?> a10) {
            Throwable f10 = io.reactivex.rxjava3.internal.util.g.f(this.f80199f);
            this.f80197d.clear();
            this.f80198e.clear();
            a10.onError(f10);
        }

        void k(Throwable exc, io.reactivex.rxjava3.core.n0<?> a10, io.reactivex.rxjava3.internal.queue.b<?> q9) {
            io.reactivex.rxjava3.exceptions.a.b(exc);
            io.reactivex.rxjava3.internal.util.g.a(this.f80199f, exc);
            q9.clear();
            h();
            j(a10);
        }
    }

    public u1(io.reactivex.rxjava3.core.l0<TLeft> source, io.reactivex.rxjava3.core.l0<? extends TRight> other, q7.o<? super TLeft, ? extends io.reactivex.rxjava3.core.l0<TLeftEnd>> leftEnd, q7.o<? super TRight, ? extends io.reactivex.rxjava3.core.l0<TRightEnd>> rightEnd, q7.c<? super TLeft, ? super TRight, ? extends R> resultSelector) {
        super(source);
        this.f80185b = other;
        this.f80186c = leftEnd;
        this.f80187d = rightEnd;
        this.f80188e = resultSelector;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        a aVar = new a(observer, this.f80186c, this.f80187d, this.f80188e);
        observer.onSubscribe(aVar);
        n1.d dVar = new n1.d(aVar, true);
        aVar.f80196c.b(dVar);
        n1.d dVar2 = new n1.d(aVar, false);
        aVar.f80196c.b(dVar2);
        this.f79141a.a(dVar);
        this.f80185b.a(dVar2);
    }
}
