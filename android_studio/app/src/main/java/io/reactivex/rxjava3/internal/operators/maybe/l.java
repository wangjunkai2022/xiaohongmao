package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelayOtherPublisher.java */
/* loaded from: classes4.dex */
public final class l<T, U> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f78651b;

    /* compiled from: MaybeDelayOtherPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final b<T> f78652a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.c<U> f78653b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78654c;

        a(io.reactivex.rxjava3.core.y<? super T> actual, org.reactivestreams.c<U> otherSource) {
            this.f78652a = new b<>(actual);
            this.f78653b = otherSource;
        }

        void a() {
            this.f78653b.i(this.f78652a);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78654c.dispose();
            this.f78654c = DisposableHelper.DISPOSED;
            SubscriptionHelper.cancel(this.f78652a);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78652a.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78654c = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78654c = DisposableHelper.DISPOSED;
            this.f78652a.f78658c = e4;
            a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78654c, d4)) {
                this.f78654c = d4;
                this.f78652a.f78656a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78654c = DisposableHelper.DISPOSED;
            this.f78652a.f78657b = value;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeDelayOtherPublisher.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f78655d = -1215060610805418006L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78656a;

        /* renamed from: b  reason: collision with root package name */
        T f78657b;

        /* renamed from: c  reason: collision with root package name */
        Throwable f78658c;

        b(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78656a = downstream;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            Throwable th = this.f78658c;
            if (th != null) {
                this.f78656a.onError(th);
                return;
            }
            T t9 = this.f78657b;
            if (t9 != null) {
                this.f78656a.onSuccess(t9);
            } else {
                this.f78656a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            Throwable th = this.f78658c;
            if (th == null) {
                this.f78656a.onError(t9);
            } else {
                this.f78656a.onError(new CompositeException(th, t9));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            org.reactivestreams.e eVar = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                lazySet(subscriptionHelper);
                eVar.cancel();
                onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    public l(io.reactivex.rxjava3.core.b0<T> source, org.reactivestreams.c<U> other) {
        super(source);
        this.f78651b = other;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78651b));
    }
}
