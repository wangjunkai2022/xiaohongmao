package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableWithLatestFrom.java */
/* loaded from: classes4.dex */
public final class a5<T, U, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super T, ? super U, ? extends R> f76853c;

    /* renamed from: d  reason: collision with root package name */
    final org.reactivestreams.c<? extends U> f76854d;

    /* compiled from: FlowableWithLatestFrom.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.r<U> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T, U, R> f76855a;

        a(b<T, U, R> wlf) {
            this.f76855a = wlf;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76855a.a(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(U t9) {
            this.f76855a.lazySet(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (this.f76855a.b(s9)) {
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    /* compiled from: FlowableWithLatestFrom.java */
    /* loaded from: classes4.dex */
    static final class b<T, U, R> extends AtomicReference<U> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f76857f = -312246233408980075L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76858a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<? super T, ? super U, ? extends R> f76859b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f76860c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f76861d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f76862e = new AtomicReference<>();

        b(org.reactivestreams.d<? super R> actual, q7.c<? super T, ? super U, ? extends R> combiner) {
            this.f76858a = actual;
            this.f76859b = combiner;
        }

        public void a(Throwable e4) {
            SubscriptionHelper.cancel(this.f76860c);
            this.f76858a.onError(e4);
        }

        public boolean b(org.reactivestreams.e o9) {
            return SubscriptionHelper.setOnce(this.f76862e, o9);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f76860c);
            SubscriptionHelper.cancel(this.f76862e);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            U u9 = get();
            if (u9 != null) {
                try {
                    R apply = this.f76859b.apply(t9, u9);
                    Objects.requireNonNull(apply, "The combiner returned a null value");
                    this.f76858a.onNext(apply);
                    return true;
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    this.f76858a.onError(th);
                }
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f76862e);
            this.f76858a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            SubscriptionHelper.cancel(this.f76862e);
            this.f76858a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f76860c.get().request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f76860c, this.f76861d, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f76860c, this.f76861d, n9);
        }
    }

    public a5(io.reactivex.rxjava3.core.m<T> source, q7.c<? super T, ? super U, ? extends R> combiner, org.reactivestreams.c<? extends U> other) {
        super(source);
        this.f76853c = combiner;
        this.f76854d = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        io.reactivex.rxjava3.subscribers.e eVar = new io.reactivex.rxjava3.subscribers.e(s9);
        b bVar = new b(eVar, this.f76853c);
        eVar.onSubscribe(bVar);
        this.f76854d.i(new a(bVar));
        this.f76811b.G6(bVar);
    }
}
