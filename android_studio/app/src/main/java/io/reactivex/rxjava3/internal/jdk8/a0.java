package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;

/* compiled from: ParallelCollector.java */
/* loaded from: classes4.dex */
public final class a0<T, A, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<? extends T> f76234b;

    /* renamed from: c  reason: collision with root package name */
    final Collector<T, A, R> f76235c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelCollector.java */
    /* loaded from: classes4.dex */
    public static final class a<T, A, R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f76236f = -7954444275102466525L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, A, R> f76237a;

        /* renamed from: b  reason: collision with root package name */
        final BiConsumer<A, T> f76238b;

        /* renamed from: c  reason: collision with root package name */
        final BinaryOperator<A> f76239c;

        /* renamed from: d  reason: collision with root package name */
        A f76240d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76241e;

        a(b<T, A, R> parent, A container, BiConsumer<A, T> accumulator, BinaryOperator<A> combiner) {
            this.f76237a = parent;
            this.f76238b = accumulator;
            this.f76239c = combiner;
            this.f76240d = container;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76241e) {
                return;
            }
            A a10 = this.f76240d;
            this.f76240d = null;
            this.f76241e = true;
            this.f76237a.k(a10, this.f76239c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76241e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76240d = null;
            this.f76241e = true;
            this.f76237a.a(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f76241e) {
                return;
            }
            try {
                this.f76238b.accept(this.f76240d, t9);
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
    /* compiled from: ParallelCollector.java */
    /* loaded from: classes4.dex */
    public static final class b<T, A, R> extends DeferredScalarSubscription<R> {

        /* renamed from: r  reason: collision with root package name */
        private static final long f76242r = -5370107872170712765L;

        /* renamed from: m  reason: collision with root package name */
        final a<T, A, R>[] f76243m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicReference<c<A>> f76244n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicInteger f76245o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicThrowable f76246p;

        /* renamed from: q  reason: collision with root package name */
        final Function<A, R> f76247q;

        b(org.reactivestreams.d<? super R> subscriber, int n9, Collector<T, A, R> collector) {
            super(subscriber);
            this.f76244n = new AtomicReference<>();
            this.f76245o = new AtomicInteger();
            this.f76246p = new AtomicThrowable();
            this.f76247q = collector.finisher();
            a<T, A, R>[] aVarArr = new a[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                aVarArr[i4] = new a<>(this, collector.supplier().get(), collector.accumulator(), collector.combiner());
            }
            this.f76243m = aVarArr;
            this.f76245o.lazySet(n9);
        }

        void a(Throwable ex) {
            if (this.f76246p.compareAndSet(null, ex)) {
                cancel();
                this.f81291b.onError(ex);
            } else if (ex != this.f76246p.get()) {
                io.reactivex.rxjava3.plugins.a.Y(ex);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            for (a<T, A, R> aVar : this.f76243m) {
                aVar.a();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        c<A> j(A value) {
            c<A> cVar;
            int b10;
            while (true) {
                cVar = this.f76244n.get();
                if (cVar == null) {
                    cVar = new c<>();
                    if (!this.f76244n.compareAndSet(null, cVar)) {
                        continue;
                    }
                }
                b10 = cVar.b();
                if (b10 >= 0) {
                    break;
                }
                this.f76244n.compareAndSet(cVar, null);
            }
            if (b10 == 0) {
                cVar.f76249a = value;
            } else {
                cVar.f76250b = value;
            }
            if (cVar.a()) {
                this.f76244n.compareAndSet(cVar, null);
                return cVar;
            }
            return null;
        }

        void k(A value, BinaryOperator<A> combiner) {
            while (true) {
                c<A> j4 = j(value);
                if (j4 == null) {
                    break;
                }
                try {
                    value = (A) combiner.apply(j4.f76249a, j4.f76250b);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    a(th);
                    return;
                }
            }
            if (this.f76245o.decrementAndGet() == 0) {
                c<A> cVar = this.f76244n.get();
                this.f76244n.lazySet(null);
                try {
                    R apply = this.f76247q.apply(cVar.f76249a);
                    Objects.requireNonNull(apply, "The finisher returned a null value");
                    complete(apply);
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    a(th2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelCollector.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicInteger {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76248d = 473971317683868662L;

        /* renamed from: a  reason: collision with root package name */
        T f76249a;

        /* renamed from: b  reason: collision with root package name */
        T f76250b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f76251c = new AtomicInteger();

        c() {
        }

        boolean a() {
            return this.f76251c.incrementAndGet() == 2;
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

    public a0(io.reactivex.rxjava3.parallel.a<? extends T> source, Collector<T, A, R> collector) {
        this.f76234b = source;
        this.f76235c = collector;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        try {
            b bVar = new b(s9, this.f76234b.M(), this.f76235c);
            s9.onSubscribe(bVar);
            this.f76234b.X(bVar.f76243m);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
