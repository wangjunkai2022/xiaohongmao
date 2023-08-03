package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatWithMaybe.java */
/* loaded from: classes4.dex */
public final class a0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f76812c;

    /* compiled from: FlowableConcatWithMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends SinglePostCompleteSubscriber<T, T> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f76813k = -7346385463600070225L;

        /* renamed from: h  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f76814h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.rxjava3.core.b0<? extends T> f76815i;

        /* renamed from: j  reason: collision with root package name */
        boolean f76816j;

        a(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.core.b0<? extends T> other) {
            super(actual);
            this.f76815i = other;
            this.f76814h = new AtomicReference<>();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.SinglePostCompleteSubscriber, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f76814h);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76816j) {
                this.f81215a.onComplete();
                return;
            }
            this.f76816j = true;
            this.f81216b = SubscriptionHelper.CANCELLED;
            io.reactivex.rxjava3.core.b0<? extends T> b0Var = this.f76815i;
            this.f76815i = null;
            b0Var.b(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f81215a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f81218d++;
            this.f81215a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f76814h, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T t9) {
            a(t9);
        }
    }

    public a0(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.b0<? extends T> other) {
        super(source);
        this.f76812c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f76812c));
    }
}
