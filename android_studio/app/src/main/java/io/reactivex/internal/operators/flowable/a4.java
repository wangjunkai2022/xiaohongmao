package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: FlowableTake.java */
/* loaded from: classes3.dex */
public final class a4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f71573c;

    /* compiled from: FlowableTake.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f71574f = -5636543848937116287L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71575a;

        /* renamed from: b  reason: collision with root package name */
        final long f71576b;

        /* renamed from: c  reason: collision with root package name */
        boolean f71577c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f71578d;

        /* renamed from: e  reason: collision with root package name */
        long f71579e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super T> dVar, long j4) {
            this.f71575a = dVar;
            this.f71576b = j4;
            this.f71579e = j4;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71578d.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71577c) {
                return;
            }
            this.f71577c = true;
            this.f71575a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (!this.f71577c) {
                this.f71577c = true;
                this.f71578d.cancel();
                this.f71575a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71577c) {
                return;
            }
            long j4 = this.f71579e;
            long j10 = j4 - 1;
            this.f71579e = j10;
            if (j4 > 0) {
                boolean z9 = j10 == 0;
                this.f71575a.onNext(t9);
                if (z9) {
                    this.f71578d.cancel();
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71578d, eVar)) {
                this.f71578d = eVar;
                if (this.f71576b == 0) {
                    eVar.cancel();
                    this.f71577c = true;
                    EmptySubscription.complete(this.f71575a);
                    return;
                }
                this.f71575a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                if (!get() && compareAndSet(false, true) && j4 >= this.f71576b) {
                    this.f71578d.request(Long.MAX_VALUE);
                } else {
                    this.f71578d.request(j4);
                }
            }
        }
    }

    public a4(io.reactivex.j<T> jVar, long j4) {
        super(jVar);
        this.f71573c = j4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71573c));
    }
}
