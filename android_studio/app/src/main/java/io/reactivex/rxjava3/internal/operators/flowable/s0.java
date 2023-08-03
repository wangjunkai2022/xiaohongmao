package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableElementAt.java */
/* loaded from: classes4.dex */
public final class s0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77886c;

    /* renamed from: d  reason: collision with root package name */
    final T f77887d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f77888e;

    /* compiled from: FlowableElementAt.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: s  reason: collision with root package name */
        private static final long f77889s = 4066607327284737757L;

        /* renamed from: m  reason: collision with root package name */
        final long f77890m;

        /* renamed from: n  reason: collision with root package name */
        final T f77891n;

        /* renamed from: o  reason: collision with root package name */
        final boolean f77892o;

        /* renamed from: p  reason: collision with root package name */
        org.reactivestreams.e f77893p;

        /* renamed from: q  reason: collision with root package name */
        long f77894q;

        /* renamed from: r  reason: collision with root package name */
        boolean f77895r;

        a(org.reactivestreams.d<? super T> actual, long index, T defaultValue, boolean errorOnFewer) {
            super(actual);
            this.f77890m = index;
            this.f77891n = defaultValue;
            this.f77892o = errorOnFewer;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77893p.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77895r) {
                return;
            }
            this.f77895r = true;
            T t9 = this.f77891n;
            if (t9 == null) {
                if (this.f77892o) {
                    this.f81291b.onError(new NoSuchElementException());
                    return;
                } else {
                    this.f81291b.onComplete();
                    return;
                }
            }
            complete(t9);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77895r) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77895r = true;
            this.f81291b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77895r) {
                return;
            }
            long j4 = this.f77894q;
            if (j4 == this.f77890m) {
                this.f77895r = true;
                this.f77893p.cancel();
                complete(t9);
                return;
            }
            this.f77894q = j4 + 1;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77893p, s9)) {
                this.f77893p = s9;
                this.f81291b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public s0(io.reactivex.rxjava3.core.m<T> source, long index, T defaultValue, boolean errorOnFewer) {
        super(source);
        this.f77886c = index;
        this.f77887d = defaultValue;
        this.f77888e = errorOnFewer;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77886c, this.f77887d, this.f77888e));
    }
}
