package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableTakeWhile.java */
/* loaded from: classes4.dex */
public final class k4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super T> f77442c;

    /* compiled from: FlowableTakeWhile.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77443a;

        /* renamed from: b  reason: collision with root package name */
        final q7.r<? super T> f77444b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77445c;

        /* renamed from: d  reason: collision with root package name */
        boolean f77446d;

        a(org.reactivestreams.d<? super T> actual, q7.r<? super T> predicate) {
            this.f77443a = actual;
            this.f77444b = predicate;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77445c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77446d) {
                return;
            }
            this.f77446d = true;
            this.f77443a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77446d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77446d = true;
            this.f77443a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77446d) {
                return;
            }
            try {
                if (!this.f77444b.test(t9)) {
                    this.f77446d = true;
                    this.f77445c.cancel();
                    this.f77443a.onComplete();
                    return;
                }
                this.f77443a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77445c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77445c, s9)) {
                this.f77445c = s9;
                this.f77443a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77445c.request(n9);
        }
    }

    public k4(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f77442c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77442c));
    }
}
