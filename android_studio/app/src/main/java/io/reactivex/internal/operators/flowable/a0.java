package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatWithCompletable.java */
/* loaded from: classes3.dex */
public final class a0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.g f71539c;

    public a0(io.reactivex.j<T> jVar, io.reactivex.g gVar) {
        super(jVar);
        this.f71539c = gVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71539c));
    }

    /* compiled from: FlowableConcatWithCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.o<T>, io.reactivex.d, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71540e = -7346385463600070225L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71541a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f71542b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.g f71543c;

        /* renamed from: d  reason: collision with root package name */
        boolean f71544d;

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.g gVar) {
            this.f71541a = dVar;
            this.f71543c = gVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71542b.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71544d) {
                this.f71541a.onComplete();
                return;
            }
            this.f71544d = true;
            this.f71542b = SubscriptionHelper.CANCELLED;
            io.reactivex.g gVar = this.f71543c;
            this.f71543c = null;
            gVar.d(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71541a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f71541a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71542b, eVar)) {
                this.f71542b = eVar;
                this.f71541a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f71542b.request(j4);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }
}
