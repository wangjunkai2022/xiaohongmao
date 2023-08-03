package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableElementAtSingle.java */
/* loaded from: classes3.dex */
public final class v0<T> extends io.reactivex.i0<T> implements o7.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72853a;

    /* renamed from: b  reason: collision with root package name */
    final long f72854b;

    /* renamed from: c  reason: collision with root package name */
    final T f72855c;

    /* compiled from: FlowableElementAtSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f72856a;

        /* renamed from: b  reason: collision with root package name */
        final long f72857b;

        /* renamed from: c  reason: collision with root package name */
        final T f72858c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f72859d;

        /* renamed from: e  reason: collision with root package name */
        long f72860e;

        /* renamed from: f  reason: collision with root package name */
        boolean f72861f;

        a(io.reactivex.l0<? super T> l0Var, long j4, T t9) {
            this.f72856a = l0Var;
            this.f72857b = j4;
            this.f72858c = t9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72859d.cancel();
            this.f72859d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72859d == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72859d = SubscriptionHelper.CANCELLED;
            if (this.f72861f) {
                return;
            }
            this.f72861f = true;
            T t9 = this.f72858c;
            if (t9 != null) {
                this.f72856a.onSuccess(t9);
            } else {
                this.f72856a.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72861f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72861f = true;
            this.f72859d = SubscriptionHelper.CANCELLED;
            this.f72856a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72861f) {
                return;
            }
            long j4 = this.f72860e;
            if (j4 == this.f72857b) {
                this.f72861f = true;
                this.f72859d.cancel();
                this.f72859d = SubscriptionHelper.CANCELLED;
                this.f72856a.onSuccess(t9);
                return;
            }
            this.f72860e = j4 + 1;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72859d, eVar)) {
                this.f72859d = eVar;
                this.f72856a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public v0(io.reactivex.j<T> jVar, long j4, T t9) {
        this.f72853a = jVar;
        this.f72854b = j4;
        this.f72855c = t9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f72853a.j6(new a(l0Var, this.f72854b, this.f72855c));
    }

    @Override // o7.b
    public io.reactivex.j<T> c() {
        return io.reactivex.plugins.a.P(new t0(this.f72853a, this.f72854b, this.f72855c, true));
    }
}
