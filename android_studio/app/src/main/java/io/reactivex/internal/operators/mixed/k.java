package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapPublisher.java */
/* loaded from: classes3.dex */
public final class k<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final w<T> f73673b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f73674c;

    public k(w<T> wVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        this.f73673b = wVar;
        this.f73674c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73673b.b(new a(dVar, this.f73674c));
    }

    /* compiled from: MaybeFlatMapPublisher.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<R>, t<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73675e = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73676a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f73677b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73678c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73679d = new AtomicLong();

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
            this.f73676a = dVar;
            this.f73677b = oVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73678c.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73676a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73676a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(R r9) {
            this.f73676a.onNext(r9);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73678c, cVar)) {
                this.f73678c = cVar;
                this.f73676a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                ((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f73677b.apply(t9), "The mapper returned a null Publisher")).i(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73676a.onError(th);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this, this.f73679d, j4);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this, this.f73679d, eVar);
        }
    }
}
