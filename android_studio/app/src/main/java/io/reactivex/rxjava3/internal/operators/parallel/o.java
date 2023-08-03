package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ParallelReduceFull.java */
/* loaded from: classes4.dex */
public final class o<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<? extends T> f80644b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<T, T, T> f80645c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelReduceFull.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<org.reactivestreams.e> implements r<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80646e = -7954444275102466525L;

        /* renamed from: a  reason: collision with root package name */
        final b<T> f80647a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<T, T, T> f80648b;

        /* renamed from: c  reason: collision with root package name */
        T f80649c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80650d;

        a(b<T> parent, q7.c<T, T, T> reducer) {
            this.f80647a = parent;
            this.f80648b = reducer;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80650d) {
                return;
            }
            this.f80650d = true;
            this.f80647a.k(this.f80649c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80650d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80650d = true;
            this.f80647a.a(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80650d) {
                return;
            }
            T t10 = this.f80649c;
            if (t10 == null) {
                this.f80649c = t9;
                return;
            }
            try {
                T apply = this.f80648b.apply(t10, t9);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.f80649c = apply;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                get().cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelReduceFull.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends DeferredScalarSubscription<T> {

        /* renamed from: r  reason: collision with root package name */
        private static final long f80651r = -5370107872170712765L;

        /* renamed from: m  reason: collision with root package name */
        final a<T>[] f80652m;

        /* renamed from: n  reason: collision with root package name */
        final q7.c<T, T, T> f80653n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicReference<c<T>> f80654o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicInteger f80655p;

        /* renamed from: q  reason: collision with root package name */
        final AtomicThrowable f80656q;

        b(org.reactivestreams.d<? super T> subscriber, int n9, q7.c<T, T, T> reducer) {
            super(subscriber);
            this.f80654o = new AtomicReference<>();
            this.f80655p = new AtomicInteger();
            this.f80656q = new AtomicThrowable();
            a<T>[] aVarArr = new a[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                aVarArr[i4] = new a<>(this, reducer);
            }
            this.f80652m = aVarArr;
            this.f80653n = reducer;
            this.f80655p.lazySet(n9);
        }

        void a(Throwable ex) {
            if (this.f80656q.compareAndSet(null, ex)) {
                cancel();
                this.f81291b.onError(ex);
            } else if (ex != this.f80656q.get()) {
                io.reactivex.rxjava3.plugins.a.Y(ex);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            for (a<T> aVar : this.f80652m) {
                aVar.a();
            }
        }

        c<T> j(T value) {
            c<T> cVar;
            int b10;
            while (true) {
                cVar = this.f80654o.get();
                if (cVar == null) {
                    cVar = new c<>();
                    if (!this.f80654o.compareAndSet(null, cVar)) {
                        continue;
                    }
                }
                b10 = cVar.b();
                if (b10 >= 0) {
                    break;
                }
                this.f80654o.compareAndSet(cVar, null);
            }
            if (b10 == 0) {
                cVar.f80658a = value;
            } else {
                cVar.f80659b = value;
            }
            if (cVar.a()) {
                this.f80654o.compareAndSet(cVar, null);
                return cVar;
            }
            return null;
        }

        void k(T value) {
            if (value != null) {
                while (true) {
                    c<T> j4 = j(value);
                    if (j4 == null) {
                        break;
                    }
                    try {
                        value = this.f80653n.apply(j4.f80658a, j4.f80659b);
                        Objects.requireNonNull(value, "The reducer returned a null value");
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        a(th);
                        return;
                    }
                }
            }
            if (this.f80655p.decrementAndGet() == 0) {
                c<T> cVar = this.f80654o.get();
                this.f80654o.lazySet(null);
                if (cVar != null) {
                    complete(cVar.f80658a);
                } else {
                    this.f81291b.onComplete();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelReduceFull.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicInteger {

        /* renamed from: d  reason: collision with root package name */
        private static final long f80657d = 473971317683868662L;

        /* renamed from: a  reason: collision with root package name */
        T f80658a;

        /* renamed from: b  reason: collision with root package name */
        T f80659b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f80660c = new AtomicInteger();

        c() {
        }

        boolean a() {
            return this.f80660c.incrementAndGet() == 2;
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

    public o(io.reactivex.rxjava3.parallel.a<? extends T> source, q7.c<T, T, T> reducer) {
        this.f80644b = source;
        this.f80645c = reducer;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        b bVar = new b(s9, this.f80644b.M(), this.f80645c);
        s9.onSubscribe(bVar);
        this.f80644b.X(bVar.f80652m);
    }
}
