package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ParallelReduceFull.java */
/* loaded from: classes3.dex */
public final class n<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f75264b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<T, T, T> f75265c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelReduceFull.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75266e = -7954444275102466525L;

        /* renamed from: a  reason: collision with root package name */
        final b<T> f75267a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<T, T, T> f75268b;

        /* renamed from: c  reason: collision with root package name */
        T f75269c;

        /* renamed from: d  reason: collision with root package name */
        boolean f75270d;

        a(b<T> bVar, n7.c<T, T, T> cVar) {
            this.f75267a = bVar;
            this.f75268b = cVar;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75270d) {
                return;
            }
            this.f75270d = true;
            this.f75267a.k(this.f75269c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75270d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75270d = true;
            this.f75267a.a(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75270d) {
                return;
            }
            T t10 = this.f75269c;
            if (t10 == null) {
                this.f75269c = t9;
                return;
            }
            try {
                this.f75269c = (T) io.reactivex.internal.functions.b.g(this.f75268b.apply(t10, t9), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                get().cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelReduceFull.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends DeferredScalarSubscription<T> {

        /* renamed from: r  reason: collision with root package name */
        private static final long f75271r = -5370107872170712765L;

        /* renamed from: m  reason: collision with root package name */
        final a<T>[] f75272m;

        /* renamed from: n  reason: collision with root package name */
        final n7.c<T, T, T> f75273n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicReference<c<T>> f75274o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicInteger f75275p;

        /* renamed from: q  reason: collision with root package name */
        final AtomicReference<Throwable> f75276q;

        b(org.reactivestreams.d<? super T> dVar, int i4, n7.c<T, T, T> cVar) {
            super(dVar);
            this.f75274o = new AtomicReference<>();
            this.f75275p = new AtomicInteger();
            this.f75276q = new AtomicReference<>();
            a<T>[] aVarArr = new a[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                aVarArr[i10] = new a<>(this, cVar);
            }
            this.f75272m = aVarArr;
            this.f75273n = cVar;
            this.f75275p.lazySet(i4);
        }

        void a(Throwable th) {
            if (this.f75276q.compareAndSet(null, th)) {
                cancel();
                this.f75876b.onError(th);
            } else if (th != this.f75276q.get()) {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            for (a<T> aVar : this.f75272m) {
                aVar.a();
            }
        }

        c<T> j(T t9) {
            c<T> cVar;
            int b10;
            while (true) {
                cVar = this.f75274o.get();
                if (cVar == null) {
                    cVar = new c<>();
                    if (!this.f75274o.compareAndSet(null, cVar)) {
                        continue;
                    }
                }
                b10 = cVar.b();
                if (b10 >= 0) {
                    break;
                }
                this.f75274o.compareAndSet(cVar, null);
            }
            if (b10 == 0) {
                cVar.f75278a = t9;
            } else {
                cVar.f75279b = t9;
            }
            if (cVar.a()) {
                this.f75274o.compareAndSet(cVar, null);
                return cVar;
            }
            return null;
        }

        void k(T t9) {
            if (t9 != null) {
                while (true) {
                    c<T> j4 = j(t9);
                    if (j4 == null) {
                        break;
                    }
                    try {
                        t9 = (T) io.reactivex.internal.functions.b.g(this.f75273n.apply(j4.f75278a, j4.f75279b), "The reducer returned a null value");
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        a(th);
                        return;
                    }
                }
            }
            if (this.f75275p.decrementAndGet() == 0) {
                c<T> cVar = this.f75274o.get();
                this.f75274o.lazySet(null);
                if (cVar != null) {
                    complete(cVar.f75278a);
                } else {
                    this.f75876b.onComplete();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelReduceFull.java */
    /* loaded from: classes3.dex */
    public static final class c<T> extends AtomicInteger {

        /* renamed from: d  reason: collision with root package name */
        private static final long f75277d = 473971317683868662L;

        /* renamed from: a  reason: collision with root package name */
        T f75278a;

        /* renamed from: b  reason: collision with root package name */
        T f75279b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f75280c = new AtomicInteger();

        c() {
        }

        boolean a() {
            return this.f75280c.incrementAndGet() == 2;
        }

        int b() {
            int i4;
            do {
                i4 = get();
                if (i4 >= 2) {
                    return -1;
                }
            } while (!compareAndSet(i4, i4 + 1));
            return i4;
        }
    }

    public n(io.reactivex.parallel.a<? extends T> aVar, n7.c<T, T, T> cVar) {
        this.f75264b = aVar;
        this.f75265c = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        b bVar = new b(dVar, this.f75264b.F(), this.f75265c);
        dVar.onSubscribe(bVar);
        this.f75264b.Q(bVar.f75272m);
    }
}
