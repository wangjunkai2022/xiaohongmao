package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.operators.flowable.m4;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTimeout.java */
/* loaded from: classes3.dex */
public final class l4<T, U, V> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<U> f72199c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<V>> f72200d;

    /* renamed from: e  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72201e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes3.dex */
    public static final class a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f72202c = 8708641127342403073L;

        /* renamed from: a  reason: collision with root package name */
        final c f72203a;

        /* renamed from: b  reason: collision with root package name */
        final long f72204b;

        a(long j4, c cVar) {
            this.f72204b = j4;
            this.f72203a = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f72203a.b(this.f72204b);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f72203a.a(this.f72204b, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            org.reactivestreams.e eVar = (org.reactivestreams.e) get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                eVar.cancel();
                lazySet(subscriptionHelper);
                this.f72203a.b(this.f72204b);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends SubscriptionArbiter implements io.reactivex.o<T>, c {

        /* renamed from: q  reason: collision with root package name */
        private static final long f72205q = 3764492702657003550L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72206j;

        /* renamed from: k  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<?>> f72207k;

        /* renamed from: l  reason: collision with root package name */
        final SequentialDisposable f72208l;

        /* renamed from: m  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72209m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicLong f72210n;

        /* renamed from: o  reason: collision with root package name */
        org.reactivestreams.c<? extends T> f72211o;

        /* renamed from: p  reason: collision with root package name */
        long f72212p;

        b(org.reactivestreams.d<? super T> dVar, n7.o<? super T, ? extends org.reactivestreams.c<?>> oVar, org.reactivestreams.c<? extends T> cVar) {
            super(true);
            this.f72206j = dVar;
            this.f72207k = oVar;
            this.f72208l = new SequentialDisposable();
            this.f72209m = new AtomicReference<>();
            this.f72211o = cVar;
            this.f72210n = new AtomicLong();
        }

        @Override // io.reactivex.internal.operators.flowable.l4.c
        public void a(long j4, Throwable th) {
            if (this.f72210n.compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f72209m);
                this.f72206j.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.m4.d
        public void b(long j4) {
            if (this.f72210n.compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f72209m);
                org.reactivestreams.c<? extends T> cVar = this.f72211o;
                this.f72211o = null;
                long j10 = this.f72212p;
                if (j10 != 0) {
                    produced(j10);
                }
                cVar.i(new m4.a(this.f72206j, this));
            }
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72208l.dispose();
        }

        void e(org.reactivestreams.c<?> cVar) {
            if (cVar != null) {
                a aVar = new a(0L, this);
                if (this.f72208l.replace(aVar)) {
                    cVar.i(aVar);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72210n.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72208l.dispose();
                this.f72206j.onComplete();
                this.f72208l.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72210n.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72208l.dispose();
                this.f72206j.onError(th);
                this.f72208l.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f72210n.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = j4 + 1;
                if (this.f72210n.compareAndSet(j4, j10)) {
                    io.reactivex.disposables.c cVar = this.f72208l.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f72212p++;
                    this.f72206j.onNext(t9);
                    try {
                        org.reactivestreams.c cVar2 = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72207k.apply(t9), "The itemTimeoutIndicator returned a null Publisher.");
                        a aVar = new a(j10, this);
                        if (this.f72208l.replace(aVar)) {
                            cVar2.i(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f72209m.get().cancel();
                        this.f72210n.getAndSet(Long.MAX_VALUE);
                        this.f72206j.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this.f72209m, eVar)) {
                setSubscription(eVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes3.dex */
    public interface c extends m4.d {
        void a(long j4, Throwable th);
    }

    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes3.dex */
    static final class d<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e, c {

        /* renamed from: f  reason: collision with root package name */
        private static final long f72213f = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72214a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<?>> f72215b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f72216c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72217d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f72218e = new AtomicLong();

        d(org.reactivestreams.d<? super T> dVar, n7.o<? super T, ? extends org.reactivestreams.c<?>> oVar) {
            this.f72214a = dVar;
            this.f72215b = oVar;
        }

        @Override // io.reactivex.internal.operators.flowable.l4.c
        public void a(long j4, Throwable th) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f72217d);
                this.f72214a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.m4.d
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f72217d);
                this.f72214a.onError(new TimeoutException());
            }
        }

        void c(org.reactivestreams.c<?> cVar) {
            if (cVar != null) {
                a aVar = new a(0L, this);
                if (this.f72216c.replace(aVar)) {
                    cVar.i(aVar);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f72217d);
            this.f72216c.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72216c.dispose();
                this.f72214a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72216c.dispose();
                this.f72214a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (compareAndSet(j4, j10)) {
                    io.reactivex.disposables.c cVar = this.f72216c.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f72214a.onNext(t9);
                    try {
                        org.reactivestreams.c cVar2 = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72215b.apply(t9), "The itemTimeoutIndicator returned a null Publisher.");
                        a aVar = new a(j10, this);
                        if (this.f72216c.replace(aVar)) {
                            cVar2.i(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f72217d.get().cancel();
                        getAndSet(Long.MAX_VALUE);
                        this.f72214a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f72217d, this.f72218e, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f72217d, this.f72218e, j4);
        }
    }

    public l4(io.reactivex.j<T> jVar, org.reactivestreams.c<U> cVar, n7.o<? super T, ? extends org.reactivestreams.c<V>> oVar, org.reactivestreams.c<? extends T> cVar2) {
        super(jVar);
        this.f72199c = cVar;
        this.f72200d = oVar;
        this.f72201e = cVar2;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (this.f72201e == null) {
            d dVar2 = new d(dVar, this.f72200d);
            dVar.onSubscribe(dVar2);
            dVar2.c(this.f72199c);
            this.f71538b.j6(dVar2);
            return;
        }
        b bVar = new b(dVar, this.f72200d, this.f72201e);
        dVar.onSubscribe(bVar);
        bVar.e(this.f72199c);
        this.f71538b.j6(bVar);
    }
}
