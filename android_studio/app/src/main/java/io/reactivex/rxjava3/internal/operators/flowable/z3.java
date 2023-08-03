package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableSkipWhile.java */
/* loaded from: classes4.dex */
public final class z3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super T> f78396c;

    /* compiled from: FlowableSkipWhile.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78397a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f78398b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f78399c;

        /* renamed from: d  reason: collision with root package name */
        boolean f78400d;

        a(org.reactivestreams.d<? super T> actual, q7.r<? super T> predicate) {
            this.f78397a = actual;
            this.f78398b = predicate;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78399c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78397a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78397a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78400d) {
                this.f78397a.onNext(t9);
                return;
            }
            try {
                if (this.f78398b.test(t9)) {
                    this.f78399c.request(1L);
                    return;
                }
                this.f78400d = true;
                this.f78397a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78399c.cancel();
                this.f78397a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78399c, s9)) {
                this.f78399c = s9;
                this.f78397a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78399c.request(n9);
        }
    }

    public z3(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f78396c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f78396c));
    }
}
