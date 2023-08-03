package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableTakeUntilPredicate.java */
/* loaded from: classes4.dex */
public final class j4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super T> f77410c;

    /* compiled from: FlowableTakeUntilPredicate.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77411a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f77412b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77413c;

        /* renamed from: d  reason: collision with root package name */
        boolean f77414d;

        a(org.reactivestreams.d<? super T> actual, q7.r<? super T> predicate) {
            this.f77411a = actual;
            this.f77412b = predicate;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77413c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77414d) {
                return;
            }
            this.f77414d = true;
            this.f77411a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (!this.f77414d) {
                this.f77414d = true;
                this.f77411a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77414d) {
                return;
            }
            this.f77411a.onNext(t9);
            try {
                if (this.f77412b.test(t9)) {
                    this.f77414d = true;
                    this.f77413c.cancel();
                    this.f77411a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77413c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77413c, s9)) {
                this.f77413c = s9;
                this.f77411a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77413c.request(n9);
        }
    }

    public j4(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f77410c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77410c));
    }
}
