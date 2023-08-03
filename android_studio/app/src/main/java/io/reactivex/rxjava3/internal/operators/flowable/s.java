package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableCollectSingle.java */
/* loaded from: classes4.dex */
public final class s<T, U> extends io.reactivex.rxjava3.core.p0<U> implements io.reactivex.rxjava3.internal.fuseable.d<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77878a;

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends U> f77879b;

    /* renamed from: c  reason: collision with root package name */
    final q7.b<? super U, ? super T> f77880c;

    /* compiled from: FlowableCollectSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super U> f77881a;

        /* renamed from: b  reason: collision with root package name */
        final q7.b<? super U, ? super T> f77882b;

        /* renamed from: c  reason: collision with root package name */
        final U f77883c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f77884d;

        /* renamed from: e  reason: collision with root package name */
        boolean f77885e;

        a(io.reactivex.rxjava3.core.s0<? super U> actual, U u9, q7.b<? super U, ? super T> collector) {
            this.f77881a = actual;
            this.f77882b = collector;
            this.f77883c = u9;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77884d.cancel();
            this.f77884d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77884d == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77885e) {
                return;
            }
            this.f77885e = true;
            this.f77884d = SubscriptionHelper.CANCELLED;
            this.f77881a.onSuccess((U) this.f77883c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77885e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77885e = true;
            this.f77884d = SubscriptionHelper.CANCELLED;
            this.f77881a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77885e) {
                return;
            }
            try {
                this.f77882b.accept((U) this.f77883c, t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77884d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77884d, s9)) {
                this.f77884d = s9;
                this.f77881a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public s(io.reactivex.rxjava3.core.m<T> source, q7.s<? extends U> initialSupplier, q7.b<? super U, ? super T> collector) {
        this.f77878a = source;
        this.f77879b = initialSupplier;
        this.f77880c = collector;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super U> observer) {
        try {
            U u9 = this.f77879b.get();
            Objects.requireNonNull(u9, "The initialSupplier returned a null value");
            this.f77878a.G6(new a(observer, u9, this.f77880c));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<U> c() {
        return io.reactivex.rxjava3.plugins.a.P(new r(this.f77878a, this.f77879b, this.f77880c));
    }
}
