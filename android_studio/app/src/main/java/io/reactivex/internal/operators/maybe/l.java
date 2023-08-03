package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelayOtherPublisher.java */
/* loaded from: classes3.dex */
public final class l<T, U> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f73376b;

    /* compiled from: MaybeDelayOtherPublisher.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final b<T> f73377a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<U> f73378b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73379c;

        a(io.reactivex.t<? super T> tVar, org.reactivestreams.c<U> cVar) {
            this.f73377a = new b<>(tVar);
            this.f73378b = cVar;
        }

        void a() {
            this.f73378b.i(this.f73377a);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73379c.dispose();
            this.f73379c = DisposableHelper.DISPOSED;
            SubscriptionHelper.cancel(this.f73377a);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73377a.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73379c = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73379c = DisposableHelper.DISPOSED;
            this.f73377a.f73383c = th;
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73379c, cVar)) {
                this.f73379c = cVar;
                this.f73377a.f73381a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73379c = DisposableHelper.DISPOSED;
            this.f73377a.f73382b = t9;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeDelayOtherPublisher.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73380d = -1215060610805418006L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73381a;

        /* renamed from: b  reason: collision with root package name */
        T f73382b;

        /* renamed from: c  reason: collision with root package name */
        Throwable f73383c;

        b(io.reactivex.t<? super T> tVar) {
            this.f73381a = tVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            Throwable th = this.f73383c;
            if (th != null) {
                this.f73381a.onError(th);
                return;
            }
            T t9 = this.f73382b;
            if (t9 != null) {
                this.f73381a.onSuccess(t9);
            } else {
                this.f73381a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            Throwable th2 = this.f73383c;
            if (th2 == null) {
                this.f73381a.onError(th);
            } else {
                this.f73381a.onError(new CompositeException(th2, th));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                eVar.cancel();
                onComplete();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    public l(io.reactivex.w<T> wVar, org.reactivestreams.c<U> cVar) {
        super(wVar);
        this.f73376b = cVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73376b));
    }
}
