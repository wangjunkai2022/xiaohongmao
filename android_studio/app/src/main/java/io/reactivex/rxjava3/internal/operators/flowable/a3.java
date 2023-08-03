package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableReduceSeedSingle.java */
/* loaded from: classes4.dex */
public final class a3<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f76835a;

    /* renamed from: b  reason: collision with root package name */
    final R f76836b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<R, ? super T, R> f76837c;

    /* compiled from: FlowableReduceSeedSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super R> f76838a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<R, ? super T, R> f76839b;

        /* renamed from: c  reason: collision with root package name */
        R f76840c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f76841d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.s0<? super R> actual, q7.c<R, ? super T, R> reducer, R value) {
            this.f76838a = actual;
            this.f76840c = value;
            this.f76839b = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76841d.cancel();
            this.f76841d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76841d == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            R r9 = this.f76840c;
            if (r9 != null) {
                this.f76840c = null;
                this.f76841d = SubscriptionHelper.CANCELLED;
                this.f76838a.onSuccess(r9);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            if (this.f76840c != null) {
                this.f76840c = null;
                this.f76841d = SubscriptionHelper.CANCELLED;
                this.f76838a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // org.reactivestreams.d
        public void onNext(T value) {
            R r9 = this.f76840c;
            if (r9 != null) {
                try {
                    R apply = this.f76839b.apply(r9, value);
                    Objects.requireNonNull(apply, "The reducer returned a null value");
                    this.f76840c = apply;
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f76841d.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76841d, s9)) {
                this.f76841d = s9;
                this.f76838a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public a3(org.reactivestreams.c<T> source, R seed, q7.c<R, ? super T, R> reducer) {
        this.f76835a = source;
        this.f76836b = seed;
        this.f76837c = reducer;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        this.f76835a.i(new a(observer, this.f76837c, this.f76836b));
    }
}
