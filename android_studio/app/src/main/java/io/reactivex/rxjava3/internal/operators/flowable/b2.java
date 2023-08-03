package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableLastSingle.java */
/* loaded from: classes4.dex */
public final class b2<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f76893a;

    /* renamed from: b  reason: collision with root package name */
    final T f76894b;

    /* compiled from: FlowableLastSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f76895a;

        /* renamed from: b  reason: collision with root package name */
        final T f76896b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f76897c;

        /* renamed from: d  reason: collision with root package name */
        T f76898d;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, T defaultItem) {
            this.f76895a = actual;
            this.f76896b = defaultItem;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76897c.cancel();
            this.f76897c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76897c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76897c = SubscriptionHelper.CANCELLED;
            T t9 = this.f76898d;
            if (t9 != null) {
                this.f76898d = null;
                this.f76895a.onSuccess(t9);
                return;
            }
            T t10 = this.f76896b;
            if (t10 != null) {
                this.f76895a.onSuccess(t10);
            } else {
                this.f76895a.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76897c = SubscriptionHelper.CANCELLED;
            this.f76898d = null;
            this.f76895a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f76898d = t9;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76897c, s9)) {
                this.f76897c = s9;
                this.f76895a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public b2(org.reactivestreams.c<T> source, T defaultItem) {
        this.f76893a = source;
        this.f76894b = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f76893a.i(new a(observer, this.f76894b));
    }
}
