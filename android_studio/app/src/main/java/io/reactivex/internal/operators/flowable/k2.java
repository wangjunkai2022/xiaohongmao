package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableOnBackpressureDrop.java */
/* loaded from: classes3.dex */
public final class k2<T> extends io.reactivex.internal.operators.flowable.a<T, T> implements n7.g<T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super T> f72155c;

    /* compiled from: FlowableOnBackpressureDrop.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f72156e = -6246093802440953054L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72157a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super T> f72158b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72159c;

        /* renamed from: d  reason: collision with root package name */
        boolean f72160d;

        a(org.reactivestreams.d<? super T> dVar, n7.g<? super T> gVar) {
            this.f72157a = dVar;
            this.f72158b = gVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72159c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72160d) {
                return;
            }
            this.f72160d = true;
            this.f72157a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72160d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72160d = true;
            this.f72157a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72160d) {
                return;
            }
            if (get() != 0) {
                this.f72157a.onNext(t9);
                io.reactivex.internal.util.b.e(this, 1L);
                return;
            }
            try {
                this.f72158b.accept(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72159c, eVar)) {
                this.f72159c = eVar;
                this.f72157a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }
    }

    public k2(io.reactivex.j<T> jVar) {
        super(jVar);
        this.f72155c = this;
    }

    @Override // n7.g
    public void accept(T t9) {
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72155c));
    }

    public k2(io.reactivex.j<T> jVar, n7.g<? super T> gVar) {
        super(jVar);
        this.f72155c = gVar;
    }
}
