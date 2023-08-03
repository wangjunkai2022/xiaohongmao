package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableSkipWhile.java */
/* loaded from: classes3.dex */
public final class w3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.r<? super T> f72942c;

    /* compiled from: FlowableSkipWhile.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72943a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f72944b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72945c;

        /* renamed from: d  reason: collision with root package name */
        boolean f72946d;

        a(org.reactivestreams.d<? super T> dVar, n7.r<? super T> rVar) {
            this.f72943a = dVar;
            this.f72944b = rVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72945c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72943a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72943a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72946d) {
                this.f72943a.onNext(t9);
                return;
            }
            try {
                if (this.f72944b.test(t9)) {
                    this.f72945c.request(1L);
                    return;
                }
                this.f72946d = true;
                this.f72943a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72945c.cancel();
                this.f72943a.onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72945c, eVar)) {
                this.f72945c = eVar;
                this.f72943a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72945c.request(j4);
        }
    }

    public w3(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        super(jVar);
        this.f72942c = rVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72942c));
    }
}
