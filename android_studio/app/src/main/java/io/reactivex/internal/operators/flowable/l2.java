package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableOnBackpressureError.java */
/* loaded from: classes3.dex */
public final class l2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* compiled from: FlowableOnBackpressureError.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72180d = -3176480756392482682L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72181a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72182b;

        /* renamed from: c  reason: collision with root package name */
        boolean f72183c;

        a(org.reactivestreams.d<? super T> dVar) {
            this.f72181a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72182b.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72183c) {
                return;
            }
            this.f72183c = true;
            this.f72181a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72183c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72183c = true;
            this.f72181a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72183c) {
                return;
            }
            if (get() != 0) {
                this.f72181a.onNext(t9);
                io.reactivex.internal.util.b.e(this, 1L);
                return;
            }
            this.f72182b.cancel();
            onError(new MissingBackpressureException("could not emit value due to lack of requests"));
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72182b, eVar)) {
                this.f72182b = eVar;
                this.f72181a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }
    }

    public l2(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
