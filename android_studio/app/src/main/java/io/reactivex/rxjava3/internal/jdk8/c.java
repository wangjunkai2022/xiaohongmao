package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;

/* compiled from: FlowableCollectWithCollector.java */
/* loaded from: classes4.dex */
public final class c<T, A, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f76258b;

    /* renamed from: c  reason: collision with root package name */
    final Collector<T, A, R> f76259c;

    /* compiled from: FlowableCollectWithCollector.java */
    /* loaded from: classes4.dex */
    static final class a<T, A, R> extends DeferredScalarSubscription<R> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: r  reason: collision with root package name */
        private static final long f76260r = -229544830565448758L;

        /* renamed from: m  reason: collision with root package name */
        final BiConsumer<A, T> f76261m;

        /* renamed from: n  reason: collision with root package name */
        final Function<A, R> f76262n;

        /* renamed from: o  reason: collision with root package name */
        org.reactivestreams.e f76263o;

        /* renamed from: p  reason: collision with root package name */
        boolean f76264p;

        /* renamed from: q  reason: collision with root package name */
        A f76265q;

        a(org.reactivestreams.d<? super R> downstream, A container, BiConsumer<A, T> accumulator, Function<A, R> finisher) {
            super(downstream);
            this.f76265q = container;
            this.f76261m = accumulator;
            this.f76262n = finisher;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f76263o.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76264p) {
                return;
            }
            this.f76264p = true;
            this.f76263o = SubscriptionHelper.CANCELLED;
            A a10 = this.f76265q;
            this.f76265q = null;
            try {
                R apply = this.f76262n.apply(a10);
                Objects.requireNonNull(apply, "The finisher returned a null value");
                complete(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81291b.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76264p) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76264p = true;
            this.f76263o = SubscriptionHelper.CANCELLED;
            this.f76265q = null;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f76264p) {
                return;
            }
            try {
                this.f76261m.accept(this.f76265q, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76263o.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(@p7.e org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76263o, s9)) {
                this.f76263o = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public c(io.reactivex.rxjava3.core.m<T> source, Collector<T, A, R> collector) {
        this.f76258b = source;
        this.f76259c = collector;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(@p7.e org.reactivestreams.d<? super R> s9) {
        try {
            this.f76258b.G6(new a(s9, this.f76259c.supplier().get(), this.f76259c.accumulator(), this.f76259c.finisher()));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
