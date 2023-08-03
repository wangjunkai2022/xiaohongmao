package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;

/* compiled from: FlowableSkipLast.java */
/* loaded from: classes3.dex */
public final class t3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f72743c;

    /* compiled from: FlowableSkipLast.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72744d = -3807491841935125653L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72745a;

        /* renamed from: b  reason: collision with root package name */
        final int f72746b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72747c;

        a(org.reactivestreams.d<? super T> dVar, int i4) {
            super(i4);
            this.f72745a = dVar;
            this.f72746b = i4;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72747c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72745a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72745a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72746b == size()) {
                this.f72745a.onNext((T) poll());
            } else {
                this.f72747c.request(1L);
            }
            offer(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72747c, eVar)) {
                this.f72747c = eVar;
                this.f72745a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72747c.request(j4);
        }
    }

    public t3(io.reactivex.j<T> jVar, int i4) {
        super(jVar);
        this.f72743c = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72743c));
    }
}
