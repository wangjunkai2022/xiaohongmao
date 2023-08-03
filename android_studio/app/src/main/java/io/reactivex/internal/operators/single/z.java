package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: SingleFlatMapIterableFlowable.java */
/* loaded from: classes4.dex */
public final class z<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<T> f75579b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends Iterable<? extends R>> f75580c;

    /* compiled from: SingleFlatMapIterableFlowable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.l0<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f75581i = -8938804753851907758L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f75582b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends Iterable<? extends R>> f75583c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f75584d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f75585e;

        /* renamed from: f  reason: collision with root package name */
        volatile Iterator<? extends R> f75586f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f75587g;

        /* renamed from: h  reason: collision with root package name */
        boolean f75588h;

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
            this.f75582b = dVar;
            this.f75583c = oVar;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f75582b;
            Iterator<? extends R> it = this.f75586f;
            if (this.f75588h && it != null) {
                dVar.onNext(null);
                dVar.onComplete();
                return;
            }
            int i4 = 1;
            while (true) {
                if (it != null) {
                    long j4 = this.f75584d.get();
                    if (j4 == Long.MAX_VALUE) {
                        j(dVar, it);
                        return;
                    }
                    long j10 = 0;
                    while (j10 != j4) {
                        if (this.f75587g) {
                            return;
                        }
                        try {
                            dVar.onNext((Object) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null value"));
                            if (this.f75587g) {
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
                        io.reactivex.internal.util.b.e(this.f75584d, j10);
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                if (it == null) {
                    it = this.f75586f;
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75587g = true;
            this.f75585e.dispose();
            this.f75585e = DisposableHelper.DISPOSED;
        }

        @Override // o7.o
        public void clear() {
            this.f75586f = null;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f75586f == null;
        }

        void j(org.reactivestreams.d<? super R> dVar, Iterator<? extends R> it) {
            while (!this.f75587g) {
                try {
                    dVar.onNext((R) it.next());
                    if (this.f75587g) {
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

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75585e = DisposableHelper.DISPOSED;
            this.f75582b.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75585e, cVar)) {
                this.f75585e = cVar;
                this.f75582b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            try {
                Iterator<? extends R> it = this.f75583c.apply(t9).iterator();
                if (!it.hasNext()) {
                    this.f75582b.onComplete();
                    return;
                }
                this.f75586f = it;
                b();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75582b.onError(th);
            }
        }

        @Override // o7.o
        @m7.f
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f75586f;
            if (it != null) {
                R r9 = (R) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f75586f = null;
                }
                return r9;
            }
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f75584d, j4);
                b();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f75588h = true;
                return 2;
            }
            return 0;
        }
    }

    public z(io.reactivex.o0<T> o0Var, n7.o<? super T, ? extends Iterable<? extends R>> oVar) {
        this.f75579b = o0Var;
        this.f75580c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f75579b.d(new a(dVar, this.f75580c));
    }
}
