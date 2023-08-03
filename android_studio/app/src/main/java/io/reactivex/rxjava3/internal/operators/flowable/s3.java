package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableSingle.java */
/* loaded from: classes4.dex */
public final class s3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final T f77933c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f77934d;

    /* compiled from: FlowableSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f77935q = -5526049321428043809L;

        /* renamed from: m  reason: collision with root package name */
        final T f77936m;

        /* renamed from: n  reason: collision with root package name */
        final boolean f77937n;

        /* renamed from: o  reason: collision with root package name */
        org.reactivestreams.e f77938o;

        /* renamed from: p  reason: collision with root package name */
        boolean f77939p;

        a(org.reactivestreams.d<? super T> actual, T defaultValue, boolean failOnEmpty) {
            super(actual);
            this.f77936m = defaultValue;
            this.f77937n = failOnEmpty;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77938o.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77939p) {
                return;
            }
            this.f77939p = true;
            T t9 = this.f81292c;
            this.f81292c = null;
            if (t9 == null) {
                t9 = this.f77936m;
            }
            if (t9 == null) {
                if (this.f77937n) {
                    this.f81291b.onError(new NoSuchElementException());
                    return;
                } else {
                    this.f81291b.onComplete();
                    return;
                }
            }
            complete(t9);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77939p) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77939p = true;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77939p) {
                return;
            }
            if (this.f81292c != null) {
                this.f77939p = true;
                this.f77938o.cancel();
                this.f81291b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f81292c = t9;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77938o, s9)) {
                this.f77938o = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public s3(io.reactivex.rxjava3.core.m<T> source, T defaultValue, boolean failOnEmpty) {
        super(source);
        this.f77933c = defaultValue;
        this.f77934d = failOnEmpty;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77933c, this.f77934d));
    }
}
