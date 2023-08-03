package io.reactivex.internal.operators.observable;

import io.reactivex.internal.operators.observable.j1;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableJoin.java */
/* loaded from: classes3.dex */
public final class q1<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.observable.a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<? extends TRight> f74608b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f74609c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f74610d;

    /* renamed from: e  reason: collision with root package name */
    final n7.c<? super TLeft, ? super TRight, ? extends R> f74611e;

    /* compiled from: ObservableJoin.java */
    /* loaded from: classes3.dex */
    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.disposables.c, j1.b {

        /* renamed from: n  reason: collision with root package name */
        private static final long f74612n = -6071216598687999801L;

        /* renamed from: o  reason: collision with root package name */
        static final Integer f74613o = 1;

        /* renamed from: p  reason: collision with root package name */
        static final Integer f74614p = 2;

        /* renamed from: q  reason: collision with root package name */
        static final Integer f74615q = 3;

        /* renamed from: r  reason: collision with root package name */
        static final Integer f74616r = 4;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74617a;

        /* renamed from: g  reason: collision with root package name */
        final n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> f74623g;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> f74624h;

        /* renamed from: i  reason: collision with root package name */
        final n7.c<? super TLeft, ? super TRight, ? extends R> f74625i;

        /* renamed from: k  reason: collision with root package name */
        int f74627k;

        /* renamed from: l  reason: collision with root package name */
        int f74628l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f74629m;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f74619c = new io.reactivex.disposables.b();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f74618b = new io.reactivex.internal.queue.b<>(io.reactivex.z.bufferSize());

        /* renamed from: d  reason: collision with root package name */
        final Map<Integer, TLeft> f74620d = new LinkedHashMap();

        /* renamed from: e  reason: collision with root package name */
        final Map<Integer, TRight> f74621e = new LinkedHashMap();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<Throwable> f74622f = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f74626j = new AtomicInteger(2);

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, n7.c<? super TLeft, ? super TRight, ? extends R> cVar) {
            this.f74617a = g0Var;
            this.f74623g = oVar;
            this.f74624h = oVar2;
            this.f74625i = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void a(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f74622f, th)) {
                this.f74626j.decrementAndGet();
                i();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void b(boolean z9, Object obj) {
            synchronized (this) {
                this.f74618b.offer(z9 ? f74613o : f74614p, obj);
            }
            i();
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void c(Throwable th) {
            if (io.reactivex.internal.util.g.a(this.f74622f, th)) {
                i();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void d(boolean z9, j1.c cVar) {
            synchronized (this) {
                this.f74618b.offer(z9 ? f74615q : f74616r, cVar);
            }
            i();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74629m) {
                return;
            }
            this.f74629m = true;
            h();
            if (getAndIncrement() == 0) {
                this.f74618b.clear();
            }
        }

        @Override // io.reactivex.internal.operators.observable.j1.b
        public void e(j1.d dVar) {
            this.f74619c.c(dVar);
            this.f74626j.decrementAndGet();
            i();
        }

        void h() {
            this.f74619c.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void i() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<?> bVar = this.f74618b;
            io.reactivex.g0<? super R> g0Var = this.f74617a;
            int i4 = 1;
            while (!this.f74629m) {
                if (this.f74622f.get() != null) {
                    bVar.clear();
                    h();
                    j(g0Var);
                    return;
                }
                boolean z9 = this.f74626j.get() == 0;
                Integer num = (Integer) bVar.poll();
                boolean z10 = num == null;
                if (z9 && z10) {
                    this.f74620d.clear();
                    this.f74621e.clear();
                    this.f74619c.dispose();
                    g0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object poll = bVar.poll();
                    if (num == f74613o) {
                        int i10 = this.f74627k;
                        this.f74627k = i10 + 1;
                        this.f74620d.put(Integer.valueOf(i10), poll);
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74623g.apply(poll), "The leftEnd returned a null ObservableSource");
                            j1.c cVar = new j1.c(this, true, i10);
                            this.f74619c.b(cVar);
                            e0Var.subscribe(cVar);
                            if (this.f74622f.get() != null) {
                                bVar.clear();
                                h();
                                j(g0Var);
                                return;
                            }
                            for (TRight tright : this.f74621e.values()) {
                                try {
                                    g0Var.onNext((Object) io.reactivex.internal.functions.b.g(this.f74625i.apply(poll, tright), "The resultSelector returned a null value"));
                                } catch (Throwable th) {
                                    k(th, g0Var, bVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th2) {
                            k(th2, g0Var, bVar);
                            return;
                        }
                    } else if (num == f74614p) {
                        int i11 = this.f74628l;
                        this.f74628l = i11 + 1;
                        this.f74621e.put(Integer.valueOf(i11), poll);
                        try {
                            io.reactivex.e0 e0Var2 = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74624h.apply(poll), "The rightEnd returned a null ObservableSource");
                            j1.c cVar2 = new j1.c(this, false, i11);
                            this.f74619c.b(cVar2);
                            e0Var2.subscribe(cVar2);
                            if (this.f74622f.get() != null) {
                                bVar.clear();
                                h();
                                j(g0Var);
                                return;
                            }
                            for (TLeft tleft : this.f74620d.values()) {
                                try {
                                    g0Var.onNext((Object) io.reactivex.internal.functions.b.g(this.f74625i.apply(tleft, poll), "The resultSelector returned a null value"));
                                } catch (Throwable th3) {
                                    k(th3, g0Var, bVar);
                                    return;
                                }
                            }
                            continue;
                        } catch (Throwable th4) {
                            k(th4, g0Var, bVar);
                            return;
                        }
                    } else if (num == f74615q) {
                        j1.c cVar3 = (j1.c) poll;
                        this.f74620d.remove(Integer.valueOf(cVar3.f74295c));
                        this.f74619c.a(cVar3);
                    } else {
                        j1.c cVar4 = (j1.c) poll;
                        this.f74621e.remove(Integer.valueOf(cVar4.f74295c));
                        this.f74619c.a(cVar4);
                    }
                }
            }
            bVar.clear();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74629m;
        }

        void j(io.reactivex.g0<?> g0Var) {
            Throwable c10 = io.reactivex.internal.util.g.c(this.f74622f);
            this.f74620d.clear();
            this.f74621e.clear();
            g0Var.onError(c10);
        }

        void k(Throwable th, io.reactivex.g0<?> g0Var, io.reactivex.internal.queue.b<?> bVar) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.internal.util.g.a(this.f74622f, th);
            bVar.clear();
            h();
            j(g0Var);
        }
    }

    public q1(io.reactivex.e0<TLeft> e0Var, io.reactivex.e0<? extends TRight> e0Var2, n7.o<? super TLeft, ? extends io.reactivex.e0<TLeftEnd>> oVar, n7.o<? super TRight, ? extends io.reactivex.e0<TRightEnd>> oVar2, n7.c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(e0Var);
        this.f74608b = e0Var2;
        this.f74609c = oVar;
        this.f74610d = oVar2;
        this.f74611e = cVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        a aVar = new a(g0Var, this.f74609c, this.f74610d, this.f74611e);
        g0Var.onSubscribe(aVar);
        j1.d dVar = new j1.d(aVar, true);
        aVar.f74619c.b(dVar);
        j1.d dVar2 = new j1.d(aVar, false);
        aVar.f74619c.b(dVar2);
        this.f73827a.subscribe(dVar);
        this.f74608b.subscribe(dVar2);
    }
}
