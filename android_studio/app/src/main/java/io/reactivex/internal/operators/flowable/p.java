package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: FlowableBufferExactBoundary.java */
/* loaded from: classes3.dex */
public final class p<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<B> f72426c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<U> f72427d;

    /* compiled from: FlowableBufferExactBoundary.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f72428b;

        a(b<T, U, B> bVar) {
            this.f72428b = bVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72428b.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72428b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(B b10) {
            this.f72428b.o();
        }
    }

    /* compiled from: FlowableBufferExactBoundary.java */
    /* loaded from: classes3.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.subscribers.h<T, U, U> implements io.reactivex.o<T>, org.reactivestreams.e, io.reactivex.disposables.c {
        org.reactivestreams.e T1;
        io.reactivex.disposables.c V1;

        /* renamed from: b2  reason: collision with root package name */
        U f72429b2;

        /* renamed from: x1  reason: collision with root package name */
        final Callable<U> f72430x1;

        /* renamed from: y1  reason: collision with root package name */
        final org.reactivestreams.c<B> f72431y1;

        b(org.reactivestreams.d<? super U> dVar, Callable<U> callable, org.reactivestreams.c<B> cVar) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.f72430x1 = callable;
            this.f72431y1 = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f75831b1) {
                return;
            }
            this.f75831b1 = true;
            this.V1.dispose();
            this.T1.cancel();
            if (b()) {
                this.W.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75831b1;
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> dVar, U u9) {
            this.V.onNext(u9);
            return true;
        }

        void o() {
            try {
                U u9 = (U) io.reactivex.internal.functions.b.g(this.f72430x1.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u10 = this.f72429b2;
                    if (u10 == null) {
                        return;
                    }
                    this.f72429b2 = u9;
                    k(u10, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            synchronized (this) {
                U u9 = this.f72429b2;
                if (u9 == null) {
                    return;
                }
                this.f72429b2 = null;
                this.W.offer(u9);
                this.f75832g1 = true;
                if (b()) {
                    io.reactivex.internal.util.o.e(this.W, this.V, false, this, this);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            cancel();
            this.V.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.f72429b2;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.T1, eVar)) {
                this.T1 = eVar;
                try {
                    this.f72429b2 = (U) io.reactivex.internal.functions.b.g(this.f72430x1.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.V1 = aVar;
                    this.V.onSubscribe(this);
                    if (this.f75831b1) {
                        return;
                    }
                    eVar.request(Long.MAX_VALUE);
                    this.f72431y1.i(aVar);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f75831b1 = true;
                    eVar.cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }
    }

    public p(io.reactivex.j<T> jVar, org.reactivestreams.c<B> cVar, Callable<U> callable) {
        super(jVar);
        this.f72426c = cVar;
        this.f72427d = callable;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        this.f71538b.j6(new b(new io.reactivex.subscribers.e(dVar), this.f72427d, this.f72426c));
    }
}
