package io.reactivex.rxjava3.parallel;

import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.jdk8.a0;
import io.reactivex.rxjava3.internal.jdk8.b0;
import io.reactivex.rxjava3.internal.jdk8.c0;
import io.reactivex.rxjava3.internal.jdk8.d0;
import io.reactivex.rxjava3.internal.operators.parallel.f;
import io.reactivex.rxjava3.internal.operators.parallel.h;
import io.reactivex.rxjava3.internal.operators.parallel.i;
import io.reactivex.rxjava3.internal.operators.parallel.j;
import io.reactivex.rxjava3.internal.operators.parallel.k;
import io.reactivex.rxjava3.internal.operators.parallel.l;
import io.reactivex.rxjava3.internal.operators.parallel.n;
import io.reactivex.rxjava3.internal.operators.parallel.p;
import io.reactivex.rxjava3.internal.operators.parallel.q;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.internal.util.ListAddBiConsumer;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collector;
import java.util.stream.Stream;
import org.reactivestreams.d;
import p7.e;
import p7.g;
import q7.o;
import q7.r;
import q7.s;

/* compiled from: ParallelFlowable.java */
/* loaded from: classes4.dex */
public abstract class a<T> {
    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public static <T> a<T> C(@e org.reactivestreams.c<? extends T> source) {
        return E(source, Runtime.getRuntime().availableProcessors(), m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public static <T> a<T> D(@e org.reactivestreams.c<? extends T> source, int parallelism) {
        return E(source, parallelism, m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public static <T> a<T> E(@e org.reactivestreams.c<? extends T> source, int parallelism, int prefetch) {
        Objects.requireNonNull(source, "source is null");
        io.reactivex.rxjava3.internal.functions.b.b(parallelism, "parallelism");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.V(new i(source, parallelism, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @SafeVarargs
    @g("none")
    @e
    public static <T> a<T> F(@e org.reactivestreams.c<T>... publishers) {
        Objects.requireNonNull(publishers, "publishers is null");
        if (publishers.length != 0) {
            return io.reactivex.rxjava3.plugins.a.V(new h(publishers));
        }
        throw new IllegalArgumentException("Zero publishers not supported");
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> A(@e o<? super T, ? extends Stream<? extends R>> mapper) {
        return B(mapper, m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> B(@e o<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.V(new b0(this, mapper, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <R> a<R> G(@e o<? super T, ? extends R> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.V(new k(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <R> a<R> H(@e o<? super T, ? extends R> mapper, @e ParallelFailureHandling errorHandler) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new l(this, mapper, errorHandler));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <R> a<R> I(@e o<? super T, ? extends R> mapper, @e q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new l(this, mapper, errorHandler));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <R> a<R> J(@e o<? super T, Optional<? extends R>> mapper) {
        Objects.requireNonNull(mapper, "mapper is null");
        return io.reactivex.rxjava3.plugins.a.V(new c0(this, mapper));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <R> a<R> K(@e o<? super T, Optional<? extends R>> mapper, @e ParallelFailureHandling errorHandler) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new d0(this, mapper, errorHandler));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <R> a<R> L(@e o<? super T, Optional<? extends R>> mapper, @e q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        Objects.requireNonNull(mapper, "mapper is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new d0(this, mapper, errorHandler));
    }

    @p7.c
    public abstract int M();

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final m<T> N(@e q7.c<T, T, T> reducer) {
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.P(new io.reactivex.rxjava3.internal.operators.parallel.o(this, reducer));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final <R> a<R> O(@e s<R> initialSupplier, @e q7.c<R, ? super T, R> reducer) {
        Objects.requireNonNull(initialSupplier, "initialSupplier is null");
        Objects.requireNonNull(reducer, "reducer is null");
        return io.reactivex.rxjava3.plugins.a.V(new n(this, initialSupplier, reducer));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("custom")
    @e
    public final a<T> P(@e o0 scheduler) {
        return Q(scheduler, m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("custom")
    @e
    public final a<T> Q(@e o0 scheduler, int prefetch) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.V(new p(this, scheduler, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final m<T> R() {
        return S(m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final m<T> S(int prefetch) {
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new j(this, prefetch, false));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final m<T> T() {
        return U(m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final m<T> U(int prefetch) {
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.P(new j(this, prefetch, true));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final m<T> V(@e Comparator<? super T> comparator) {
        return W(comparator, 16);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final m<T> W(@e Comparator<? super T> comparator, int capacityHint) {
        Objects.requireNonNull(comparator, "comparator is null");
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return io.reactivex.rxjava3.plugins.a.P(new q(O(io.reactivex.rxjava3.internal.functions.a.f((capacityHint / M()) + 1), ListAddBiConsumer.instance()).G(new io.reactivex.rxjava3.internal.util.p(comparator)), comparator));
    }

    @g("none")
    @p7.a(BackpressureKind.SPECIAL)
    public abstract void X(@e d<? super T>[] subscribers);

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <R> R Y(@e b<T, R> converter) {
        Objects.requireNonNull(converter, "converter is null");
        return converter.a(this);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final m<List<T>> Z(@e Comparator<? super T> comparator) {
        return a0(comparator, 16);
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final <A, R> m<R> a(@e Collector<T, A, R> collector) {
        Objects.requireNonNull(collector, "collector is null");
        return io.reactivex.rxjava3.plugins.a.P(new a0(this, collector));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final m<List<T>> a0(@e Comparator<? super T> comparator, int capacityHint) {
        Objects.requireNonNull(comparator, "comparator is null");
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return io.reactivex.rxjava3.plugins.a.P(O(io.reactivex.rxjava3.internal.functions.a.f((capacityHint / M()) + 1), ListAddBiConsumer.instance()).G(new io.reactivex.rxjava3.internal.util.p(comparator)).N(new io.reactivex.rxjava3.internal.util.j(comparator)));
    }

    @p7.c
    @p7.a(BackpressureKind.UNBOUNDED_IN)
    @g("none")
    @e
    public final <C> a<C> b(@e s<? extends C> collectionSupplier, @e q7.b<? super C, ? super T> collector) {
        Objects.requireNonNull(collectionSupplier, "collectionSupplier is null");
        Objects.requireNonNull(collector, "collector is null");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.a(this, collectionSupplier, collector));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b0(@e d<?>[] subscribers) {
        Objects.requireNonNull(subscribers, "subscribers is null");
        int M = M();
        if (subscribers.length != M) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parallelism = " + M + ", subscribers = " + subscribers.length);
            for (d<?> dVar : subscribers) {
                EmptySubscription.error(illegalArgumentException, dVar);
            }
            return false;
        }
        return true;
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final <U> a<U> c(@e c<T, U> composer) {
        Objects.requireNonNull(composer, "composer is null");
        return io.reactivex.rxjava3.plugins.a.V(composer.a(this));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> d(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return e(mapper, 2);
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> e(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.b(this, mapper, prefetch, ErrorMode.IMMEDIATE));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> f(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int prefetch, boolean tillTheEnd) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.b(this, mapper, prefetch, tillTheEnd ? ErrorMode.END : ErrorMode.BOUNDARY));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> g(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean tillTheEnd) {
        return f(mapper, 2, tillTheEnd);
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> h(@e q7.g<? super T> onAfterNext) {
        Objects.requireNonNull(onAfterNext, "onAfterNext is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, h4, onAfterNext, h10, aVar, aVar, io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76186g, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> i(@e q7.a onAfterTerminate) {
        Objects.requireNonNull(onAfterTerminate, "onAfterTerminate is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, h4, h10, h11, aVar, onAfterTerminate, io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76186g, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> j(@e q7.a onCancel) {
        Objects.requireNonNull(onCancel, "onCancel is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, h4, h10, h11, aVar, aVar, io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76186g, onCancel));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> k(@e q7.a onComplete) {
        Objects.requireNonNull(onComplete, "onComplete is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, h4, h10, h11, onComplete, aVar, io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76186g, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> l(@e q7.g<? super Throwable> onError) {
        Objects.requireNonNull(onError, "onError is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, h4, h10, onError, aVar, aVar, io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76186g, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> m(@e q7.g<? super T> onNext) {
        Objects.requireNonNull(onNext, "onNext is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, onNext, h4, h10, aVar, aVar, io.reactivex.rxjava3.internal.functions.a.h(), io.reactivex.rxjava3.internal.functions.a.f76186g, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> n(@e q7.g<? super T> onNext, @e ParallelFailureHandling errorHandler) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.c(this, onNext, errorHandler));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> o(@e q7.g<? super T> onNext, @e q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        Objects.requireNonNull(onNext, "onNext is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.c(this, onNext, errorHandler));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> p(@e q7.q onRequest) {
        Objects.requireNonNull(onRequest, "onRequest is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, h4, h10, h11, aVar, aVar, io.reactivex.rxjava3.internal.functions.a.h(), onRequest, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> q(@e q7.g<? super org.reactivestreams.e> onSubscribe) {
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        q7.g h4 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h10 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.g h11 = io.reactivex.rxjava3.internal.functions.a.h();
        q7.a aVar = io.reactivex.rxjava3.internal.functions.a.f76182c;
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.m(this, h4, h10, h11, aVar, aVar, onSubscribe, io.reactivex.rxjava3.internal.functions.a.f76186g, aVar));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> r(@e r<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.d(this, predicate));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> s(@e r<? super T> predicate, @e ParallelFailureHandling errorHandler) {
        Objects.requireNonNull(predicate, "predicate is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.e(this, predicate, errorHandler));
    }

    @p7.c
    @p7.a(BackpressureKind.PASS_THROUGH)
    @g("none")
    @e
    public final a<T> t(@e r<? super T> predicate, @e q7.c<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        Objects.requireNonNull(predicate, "predicate is null");
        Objects.requireNonNull(errorHandler, "errorHandler is null");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.e(this, predicate, errorHandler));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> u(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        return x(mapper, false, m.V(), m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> v(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean delayError) {
        return x(mapper, delayError, m.V(), m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> w(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean delayError, int maxConcurrency) {
        return x(mapper, delayError, maxConcurrency, m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <R> a<R> x(@e o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, boolean delayError, int maxConcurrency, int prefetch) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(maxConcurrency, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.b.b(prefetch, "prefetch");
        return io.reactivex.rxjava3.plugins.a.V(new f(this, mapper, delayError, maxConcurrency, prefetch));
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <U> a<U> y(@e o<? super T, ? extends Iterable<? extends U>> mapper) {
        return z(mapper, m.V());
    }

    @p7.c
    @p7.a(BackpressureKind.FULL)
    @g("none")
    @e
    public final <U> a<U> z(@e o<? super T, ? extends Iterable<? extends U>> mapper, int bufferSize) {
        Objects.requireNonNull(mapper, "mapper is null");
        io.reactivex.rxjava3.internal.functions.b.b(bufferSize, "bufferSize");
        return io.reactivex.rxjava3.plugins.a.V(new io.reactivex.rxjava3.internal.operators.parallel.g(this, mapper, bufferSize));
    }
}
