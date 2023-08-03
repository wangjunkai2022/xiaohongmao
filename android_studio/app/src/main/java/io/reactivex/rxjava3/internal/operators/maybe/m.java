package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelaySubscriptionOtherPublisher.java */
/* loaded from: classes4.dex */
public final class m<T, U> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<U> f78673b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeDelaySubscriptionOtherPublisher.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f78674b = 706635022205076709L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78675a;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78675a = downstream;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78675a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78675a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78675a.onSuccess(value);
        }
    }

    /* compiled from: MaybeDelaySubscriptionOtherPublisher.java */
    /* loaded from: classes4.dex */
    static final class b<T> implements io.reactivex.rxjava3.core.r<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f78676a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.core.b0<T> f78677b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f78678c;

        b(io.reactivex.rxjava3.core.y<? super T> actual, io.reactivex.rxjava3.core.b0<T> source) {
            this.f78676a = new a<>(actual);
            this.f78677b = source;
        }

        void a() {
            io.reactivex.rxjava3.core.b0<T> b0Var = this.f78677b;
            this.f78677b = null;
            b0Var.b(this.f78676a);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78678c.cancel();
            this.f78678c = SubscriptionHelper.CANCELLED;
            DisposableHelper.dispose(this.f78676a);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f78676a.get());
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.e eVar = this.f78678c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                this.f78678c = subscriptionHelper;
                a();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            org.reactivestreams.e eVar = this.f78678c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                this.f78678c = subscriptionHelper;
                this.f78676a.f78675a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            org.reactivestreams.e eVar = this.f78678c;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                eVar.cancel();
                this.f78678c = subscriptionHelper;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78678c, s9)) {
                this.f78678c = s9;
                this.f78676a.f78675a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public m(io.reactivex.rxjava3.core.b0<T> source, org.reactivestreams.c<U> other) {
        super(source);
        this.f78673b = other;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78673b.i(new b(observer, this.f78452a));
    }
}
