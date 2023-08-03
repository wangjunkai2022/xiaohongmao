package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatWithMaybe.java */
/* loaded from: classes3.dex */
public final class b0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.w<? extends T> f71598c;

    /* compiled from: FlowableConcatWithMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends SinglePostCompleteSubscriber<T, T> implements io.reactivex.t<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f71599k = -7346385463600070225L;

        /* renamed from: h  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f71600h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.w<? extends T> f71601i;

        /* renamed from: j  reason: collision with root package name */
        boolean f71602j;

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.w<? extends T> wVar) {
            super(dVar);
            this.f71601i = wVar;
            this.f71600h = new AtomicReference<>();
        }

        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            DisposableHelper.dispose(this.f71600h);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71602j) {
                this.f75800a.onComplete();
                return;
            }
            this.f71602j = true;
            this.f75801b = SubscriptionHelper.CANCELLED;
            io.reactivex.w<? extends T> wVar = this.f71601i;
            this.f71601i = null;
            wVar.b(this);
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

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f71600h, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            a(t9);
        }
    }

    public b0(io.reactivex.j<T> jVar, io.reactivex.w<? extends T> wVar) {
        super(jVar);
        this.f71598c = wVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71598c));
    }
}
