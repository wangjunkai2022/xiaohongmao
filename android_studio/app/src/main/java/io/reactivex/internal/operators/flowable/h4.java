package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableTakeWhile.java */
/* loaded from: classes3.dex */
public final class h4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.r<? super T> f72017c;

    /* compiled from: FlowableTakeWhile.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72018a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super T> f72019b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72020c;

        /* renamed from: d  reason: collision with root package name */
        boolean f72021d;

        a(org.reactivestreams.d<? super T> dVar, n7.r<? super T> rVar) {
            this.f72018a = dVar;
            this.f72019b = rVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72020c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72021d) {
                return;
            }
            this.f72021d = true;
            this.f72018a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72021d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72021d = true;
            this.f72018a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72021d) {
                return;
            }
            try {
                if (!this.f72019b.test(t9)) {
                    this.f72021d = true;
                    this.f72020c.cancel();
                    this.f72018a.onComplete();
                    return;
                }
                this.f72018a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72020c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72020c, eVar)) {
                this.f72020c = eVar;
                this.f72018a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72020c.request(j4);
        }
    }

    public h4(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        super(jVar);
        this.f72017c = rVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72017c));
    }
}
