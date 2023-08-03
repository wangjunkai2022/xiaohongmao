package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatWithSingle.java */
/* loaded from: classes3.dex */
public final class c0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f71640c;

    /* compiled from: FlowableConcatWithSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends SinglePostCompleteSubscriber<T, T> implements io.reactivex.l0<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f71641j = -7346385463600070225L;

        /* renamed from: h  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f71642h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.o0<? extends T> f71643i;

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.o0<? extends T> o0Var) {
            super(dVar);
            this.f71643i = o0Var;
            this.f71642h = new AtomicReference<>();
        }

        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f71642h);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75801b = SubscriptionHelper.CANCELLED;
            io.reactivex.o0<? extends T> o0Var = this.f71643i;
            this.f71643i = null;
            o0Var.d(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f75800a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f75803d++;
            this.f75800a.onNext(t9);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f71642h, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            a(t9);
        }
    }

    public c0(io.reactivex.j<T> jVar, io.reactivex.o0<? extends T> o0Var) {
        super(jVar);
        this.f71640c = o0Var;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71640c));
    }
}
