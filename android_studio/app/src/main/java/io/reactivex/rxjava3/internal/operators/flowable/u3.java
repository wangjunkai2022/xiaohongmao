package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableSingleSingle.java */
/* loaded from: classes4.dex */
public final class u3<T> extends io.reactivex.rxjava3.core.p0<T> implements io.reactivex.rxjava3.internal.fuseable.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78028a;

    /* renamed from: b  reason: collision with root package name */
    final T f78029b;

    /* compiled from: FlowableSingleSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f78030a;

        /* renamed from: b  reason: collision with root package name */
        final T f78031b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f78032c;

        /* renamed from: d  reason: collision with root package name */
        boolean f78033d;

        /* renamed from: e  reason: collision with root package name */
        T f78034e;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, T defaultValue) {
            this.f78030a = actual;
            this.f78031b = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78032c.cancel();
            this.f78032c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78032c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78033d) {
                return;
            }
            this.f78033d = true;
            this.f78032c = SubscriptionHelper.CANCELLED;
            T t9 = this.f78034e;
            this.f78034e = null;
            if (t9 == null) {
                t9 = this.f78031b;
            }
            if (t9 != null) {
                this.f78030a.onSuccess(t9);
            } else {
                this.f78030a.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78033d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f78033d = true;
            this.f78032c = SubscriptionHelper.CANCELLED;
            this.f78030a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78033d) {
                return;
            }
            if (this.f78034e != null) {
                this.f78033d = true;
                this.f78032c.cancel();
                this.f78032c = SubscriptionHelper.CANCELLED;
                this.f78030a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f78034e = t9;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78032c, s9)) {
                this.f78032c = s9;
                this.f78030a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public u3(io.reactivex.rxjava3.core.m<T> source, T defaultValue) {
        this.f78028a = source;
        this.f78029b = defaultValue;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f78028a.G6(new a(observer, this.f78029b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<T> c() {
        return io.reactivex.rxjava3.plugins.a.P(new s3(this.f78028a, this.f78029b, true));
    }
}
