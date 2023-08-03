package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;

/* compiled from: FlowableCollectWithCollectorSingle.java */
/* loaded from: classes4.dex */
public final class d<T, A, R> extends p0<R> implements io.reactivex.rxjava3.internal.fuseable.d<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f76276a;

    /* renamed from: b  reason: collision with root package name */
    final Collector<T, A, R> f76277b;

    /* compiled from: FlowableCollectWithCollectorSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, A, R> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final s0<? super R> f76278a;

        /* renamed from: b  reason: collision with root package name */
        final BiConsumer<A, T> f76279b;

        /* renamed from: c  reason: collision with root package name */
        final Function<A, R> f76280c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f76281d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76282e;

        /* renamed from: f  reason: collision with root package name */
        A f76283f;

        a(s0<? super R> downstream, A container, BiConsumer<A, T> accumulator, Function<A, R> finisher) {
            this.f76278a = downstream;
            this.f76283f = container;
            this.f76279b = accumulator;
            this.f76280c = finisher;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76281d.cancel();
            this.f76281d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76281d == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76282e) {
                return;
            }
            this.f76282e = true;
            this.f76281d = SubscriptionHelper.CANCELLED;
            A a10 = this.f76283f;
            this.f76283f = null;
            try {
                R apply = this.f76280c.apply(a10);
                Objects.requireNonNull(apply, "The finisher returned a null value");
                this.f76278a.onSuccess(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76278a.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76282e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76282e = true;
            this.f76281d = SubscriptionHelper.CANCELLED;
            this.f76283f = null;
            this.f76278a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f76282e) {
                return;
            }
            try {
                this.f76279b.accept(this.f76283f, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76281d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(@p7.e org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76281d, s9)) {
                this.f76281d = s9;
                this.f76278a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public d(io.reactivex.rxjava3.core.m<T> source, Collector<T, A, R> collector) {
        this.f76276a = source;
        this.f76277b = collector;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(@p7.e s0<? super R> observer) {
        try {
            this.f76276a.G6(new a(observer, this.f76277b.supplier().get(), this.f76277b.accumulator(), this.f76277b.finisher()));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<R> c() {
        return new c(this.f76276a, this.f76277b);
    }
}
