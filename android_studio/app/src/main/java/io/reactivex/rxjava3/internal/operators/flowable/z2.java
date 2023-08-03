package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableReduceMaybe.java */
/* loaded from: classes4.dex */
public final class z2<T> extends io.reactivex.rxjava3.core.v<T> implements io.reactivex.rxjava3.internal.fuseable.j<T>, io.reactivex.rxjava3.internal.fuseable.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78389a;

    /* renamed from: b  reason: collision with root package name */
    final q7.c<T, T, T> f78390b;

    /* compiled from: FlowableReduceMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78391a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<T, T, T> f78392b;

        /* renamed from: c  reason: collision with root package name */
        T f78393c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f78394d;

        /* renamed from: e  reason: collision with root package name */
        boolean f78395e;

        a(io.reactivex.rxjava3.core.y<? super T> actual, q7.c<T, T, T> reducer) {
            this.f78391a = actual;
            this.f78392b = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78394d.cancel();
            this.f78395e = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78395e;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78395e) {
                return;
            }
            this.f78395e = true;
            T t9 = this.f78393c;
            if (t9 != null) {
                this.f78391a.onSuccess(t9);
            } else {
                this.f78391a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78395e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f78395e = true;
            this.f78391a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78395e) {
                return;
            }
            T t10 = this.f78393c;
            if (t10 == null) {
                this.f78393c = t9;
                return;
            }
            try {
                T apply = this.f78392b.apply(t10, t9);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.f78393c = apply;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78394d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78394d, s9)) {
                this.f78394d = s9;
                this.f78391a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public z2(io.reactivex.rxjava3.core.m<T> source, q7.c<T, T, T> reducer) {
        this.f78389a = source;
        this.f78390b = reducer;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78389a.G6(new a(observer, this.f78390b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<T> c() {
        return io.reactivex.rxjava3.plugins.a.P(new y2(this.f78389a, this.f78390b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.j
    public org.reactivestreams.c<T> source() {
        return this.f78389a;
    }
}
