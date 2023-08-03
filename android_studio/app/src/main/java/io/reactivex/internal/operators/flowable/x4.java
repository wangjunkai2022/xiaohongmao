package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableWithLatestFrom.java */
/* loaded from: classes3.dex */
public final class x4<T, U, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.c<? super T, ? super U, ? extends R> f73017c;

    /* renamed from: d  reason: collision with root package name */
    final org.reactivestreams.c<? extends U> f73018d;

    /* compiled from: FlowableWithLatestFrom.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.o<U> {

        /* renamed from: a  reason: collision with root package name */
        private final b<T, U, R> f73019a;

        a(b<T, U, R> bVar) {
            this.f73019a = bVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73019a.a(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(U u9) {
            this.f73019a.lazySet(u9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (this.f73019a.b(eVar)) {
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    /* compiled from: FlowableWithLatestFrom.java */
    /* loaded from: classes3.dex */
    static final class b<T, U, R> extends AtomicReference<U> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f73021f = -312246233408980075L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73022a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<? super T, ? super U, ? extends R> f73023b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f73024c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73025d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f73026e = new AtomicReference<>();

        b(org.reactivestreams.d<? super R> dVar, n7.c<? super T, ? super U, ? extends R> cVar) {
            this.f73022a = dVar;
            this.f73023b = cVar;
        }

        public void a(Throwable th) {
            SubscriptionHelper.cancel(this.f73024c);
            this.f73022a.onError(th);
        }

        public boolean b(org.reactivestreams.e eVar) {
            return SubscriptionHelper.setOnce(this.f73026e, eVar);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f73024c);
            SubscriptionHelper.cancel(this.f73026e);
        }

        @Override // o7.a
        public boolean h(T t9) {
            U u9 = get();
            if (u9 != null) {
                try {
                    this.f73022a.onNext(io.reactivex.internal.functions.b.g(this.f73023b.apply(t9, u9), "The combiner returned a null value"));
                    return true;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    this.f73022a.onError(th);
                }
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f73026e);
            this.f73022a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f73026e);
            this.f73022a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f73024c.get().request(1L);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f73024c, this.f73025d, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f73024c, this.f73025d, j4);
        }
    }

    public x4(io.reactivex.j<T> jVar, n7.c<? super T, ? super U, ? extends R> cVar, org.reactivestreams.c<? extends U> cVar2) {
        super(jVar);
        this.f73017c = cVar;
        this.f73018d = cVar2;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(dVar);
        b bVar = new b(eVar, this.f73017c);
        eVar.onSubscribe(bVar);
        this.f73018d.i(new a(bVar));
        this.f71538b.j6(bVar);
    }
}
