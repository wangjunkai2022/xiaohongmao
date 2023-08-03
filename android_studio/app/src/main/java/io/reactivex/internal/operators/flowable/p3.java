package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableSingle.java */
/* loaded from: classes3.dex */
public final class p3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final T f72459c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f72460d;

    /* compiled from: FlowableSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f72461q = -5526049321428043809L;

        /* renamed from: m  reason: collision with root package name */
        final T f72462m;

        /* renamed from: n  reason: collision with root package name */
        final boolean f72463n;

        /* renamed from: o  reason: collision with root package name */
        org.reactivestreams.e f72464o;

        /* renamed from: p  reason: collision with root package name */
        boolean f72465p;

        a(org.reactivestreams.d<? super T> dVar, T t9, boolean z9) {
            super(dVar);
            this.f72462m = t9;
            this.f72463n = z9;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72464o.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72465p) {
                return;
            }
            this.f72465p = true;
            T t9 = this.f75877c;
            this.f75877c = null;
            if (t9 == null) {
                t9 = this.f72462m;
            }
            if (t9 == null) {
                if (this.f72463n) {
                    this.f75876b.onError(new NoSuchElementException());
                    return;
                } else {
                    this.f75876b.onComplete();
                    return;
                }
            }
            complete(t9);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72465p) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72465p = true;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72465p) {
                return;
            }
            if (this.f75877c != null) {
                this.f72465p = true;
                this.f72464o.cancel();
                this.f75876b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f75877c = t9;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72464o, eVar)) {
                this.f72464o = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public p3(io.reactivex.j<T> jVar, T t9, boolean z9) {
        super(jVar);
        this.f72459c = t9;
        this.f72460d = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72459c, this.f72460d));
    }
}
