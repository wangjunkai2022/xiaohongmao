package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableLastSingle.java */
/* loaded from: classes3.dex */
public final class w1<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<T> f72929a;

    /* renamed from: b  reason: collision with root package name */
    final T f72930b;

    /* compiled from: FlowableLastSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f72931a;

        /* renamed from: b  reason: collision with root package name */
        final T f72932b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72933c;

        /* renamed from: d  reason: collision with root package name */
        T f72934d;

        a(io.reactivex.l0<? super T> l0Var, T t9) {
            this.f72931a = l0Var;
            this.f72932b = t9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72933c.cancel();
            this.f72933c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72933c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72933c = SubscriptionHelper.CANCELLED;
            T t9 = this.f72934d;
            if (t9 != null) {
                this.f72934d = null;
                this.f72931a.onSuccess(t9);
                return;
            }
            T t10 = this.f72932b;
            if (t10 != null) {
                this.f72931a.onSuccess(t10);
            } else {
                this.f72931a.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72933c = SubscriptionHelper.CANCELLED;
            this.f72934d = null;
            this.f72931a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72934d = t9;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72933c, eVar)) {
                this.f72933c = eVar;
                this.f72931a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public w1(org.reactivestreams.c<T> cVar, T t9) {
        this.f72929a = cVar;
        this.f72930b = t9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f72929a.i(new a(l0Var, this.f72930b));
    }
}
