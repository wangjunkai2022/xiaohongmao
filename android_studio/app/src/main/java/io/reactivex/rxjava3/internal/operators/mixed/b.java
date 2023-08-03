package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableAndThenPublisher.java */
/* loaded from: classes4.dex */
public final class b<R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f78834b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends R> f78835c;

    public b(io.reactivex.rxjava3.core.g source, org.reactivestreams.c<? extends R> other) {
        this.f78834b = source;
        this.f78835c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78834b.d(new a(s9, this.f78835c));
    }

    /* compiled from: CompletableAndThenPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<R>, io.reactivex.rxjava3.core.d, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78836e = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78837a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.c<? extends R> f78838b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78839c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f78840d = new AtomicLong();

        a(org.reactivestreams.d<? super R> downstream, org.reactivestreams.c<? extends R> other) {
            this.f78837a = downstream;
            this.f78838b = other;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78839c.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.c<? extends R> cVar = this.f78838b;
            if (cVar == null) {
                this.f78837a.onComplete();
                return;
            }
            this.f78838b = null;
            cVar.i(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f78837a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(R t9) {
            this.f78837a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78839c, d4)) {
                this.f78839c = d4;
                this.f78837a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this, this.f78840d, n9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this, this.f78840d, s9);
        }
    }
}
