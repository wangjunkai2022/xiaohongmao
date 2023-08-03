package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableOnErrorComplete.java */
/* loaded from: classes4.dex */
public final class r2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super Throwable> f77871c;

    /* compiled from: FlowableOnErrorComplete.java */
    /* loaded from: classes4.dex */
    public static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77872a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super Throwable> f77873b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77874c;

        public a(org.reactivestreams.d<? super T> actual, q7.r<? super Throwable> predicate) {
            this.f77872a = actual;
            this.f77873b = predicate;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77874c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77872a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            try {
                if (this.f77873b.test(e4)) {
                    this.f77872a.onComplete();
                } else {
                    this.f77872a.onError(e4);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77872a.onError(new CompositeException(e4, th));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T value) {
            this.f77872a.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77874c, s9)) {
                this.f77874c = s9;
                this.f77872a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77874c.request(n9);
        }
    }

    public r2(io.reactivex.rxjava3.core.m<T> source, q7.r<? super Throwable> predicate) {
        super(source);
        this.f77871c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> observer) {
        this.f76811b.G6(new a(observer, this.f77871c));
    }
}
