package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelaySubscriptionOtherPublisher.java */
/* loaded from: classes3.dex */
public final class m<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f73388b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeDelaySubscriptionOtherPublisher.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73389b = 706635022205076709L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73390a;

        a(io.reactivex.t<? super T> tVar) {
            this.f73390a = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73390a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73390a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73390a.onSuccess(t9);
        }
    }

    /* compiled from: MaybeDelaySubscriptionOtherPublisher.java */
    /* loaded from: classes3.dex */
    static final class b<T> implements io.reactivex.o<Object>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f73391a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.w<T> f73392b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f73393c;

        b(io.reactivex.t<? super T> tVar, io.reactivex.w<T> wVar) {
            this.f73391a = new a<>(tVar);
            this.f73392b = wVar;
        }

        void a() {
            io.reactivex.w<T> wVar = this.f73392b;
            this.f73392b = null;
            wVar.b(this.f73391a);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73393c.cancel();
            this.f73393c = SubscriptionHelper.CANCELLED;
            DisposableHelper.dispose(this.f73391a);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f73391a.get());
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.e eVar = this.f73393c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                this.f73393c = subscriptionHelper;
                a();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            org.reactivestreams.e eVar = this.f73393c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                this.f73393c = subscriptionHelper;
                this.f73391a.f73390a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            org.reactivestreams.e eVar = this.f73393c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                eVar.cancel();
                this.f73393c = subscriptionHelper;
                a();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73393c, eVar)) {
                this.f73393c = eVar;
                this.f73391a.f73390a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public m(io.reactivex.w<T> wVar, org.reactivestreams.c<U> cVar) {
        super(wVar);
        this.f73388b = cVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73388b.i(new b(tVar, this.f73172a));
    }
}
