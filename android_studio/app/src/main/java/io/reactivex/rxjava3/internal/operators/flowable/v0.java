package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableElementAtSingle.java */
/* loaded from: classes4.dex */
public final class v0<T> extends io.reactivex.rxjava3.core.p0<T> implements io.reactivex.rxjava3.internal.fuseable.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78074a;

    /* renamed from: b  reason: collision with root package name */
    final long f78075b;

    /* renamed from: c  reason: collision with root package name */
    final T f78076c;

    /* compiled from: FlowableElementAtSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f78077a;

        /* renamed from: b  reason: collision with root package name */
        final long f78078b;

        /* renamed from: c  reason: collision with root package name */
        final T f78079c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f78080d;

        /* renamed from: e  reason: collision with root package name */
        long f78081e;

        /* renamed from: f  reason: collision with root package name */
        boolean f78082f;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, long index, T defaultValue) {
            this.f78077a = actual;
            this.f78078b = index;
            this.f78079c = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78080d.cancel();
            this.f78080d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78080d == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78080d = SubscriptionHelper.CANCELLED;
            if (this.f78082f) {
                return;
            }
            this.f78082f = true;
            T t9 = this.f78079c;
            if (t9 != null) {
                this.f78077a.onSuccess(t9);
            } else {
                this.f78077a.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78082f) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f78082f = true;
            this.f78080d = SubscriptionHelper.CANCELLED;
            this.f78077a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78082f) {
                return;
            }
            long j4 = this.f78081e;
            if (j4 == this.f78078b) {
                this.f78082f = true;
                this.f78080d.cancel();
                this.f78080d = SubscriptionHelper.CANCELLED;
                this.f78077a.onSuccess(t9);
                return;
            }
            this.f78081e = j4 + 1;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78080d, s9)) {
                this.f78080d = s9;
                this.f78077a.onSubscribe(this);
                s9.request(this.f78078b + 1);
            }
        }
    }

    public v0(io.reactivex.rxjava3.core.m<T> source, long index, T defaultValue) {
        this.f78074a = source;
        this.f78075b = index;
        this.f78076c = defaultValue;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f78074a.G6(new a(observer, this.f78075b, this.f78076c));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<T> c() {
        return io.reactivex.rxjava3.plugins.a.P(new s0(this.f78074a, this.f78075b, this.f78076c, true));
    }
}
