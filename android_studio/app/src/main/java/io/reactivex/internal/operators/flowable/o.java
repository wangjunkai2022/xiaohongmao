package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableBufferBoundarySupplier.java */
/* loaded from: classes3.dex */
public final class o<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends org.reactivestreams.c<B>> f72401c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<U> f72402d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableBufferBoundarySupplier.java */
    /* loaded from: classes3.dex */
    public static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f72403b;

        /* renamed from: c  reason: collision with root package name */
        boolean f72404c;

        a(b<T, U, B> bVar) {
            this.f72403b = bVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72404c) {
                return;
            }
            this.f72404c = true;
            this.f72403b.p();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72404c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72404c = true;
            this.f72403b.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(B b10) {
            if (this.f72404c) {
                return;
            }
            this.f72404c = true;
            a();
            this.f72403b.p();
        }
    }

    /* compiled from: FlowableBufferBoundarySupplier.java */
    /* loaded from: classes3.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.subscribers.h<T, U, U> implements io.reactivex.o<T>, org.reactivestreams.e, io.reactivex.disposables.c {
        org.reactivestreams.e T1;
        final AtomicReference<io.reactivex.disposables.c> V1;

        /* renamed from: b2  reason: collision with root package name */
        U f72405b2;

        /* renamed from: x1  reason: collision with root package name */
        final Callable<U> f72406x1;

        /* renamed from: y1  reason: collision with root package name */
        final Callable<? extends org.reactivestreams.c<B>> f72407y1;

        b(org.reactivestreams.d<? super U> dVar, Callable<U> callable, Callable<? extends org.reactivestreams.c<B>> callable2) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.V1 = new AtomicReference<>();
            this.f72406x1 = callable;
            this.f72407y1 = callable2;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f75831b1) {
                return;
            }
            this.f75831b1 = true;
            this.T1.cancel();
            o();
            if (b()) {
                this.W.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.T1.cancel();
            o();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.V1.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> dVar, U u9) {
            this.V.onNext(u9);
            return true;
        }

        void o() {
            DisposableHelper.dispose(this.V1);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            synchronized (this) {
                U u9 = this.f72405b2;
                if (u9 == null) {
                    return;
                }
                this.f72405b2 = null;
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
                U u9 = this.f72405b2;
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
                org.reactivestreams.d<? super V> dVar = this.V;
                try {
                    this.f72405b2 = (U) io.reactivex.internal.functions.b.g(this.f72406x1.call(), "The buffer supplied is null");
                    try {
                        org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72407y1.call(), "The boundary publisher supplied is null");
                        a aVar = new a(this);
                        this.V1.set(aVar);
                        dVar.onSubscribe(this);
                        if (this.f75831b1) {
                            return;
                        }
                        eVar.request(Long.MAX_VALUE);
                        cVar.i(aVar);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f75831b1 = true;
                        eVar.cancel();
                        EmptySubscription.error(th, dVar);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f75831b1 = true;
                    eVar.cancel();
                    EmptySubscription.error(th2, dVar);
                }
            }
        }

        void p() {
            try {
                U u9 = (U) io.reactivex.internal.functions.b.g(this.f72406x1.call(), "The buffer supplied is null");
                try {
                    org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72407y1.call(), "The boundary publisher supplied is null");
                    a aVar = new a(this);
                    if (DisposableHelper.replace(this.V1, aVar)) {
                        synchronized (this) {
                            U u10 = this.f72405b2;
                            if (u10 == null) {
                                return;
                            }
                            this.f72405b2 = u9;
                            cVar.i(aVar);
                            k(u10, false, this);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f75831b1 = true;
                    this.T1.cancel();
                    this.V.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                this.V.onError(th2);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }
    }

    public o(io.reactivex.j<T> jVar, Callable<? extends org.reactivestreams.c<B>> callable, Callable<U> callable2) {
        super(jVar);
        this.f72401c = callable;
        this.f72402d = callable2;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        this.f71538b.j6(new b(new io.reactivex.subscribers.e(dVar), this.f72402d, this.f72401c));
    }
}
