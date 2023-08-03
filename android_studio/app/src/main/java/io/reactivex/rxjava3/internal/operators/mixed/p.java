package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapPublisher.java */
/* loaded from: classes4.dex */
public final class p<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final b0<T> f78983b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78984c;

    public p(b0<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
        this.f78983b = source;
        this.f78984c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78983b.b(new a(s9, this.f78984c));
    }

    /* compiled from: MaybeFlatMapPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<R>, y<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78985e = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78986a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78987b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78988c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f78989d = new AtomicLong();

        a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper) {
            this.f78986a = downstream;
            this.f78987b = mapper;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78988c.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78986a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78986a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(R t9) {
            this.f78986a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78988c, d4)) {
                this.f78988c = d4;
                this.f78986a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            try {
                org.reactivestreams.c<? extends R> apply = this.f78987b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                org.reactivestreams.c<? extends R> cVar = apply;
                if (get() != SubscriptionHelper.CANCELLED) {
                    cVar.i(this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78986a.onError(th);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this, this.f78989d, n9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this, this.f78989d, s9);
        }
    }
}
