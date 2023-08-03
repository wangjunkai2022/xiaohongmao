package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: MaybeFlatMapIterableFlowable.java */
/* loaded from: classes4.dex */
public final class d0<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78510b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends Iterable<? extends R>> f78511c;

    /* compiled from: MaybeFlatMapIterableFlowable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f78512i = -8938804753851907758L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78513b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends Iterable<? extends R>> f78514c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f78515d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78516e;

        /* renamed from: f  reason: collision with root package name */
        volatile Iterator<? extends R> f78517f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f78518g;

        /* renamed from: h  reason: collision with root package name */
        boolean f78519h;

        a(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
            this.f78513b = actual;
            this.f78514c = mapper;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f78513b;
            Iterator<? extends R> it = this.f78517f;
            if (this.f78519h && it != null) {
                dVar.onNext(null);
                dVar.onComplete();
                return;
            }
            int i4 = 1;
            while (true) {
                if (it != null) {
                    long j4 = this.f78515d.get();
                    if (j4 == Long.MAX_VALUE) {
                        j(dVar, it);
                        return;
                    }
                    long j10 = 0;
                    while (j10 != j4) {
                        if (this.f78518g) {
                            return;
                        }
                        try {
                            Object obj = (R) it.next();
                            Objects.requireNonNull(obj, "The iterator returned a null value");
                            dVar.onNext(obj);
                            if (this.f78518g) {
                                return;
                            }
                            j10++;
                            try {
                                if (!it.hasNext()) {
                                    dVar.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                dVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            dVar.onError(th2);
                            return;
                        }
                    }
                    if (j10 != 0) {
                        io.reactivex.rxjava3.internal.util.b.e(this.f78515d, j10);
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                if (it == null) {
                    it = this.f78517f;
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78518g = true;
            this.f78516e.dispose();
            this.f78516e = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f78517f = null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f78517f == null;
        }

        void j(org.reactivestreams.d<? super R> a10, Iterator<? extends R> iterator) {
            while (!this.f78518g) {
                try {
                    a10.onNext((R) iterator.next());
                    if (this.f78518g) {
                        return;
                    }
                    try {
                        if (!iterator.hasNext()) {
                            a10.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        a10.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    a10.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78513b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78516e = DisposableHelper.DISPOSED;
            this.f78513b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78516e, d4)) {
                this.f78516e = d4;
                this.f78513b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                Iterator<? extends R> it = this.f78514c.apply(value).iterator();
                if (!it.hasNext()) {
                    this.f78513b.onComplete();
                    return;
                }
                this.f78517f = it;
                b();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78513b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() {
            Iterator<? extends R> it = this.f78517f;
            if (it != null) {
                R next = it.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f78517f = null;
                }
                return next;
            }
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78515d, n9);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f78519h = true;
                return 2;
            }
            return 0;
        }
    }

    public d0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
        this.f78510b = source;
        this.f78511c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78510b.b(new a(s9, this.f78511c));
    }
}
