package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableTakeUntilPredicate.java */
/* loaded from: classes3.dex */
public final class g4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.r<? super T> f71947c;

    /* compiled from: FlowableTakeUntilPredicate.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71948a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f71949b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f71950c;

        /* renamed from: d  reason: collision with root package name */
        boolean f71951d;

        a(org.reactivestreams.d<? super T> dVar, n7.r<? super T> rVar) {
            this.f71948a = dVar;
            this.f71949b = rVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71950c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71951d) {
                return;
            }
            this.f71951d = true;
            this.f71948a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (!this.f71951d) {
                this.f71951d = true;
                this.f71948a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71951d) {
                return;
            }
            this.f71948a.onNext(t9);
            try {
                if (this.f71949b.test(t9)) {
                    this.f71951d = true;
                    this.f71950c.cancel();
                    this.f71948a.onComplete();
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71950c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71950c, eVar)) {
                this.f71950c = eVar;
                this.f71948a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f71950c.request(j4);
        }
    }

    public g4(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        super(jVar);
        this.f71947c = rVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71947c));
    }
}
