package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableDematerialize.java */
/* loaded from: classes4.dex */
public final class k0<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> f77419c;

    /* compiled from: FlowableDematerialize.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f77420a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> f77421b;

        /* renamed from: c  reason: collision with root package name */
        boolean f77422c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f77423d;

        a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> selector) {
            this.f77420a = downstream;
            this.f77421b = selector;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77423d.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77422c) {
                return;
            }
            this.f77422c = true;
            this.f77420a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77422c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77422c = true;
            this.f77420a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T item) {
            if (this.f77422c) {
                if (item instanceof io.reactivex.rxjava3.core.d0) {
                    io.reactivex.rxjava3.core.d0 d0Var = (io.reactivex.rxjava3.core.d0) item;
                    if (d0Var.g()) {
                        io.reactivex.rxjava3.plugins.a.Y(d0Var.d());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                io.reactivex.rxjava3.core.d0<R> apply = this.f77421b.apply(item);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                io.reactivex.rxjava3.core.d0<R> d0Var2 = apply;
                if (d0Var2.g()) {
                    this.f77423d.cancel();
                    onError(d0Var2.d());
                } else if (d0Var2.f()) {
                    this.f77423d.cancel();
                    onComplete();
                } else {
                    this.f77420a.onNext(d0Var2.e());
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77423d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77423d, s9)) {
                this.f77423d = s9;
                this.f77420a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77423d.request(n9);
        }
    }

    public k0(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> selector) {
        super(source);
        this.f77419c = selector;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> subscriber) {
        this.f76811b.G6(new a(subscriber, this.f77419c));
    }
}
