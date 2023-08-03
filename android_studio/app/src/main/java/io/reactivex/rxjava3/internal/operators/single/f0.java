package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapPublisher.java */
/* loaded from: classes4.dex */
public final class f0<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80806b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f80807c;

    public f0(io.reactivex.rxjava3.core.v0<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        this.f80806b = source;
        this.f80807c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> downstream) {
        this.f80806b.d(new a(downstream, this.f80807c));
    }

    /* compiled from: SingleFlatMapPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<S, T> extends AtomicLong implements io.reactivex.rxjava3.core.s0<S>, io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80808e = 7759721921468635667L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80809a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super S, ? extends org.reactivestreams.c<? extends T>> f80810b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f80811c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80812d;

        a(org.reactivestreams.d<? super T> actual, q7.o<? super S, ? extends org.reactivestreams.c<? extends T>> mapper) {
            this.f80809a = actual;
            this.f80810b = mapper;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80812d.dispose();
            SubscriptionHelper.cancel(this.f80811c);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f80809a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80809a.onError(e4);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f80809a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80812d = d4;
            this.f80809a.onSubscribe(this);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(S value) {
            try {
                org.reactivestreams.c<? extends T> apply = this.f80810b.apply(value);
                Objects.requireNonNull(apply, "the mapper returned a null Publisher");
                org.reactivestreams.c<? extends T> cVar = apply;
                if (this.f80811c.get() != SubscriptionHelper.CANCELLED) {
                    cVar.i(this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80809a.onError(th);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f80811c, this, n9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f80811c, this, s9);
        }
    }
}
