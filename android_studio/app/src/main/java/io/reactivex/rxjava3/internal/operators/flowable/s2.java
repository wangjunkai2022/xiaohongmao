package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.Objects;

/* compiled from: FlowableOnErrorNext.java */
/* loaded from: classes4.dex */
public final class s2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> f77926c;

    /* compiled from: FlowableOnErrorNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77927o = 4063763155303814625L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77928j;

        /* renamed from: k  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> f77929k;

        /* renamed from: l  reason: collision with root package name */
        boolean f77930l;

        /* renamed from: m  reason: collision with root package name */
        boolean f77931m;

        /* renamed from: n  reason: collision with root package name */
        long f77932n;

        a(org.reactivestreams.d<? super T> actual, q7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> nextSupplier) {
            super(false);
            this.f77928j = actual;
            this.f77929k = nextSupplier;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77931m) {
                return;
            }
            this.f77931m = true;
            this.f77930l = true;
            this.f77928j.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77930l) {
                if (this.f77931m) {
                    io.reactivex.rxjava3.plugins.a.Y(t9);
                    return;
                } else {
                    this.f77928j.onError(t9);
                    return;
                }
            }
            this.f77930l = true;
            try {
                org.reactivestreams.c<? extends T> apply = this.f77929k.apply(t9);
                Objects.requireNonNull(apply, "The nextSupplier returned a null Publisher");
                org.reactivestreams.c<? extends T> cVar = apply;
                long j4 = this.f77932n;
                if (j4 != 0) {
                    produced(j4);
                }
                cVar.i(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77928j.onError(new CompositeException(t9, th));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77931m) {
                return;
            }
            if (!this.f77930l) {
                this.f77932n++;
            }
            this.f77928j.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            setSubscription(s9);
        }
    }

    public s2(io.reactivex.rxjava3.core.m<T> source, q7.o<? super Throwable, ? extends org.reactivestreams.c<? extends T>> nextSupplier) {
        super(source);
        this.f77926c = nextSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        a aVar = new a(s9, this.f77926c);
        s9.onSubscribe(aVar);
        this.f76811b.G6(aVar);
    }
}
