package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableSingleSingle.java */
/* loaded from: classes3.dex */
public final class r3<T> extends io.reactivex.i0<T> implements o7.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72584a;

    /* renamed from: b  reason: collision with root package name */
    final T f72585b;

    /* compiled from: FlowableSingleSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f72586a;

        /* renamed from: b  reason: collision with root package name */
        final T f72587b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72588c;

        /* renamed from: d  reason: collision with root package name */
        boolean f72589d;

        /* renamed from: e  reason: collision with root package name */
        T f72590e;

        a(io.reactivex.l0<? super T> l0Var, T t9) {
            this.f72586a = l0Var;
            this.f72587b = t9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72588c.cancel();
            this.f72588c = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72588c == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72589d) {
                return;
            }
            this.f72589d = true;
            this.f72588c = SubscriptionHelper.CANCELLED;
            T t9 = this.f72590e;
            this.f72590e = null;
            if (t9 == null) {
                t9 = this.f72587b;
            }
            if (t9 != null) {
                this.f72586a.onSuccess(t9);
            } else {
                this.f72586a.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72589d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72589d = true;
            this.f72588c = SubscriptionHelper.CANCELLED;
            this.f72586a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72589d) {
                return;
            }
            if (this.f72590e != null) {
                this.f72589d = true;
                this.f72588c.cancel();
                this.f72588c = SubscriptionHelper.CANCELLED;
                this.f72586a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f72590e = t9;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72588c, eVar)) {
                this.f72588c = eVar;
                this.f72586a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public r3(io.reactivex.j<T> jVar, T t9) {
        this.f72584a = jVar;
        this.f72585b = t9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f72584a.j6(new a(l0Var, this.f72585b));
    }

    @Override // o7.b
    public io.reactivex.j<T> c() {
        return io.reactivex.plugins.a.P(new p3(this.f72584a, this.f72585b, true));
    }
}
