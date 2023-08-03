package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableWindowBoundarySelector.java */
/* loaded from: classes3.dex */
public final class u4<T, B, V> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.j<T>> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<B> f72827c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super B, ? extends org.reactivestreams.c<V>> f72828d;

    /* renamed from: e  reason: collision with root package name */
    final int f72829e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    public static final class a<T, V> extends io.reactivex.subscribers.b<V> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, ?, V> f72830b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.processors.h<T> f72831c;

        /* renamed from: d  reason: collision with root package name */
        boolean f72832d;

        a(c<T, ?, V> cVar, io.reactivex.processors.h<T> hVar) {
            this.f72830b = cVar;
            this.f72831c = hVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72832d) {
                return;
            }
            this.f72832d = true;
            this.f72830b.n(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72832d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72832d = true;
            this.f72830b.p(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(V v9) {
            a();
            onComplete();
        }
    }

    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    static final class b<T, B> extends io.reactivex.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, B, ?> f72833b;

        b(c<T, B, ?> cVar) {
            this.f72833b = cVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72833b.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72833b.p(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(B b10) {
            this.f72833b.q(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    public static final class c<T, B, V> extends io.reactivex.internal.subscribers.h<T, Object, io.reactivex.j<T>> implements org.reactivestreams.e {
        final int T1;
        final io.reactivex.disposables.b V1;

        /* renamed from: b2  reason: collision with root package name */
        org.reactivestreams.e f72834b2;

        /* renamed from: g2  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f72835g2;

        /* renamed from: p2  reason: collision with root package name */
        final List<io.reactivex.processors.h<T>> f72836p2;

        /* renamed from: x1  reason: collision with root package name */
        final org.reactivestreams.c<B> f72837x1;

        /* renamed from: x2  reason: collision with root package name */
        final AtomicLong f72838x2;

        /* renamed from: y1  reason: collision with root package name */
        final n7.o<? super B, ? extends org.reactivestreams.c<V>> f72839y1;

        /* renamed from: y2  reason: collision with root package name */
        final AtomicBoolean f72840y2;

        c(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, org.reactivestreams.c<B> cVar, n7.o<? super B, ? extends org.reactivestreams.c<V>> oVar, int i4) {
            super(dVar, new io.reactivex.internal.queue.a());
            this.f72835g2 = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.f72838x2 = atomicLong;
            this.f72840y2 = new AtomicBoolean();
            this.f72837x1 = cVar;
            this.f72839y1 = oVar;
            this.T1 = i4;
            this.V1 = new io.reactivex.disposables.b();
            this.f72836p2 = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72840y2.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f72835g2);
                if (this.f72838x2.decrementAndGet() == 0) {
                    this.f72834b2.cancel();
                }
            }
        }

        void dispose() {
            this.V1.dispose();
            DisposableHelper.dispose(this.f72835g2);
        }

        @Override // io.reactivex.internal.subscribers.h, io.reactivex.internal.util.n
        public boolean g(org.reactivestreams.d<? super io.reactivex.j<T>> dVar, Object obj) {
            return false;
        }

        void n(a<T, V> aVar) {
            this.V1.c(aVar);
            this.W.offer(new d(aVar.f72831c, null));
            if (b()) {
                o();
            }
        }

        void o() {
            o7.o oVar = this.W;
            org.reactivestreams.d<? super V> dVar = this.V;
            List<io.reactivex.processors.h<T>> list = this.f72836p2;
            int i4 = 1;
            while (true) {
                boolean z9 = this.f75832g1;
                Object poll = oVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    dispose();
                    Throwable th = this.f75833p1;
                    if (th != null) {
                        for (io.reactivex.processors.h<T> hVar : list) {
                            hVar.onError(th);
                        }
                    } else {
                        for (io.reactivex.processors.h<T> hVar2 : list) {
                            hVar2.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z10) {
                    i4 = a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll instanceof d) {
                    d dVar2 = (d) poll;
                    io.reactivex.processors.h<T> hVar3 = dVar2.f72841a;
                    if (hVar3 != null) {
                        if (list.remove(hVar3)) {
                            dVar2.f72841a.onComplete();
                            if (this.f72838x2.decrementAndGet() == 0) {
                                dispose();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.f72840y2.get()) {
                        io.reactivex.processors.h<T> T8 = io.reactivex.processors.h.T8(this.T1);
                        long e4 = e();
                        if (e4 != 0) {
                            list.add(T8);
                            dVar.onNext(T8);
                            if (e4 != Long.MAX_VALUE) {
                                i(1L);
                            }
                            try {
                                org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72839y1.apply((B) dVar2.f72842b), "The publisher supplied is null");
                                a aVar = new a(this, T8);
                                if (this.V1.b(aVar)) {
                                    this.f72838x2.getAndIncrement();
                                    cVar.i(aVar);
                                }
                            } catch (Throwable th2) {
                                cancel();
                                dVar.onError(th2);
                            }
                        } else {
                            cancel();
                            dVar.onError(new MissingBackpressureException("Could not deliver new window due to lack of requests"));
                        }
                    }
                } else {
                    for (io.reactivex.processors.h<T> hVar4 : list) {
                        hVar4.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75832g1) {
                return;
            }
            this.f75832g1 = true;
            if (b()) {
                o();
            }
            if (this.f72838x2.decrementAndGet() == 0) {
                this.V1.dispose();
            }
            this.V.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75832g1) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75833p1 = th;
            this.f75832g1 = true;
            if (b()) {
                o();
            }
            if (this.f72838x2.decrementAndGet() == 0) {
                this.V1.dispose();
            }
            this.V.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75832g1) {
                return;
            }
            if (j()) {
                for (io.reactivex.processors.h<T> hVar : this.f72836p2) {
                    hVar.onNext(t9);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.W.offer(NotificationLite.next(t9));
                if (!b()) {
                    return;
                }
            }
            o();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72834b2, eVar)) {
                this.f72834b2 = eVar;
                this.V.onSubscribe(this);
                if (this.f72840y2.get()) {
                    return;
                }
                b bVar = new b(this);
                if (this.f72835g2.compareAndSet(null, bVar)) {
                    eVar.request(Long.MAX_VALUE);
                    this.f72837x1.i(bVar);
                }
            }
        }

        void p(Throwable th) {
            this.f72834b2.cancel();
            this.V1.dispose();
            DisposableHelper.dispose(this.f72835g2);
            this.V.onError(th);
        }

        void q(B b10) {
            this.W.offer(new d(null, b10));
            if (b()) {
                o();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            m(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    public static final class d<T, B> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.processors.h<T> f72841a;

        /* renamed from: b  reason: collision with root package name */
        final B f72842b;

        d(io.reactivex.processors.h<T> hVar, B b10) {
            this.f72841a = hVar;
            this.f72842b = b10;
        }
    }

    public u4(io.reactivex.j<T> jVar, org.reactivestreams.c<B> cVar, n7.o<? super B, ? extends org.reactivestreams.c<V>> oVar, int i4) {
        super(jVar);
        this.f72827c = cVar;
        this.f72828d = oVar;
        this.f72829e = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super io.reactivex.j<T>> dVar) {
        this.f71538b.j6(new c(new io.reactivex.subscribers.e(dVar), this.f72827c, this.f72828d, this.f72829e));
    }
}
