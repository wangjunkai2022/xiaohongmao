package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: FlowableUsing.java */
/* loaded from: classes4.dex */
public final class u4<T, D> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<? extends D> f78035b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super D, ? extends org.reactivestreams.c<? extends T>> f78036c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super D> f78037d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f78038e;

    /* compiled from: FlowableUsing.java */
    /* loaded from: classes4.dex */
    static final class a<T, D> extends AtomicBoolean implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f78039f = 5904473792286235046L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78040a;

        /* renamed from: b  reason: collision with root package name */
        final D f78041b;

        /* renamed from: c  reason: collision with root package name */
        final q7.g<? super D> f78042c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f78043d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f78044e;

        a(org.reactivestreams.d<? super T> actual, D resource, q7.g<? super D> disposer, boolean eager) {
            this.f78040a = actual;
            this.f78041b = resource;
            this.f78042c = disposer;
            this.f78043d = eager;
        }

        void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f78042c.accept((D) this.f78041b);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78043d) {
                a();
                this.f78044e.cancel();
                this.f78044e = SubscriptionHelper.CANCELLED;
                return;
            }
            this.f78044e.cancel();
            this.f78044e = SubscriptionHelper.CANCELLED;
            a();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78043d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f78042c.accept((D) this.f78041b);
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f78040a.onError(th);
                        return;
                    }
                }
                this.f78044e.cancel();
                this.f78040a.onComplete();
                return;
            }
            this.f78040a.onComplete();
            this.f78044e.cancel();
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78043d) {
                Throwable th = null;
                if (compareAndSet(false, true)) {
                    try {
                        this.f78042c.accept((D) this.f78041b);
                    } catch (Throwable th2) {
                        th = th2;
                        io.reactivex.rxjava3.exceptions.a.b(th);
                    }
                }
                this.f78044e.cancel();
                if (th != null) {
                    this.f78040a.onError(new CompositeException(t9, th));
                    return;
                } else {
                    this.f78040a.onError(t9);
                    return;
                }
            }
            this.f78040a.onError(t9);
            this.f78044e.cancel();
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f78040a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78044e, s9)) {
                this.f78044e = s9;
                this.f78040a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f78044e.request(n9);
        }
    }

    public u4(q7.s<? extends D> resourceSupplier, q7.o<? super D, ? extends org.reactivestreams.c<? extends T>> sourceSupplier, q7.g<? super D> disposer, boolean eager) {
        this.f78035b = resourceSupplier;
        this.f78036c = sourceSupplier;
        this.f78037d = disposer;
        this.f78038e = eager;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        try {
            D d4 = this.f78035b.get();
            try {
                org.reactivestreams.c<? extends T> apply = this.f78036c.apply(d4);
                Objects.requireNonNull(apply, "The sourceSupplier returned a null Publisher");
                apply.i(new a(s9, d4, this.f78037d, this.f78038e));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                try {
                    this.f78037d.accept(d4);
                    EmptySubscription.error(th, s9);
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    EmptySubscription.error(new CompositeException(th, th2), s9);
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            EmptySubscription.error(th3, s9);
        }
    }
}
