package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableRepeatWhen.java */
/* loaded from: classes3.dex */
public final class c3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super io.reactivex.j<Object>, ? extends org.reactivestreams.c<?>> f71662c;

    /* compiled from: FlowableRepeatWhen.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends c<T, Object> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f71663o = -2680129890138081029L;

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.processors.c<Object> cVar, org.reactivestreams.e eVar) {
            super(dVar, cVar, eVar);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            e(0);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71672l.cancel();
            this.f71670j.onError(th);
        }
    }

    /* compiled from: FlowableRepeatWhen.java */
    /* loaded from: classes3.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.o<Object>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71664e = 2827772011130406689L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.c<T> f71665a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f71666b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f71667c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        c<T, U> f71668d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(org.reactivestreams.c<T> cVar) {
            this.f71665a = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f71666b);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71668d.cancel();
            this.f71668d.f71670j.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71668d.cancel();
            this.f71668d.f71670j.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            if (getAndIncrement() == 0) {
                while (this.f71666b.get() != SubscriptionHelper.CANCELLED) {
                    this.f71665a.i(this.f71668d);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f71666b, this.f71667c, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f71666b, this.f71667c, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableRepeatWhen.java */
    /* loaded from: classes3.dex */
    public static abstract class c<T, U> extends SubscriptionArbiter implements io.reactivex.o<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f71669n = -5604623027276966720L;

        /* renamed from: j  reason: collision with root package name */
        protected final org.reactivestreams.d<? super T> f71670j;

        /* renamed from: k  reason: collision with root package name */
        protected final io.reactivex.processors.c<U> f71671k;

        /* renamed from: l  reason: collision with root package name */
        protected final org.reactivestreams.e f71672l;

        /* renamed from: m  reason: collision with root package name */
        private long f71673m;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(org.reactivestreams.d<? super T> dVar, io.reactivex.processors.c<U> cVar, org.reactivestreams.e eVar) {
            super(false);
            this.f71670j = dVar;
            this.f71671k = cVar;
            this.f71672l = eVar;
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.e
        public final void cancel() {
            super.cancel();
            this.f71672l.cancel();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void e(U u9) {
            setSubscription(EmptySubscription.INSTANCE);
            long j4 = this.f71673m;
            if (j4 != 0) {
                this.f71673m = 0L;
                produced(j4);
            }
            this.f71672l.request(1L);
            this.f71671k.onNext(u9);
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            this.f71673m++;
            this.f71670j.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public final void onSubscribe(org.reactivestreams.e eVar) {
            setSubscription(eVar);
        }
    }

    public c3(io.reactivex.j<T> jVar, n7.o<? super io.reactivex.j<Object>, ? extends org.reactivestreams.c<?>> oVar) {
        super(jVar);
        this.f71662c = oVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(dVar);
        io.reactivex.processors.c<T> Q8 = io.reactivex.processors.h.T8(8).Q8();
        try {
            org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f71662c.apply(Q8), "handler returned a null Publisher");
            b bVar = new b(this.f71538b);
            a aVar = new a(eVar, Q8, bVar);
            bVar.f71668d = aVar;
            dVar.onSubscribe(aVar);
            cVar.i(bVar);
            bVar.onNext(0);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
