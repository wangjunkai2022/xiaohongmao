package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatWithCompletable.java */
/* loaded from: classes4.dex */
public final class z<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f78349c;

    public z(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.g other) {
        super(source);
        this.f78349c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f78349c));
    }

    /* compiled from: FlowableConcatWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.core.d, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78350e = -7346385463600070225L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78351a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f78352b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.core.g f78353c;

        /* renamed from: d  reason: collision with root package name */
        boolean f78354d;

        a(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.core.g other) {
            this.f78351a = actual;
            this.f78353c = other;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78352b.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78354d) {
                this.f78351a.onComplete();
                return;
            }
            this.f78354d = true;
            this.f78352b = SubscriptionHelper.CANCELLED;
            io.reactivex.rxjava3.core.g gVar = this.f78353c;
            this.f78353c = null;
            gVar.d(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78351a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f78351a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78352b, s9)) {
                this.f78352b = s9;
                this.f78351a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78352b.request(n9);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }
}
