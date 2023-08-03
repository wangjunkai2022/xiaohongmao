package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: FlowableZipIterable.java */
/* loaded from: classes4.dex */
public final class d5<T, U, V> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, V> {

    /* renamed from: c  reason: collision with root package name */
    final Iterable<U> f77039c;

    /* renamed from: d  reason: collision with root package name */
    final q7.c<? super T, ? super U, ? extends V> f77040d;

    /* compiled from: FlowableZipIterable.java */
    /* loaded from: classes4.dex */
    static final class a<T, U, V> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super V> f77041a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f77042b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super T, ? super U, ? extends V> f77043c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f77044d;

        /* renamed from: e  reason: collision with root package name */
        boolean f77045e;

        a(org.reactivestreams.d<? super V> actual, Iterator<U> iterator, q7.c<? super T, ? super U, ? extends V> zipper) {
            this.f77041a = actual;
            this.f77042b = iterator;
            this.f77043c = zipper;
        }

        void a(Throwable e4) {
            io.reactivex.rxjava3.exceptions.a.b(e4);
            this.f77045e = true;
            this.f77044d.cancel();
            this.f77041a.onError(e4);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77044d.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77045e) {
                return;
            }
            this.f77045e = true;
            this.f77041a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77045e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77045e = true;
            this.f77041a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77045e) {
                return;
            }
            try {
                U next = this.f77042b.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                try {
                    V apply = this.f77043c.apply(t9, next);
                    Objects.requireNonNull(apply, "The zipper function returned a null value");
                    this.f77041a.onNext(apply);
                    try {
                        if (this.f77042b.hasNext()) {
                            return;
                        }
                        this.f77045e = true;
                        this.f77044d.cancel();
                        this.f77041a.onComplete();
                    } catch (Throwable th) {
                        a(th);
                    }
                } catch (Throwable th2) {
                    a(th2);
                }
            } catch (Throwable th3) {
                a(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77044d, s9)) {
                this.f77044d = s9;
                this.f77041a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77044d.request(n9);
        }
    }

    public d5(io.reactivex.rxjava3.core.m<T> source, Iterable<U> other, q7.c<? super T, ? super U, ? extends V> zipper) {
        super(source);
        this.f77039c = other;
        this.f77040d = zipper;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super V> t9) {
        try {
            Iterator<U> it = this.f77039c.iterator();
            Objects.requireNonNull(it, "The iterator returned by other is null");
            Iterator<U> it2 = it;
            try {
                if (!it2.hasNext()) {
                    EmptySubscription.complete(t9);
                } else {
                    this.f76811b.G6(new a(t9, it2, this.f77040d));
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptySubscription.error(th, t9);
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            EmptySubscription.error(th2, t9);
        }
    }
}
