package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableOnBackpressureDrop.java */
/* loaded from: classes4.dex */
public final class o2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> implements q7.g<T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super T> f77655c;

    /* compiled from: FlowableOnBackpressureDrop.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77656e = -6246093802440953054L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77657a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super T> f77658b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77659c;

        /* renamed from: d  reason: collision with root package name */
        boolean f77660d;

        a(org.reactivestreams.d<? super T> actual, q7.g<? super T> onDrop) {
            this.f77657a = actual;
            this.f77658b = onDrop;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77659c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77660d) {
                return;
            }
            this.f77660d = true;
            this.f77657a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77660d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77660d = true;
            this.f77657a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77660d) {
                return;
            }
            if (get() != 0) {
                this.f77657a.onNext(t9);
                io.reactivex.rxjava3.internal.util.b.e(this, 1L);
                return;
            }
            try {
                this.f77658b.accept(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77659c, s9)) {
                this.f77659c = s9;
                this.f77657a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }
    }

    public o2(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
        this.f77655c = this;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77655c));
    }

    @Override // q7.g
    public void accept(T t9) {
    }

    public o2(io.reactivex.rxjava3.core.m<T> source, q7.g<? super T> onDrop) {
        super(source);
        this.f77655c = onDrop;
    }
}
