package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableAndThenPublisher.java */
/* loaded from: classes3.dex */
public final class b<R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f73541b;

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends R> f73542c;

    public b(io.reactivex.g gVar, org.reactivestreams.c<? extends R> cVar) {
        this.f73541b = gVar;
        this.f73542c = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73541b.d(new a(dVar, this.f73542c));
    }

    /* compiled from: CompletableAndThenPublisher.java */
    /* loaded from: classes3.dex */
    static final class a<R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<R>, io.reactivex.d, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73543e = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73544a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.c<? extends R> f73545b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73546c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73547d = new AtomicLong();

        a(org.reactivestreams.d<? super R> dVar, org.reactivestreams.c<? extends R> cVar) {
            this.f73544a = dVar;
            this.f73545b = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73546c.dispose();
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            org.reactivestreams.c<? extends R> cVar = this.f73545b;
            if (cVar == null) {
                this.f73544a.onComplete();
                return;
            }
            this.f73545b = null;
            cVar.i(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73544a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(R r9) {
            this.f73544a.onNext(r9);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73546c, cVar)) {
                this.f73546c = cVar;
                this.f73544a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this, this.f73547d, j4);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this, this.f73547d, eVar);
        }
    }
}
