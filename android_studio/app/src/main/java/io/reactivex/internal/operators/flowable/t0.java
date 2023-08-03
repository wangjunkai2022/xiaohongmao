package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: FlowableElementAt.java */
/* loaded from: classes3.dex */
public final class t0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72700c;

    /* renamed from: d  reason: collision with root package name */
    final T f72701d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f72702e;

    /* compiled from: FlowableElementAt.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends DeferredScalarSubscription<T> implements io.reactivex.o<T> {

        /* renamed from: s  reason: collision with root package name */
        private static final long f72703s = 4066607327284737757L;

        /* renamed from: m  reason: collision with root package name */
        final long f72704m;

        /* renamed from: n  reason: collision with root package name */
        final T f72705n;

        /* renamed from: o  reason: collision with root package name */
        final boolean f72706o;

        /* renamed from: p  reason: collision with root package name */
        org.reactivestreams.e f72707p;

        /* renamed from: q  reason: collision with root package name */
        long f72708q;

        /* renamed from: r  reason: collision with root package name */
        boolean f72709r;

        a(org.reactivestreams.d<? super T> dVar, long j4, T t9, boolean z9) {
            super(dVar);
            this.f72704m = j4;
            this.f72705n = t9;
            this.f72706o = z9;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72707p.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72709r) {
                return;
            }
            this.f72709r = true;
            T t9 = this.f72705n;
            if (t9 == null) {
                if (this.f72706o) {
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
            if (this.f72709r) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72709r = true;
            this.f75876b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72709r) {
                return;
            }
            long j4 = this.f72708q;
            if (j4 == this.f72704m) {
                this.f72709r = true;
                this.f72707p.cancel();
                complete(t9);
                return;
            }
            this.f72708q = j4 + 1;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72707p, eVar)) {
                this.f72707p = eVar;
                this.f75876b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public t0(io.reactivex.j<T> jVar, long j4, T t9, boolean z9) {
        super(jVar);
        this.f72700c = j4;
        this.f72701d = t9;
        this.f72702e = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72700c, this.f72701d, this.f72702e));
    }
}
