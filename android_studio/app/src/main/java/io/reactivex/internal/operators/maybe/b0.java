package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: MaybeFlatMapIterableFlowable.java */
/* loaded from: classes3.dex */
public final class b0<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<T> f73192b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends Iterable<? extends R>> f73193c;

    /* compiled from: MaybeFlatMapIterableFlowable.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.t<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73194i = -8938804753851907758L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73195b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends Iterable<? extends R>> f73196c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f73197d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f73198e;

        /* renamed from: f  reason: collision with root package name */
        volatile Iterator<? extends R> f73199f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73200g;

        /* renamed from: h  reason: collision with root package name */
        boolean f73201h;

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f73195b = dVar;
            this.f73196c = oVar;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f73195b;
            Iterator<? extends R> it = this.f73199f;
            if (this.f73201h && it != null) {
                dVar.onNext(null);
                dVar.onComplete();
                return;
            }
            int i4 = 1;
            while (true) {
                if (it != null) {
                    long j4 = this.f73197d.get();
                    if (j4 == Long.MAX_VALUE) {
                        j(dVar, it);
                        return;
                    }
                    long j10 = 0;
                    while (j10 != j4) {
                        if (this.f73200g) {
                            return;
                        }
                        try {
                            dVar.onNext((Object) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null value"));
                            if (this.f73200g) {
                                return;
                            }
                            j10++;
                            try {
                                if (!it.hasNext()) {
                                    dVar.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                dVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            dVar.onError(th2);
                            return;
                        }
                    }
                    if (j10 != 0) {
                        io.reactivex.internal.util.b.e(this.f73197d, j10);
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                if (it == null) {
                    it = this.f73199f;
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73200g = true;
            this.f73198e.dispose();
            this.f73198e = DisposableHelper.DISPOSED;
        }

        @Override // o7.o
        public void clear() {
            this.f73199f = null;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f73199f == null;
        }

        void j(org.reactivestreams.d<? super R> dVar, Iterator<? extends R> it) {
            while (!this.f73200g) {
                try {
                    dVar.onNext((R) it.next());
                    if (this.f73200g) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            dVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        dVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    dVar.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73195b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73198e = DisposableHelper.DISPOSED;
            this.f73195b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73198e, cVar)) {
                this.f73198e = cVar;
                this.f73195b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                Iterator<? extends R> it = this.f73196c.apply(t9).iterator();
                if (!it.hasNext()) {
                    this.f73195b.onComplete();
                    return;
                }
                this.f73199f = it;
                b();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73195b.onError(th);
            }
        }

        @Override // o7.o
        @m7.f
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f73199f;
            if (it != null) {
                R r9 = (R) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f73199f = null;
                }
                return r9;
            }
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73197d, j4);
                b();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f73201h = true;
                return 2;
            }
            return 0;
        }
    }

    public b0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f73192b = wVar;
        this.f73193c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f73192b.b(new a(dVar, this.f73193c));
    }
}
