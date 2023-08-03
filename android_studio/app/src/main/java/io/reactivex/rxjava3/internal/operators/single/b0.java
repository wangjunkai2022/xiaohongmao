package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: SingleFlatMapIterableFlowable.java */
/* loaded from: classes4.dex */
public final class b0<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80721b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends Iterable<? extends R>> f80722c;

    /* compiled from: SingleFlatMapIterableFlowable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f80723i = -8938804753851907758L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f80724b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends Iterable<? extends R>> f80725c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f80726d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80727e;

        /* renamed from: f  reason: collision with root package name */
        volatile Iterator<? extends R> f80728f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f80729g;

        /* renamed from: h  reason: collision with root package name */
        boolean f80730h;

        a(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
            this.f80724b = actual;
            this.f80725c = mapper;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f80724b;
            Iterator<? extends R> it = this.f80728f;
            if (this.f80730h && it != null) {
                dVar.onNext(null);
                dVar.onComplete();
                return;
            }
            int i4 = 1;
            while (true) {
                if (it != null) {
                    long j4 = this.f80726d.get();
                    if (j4 == Long.MAX_VALUE) {
                        j(dVar, it);
                        return;
                    }
                    long j10 = 0;
                    while (j10 != j4) {
                        if (this.f80729g) {
                            return;
                        }
                        try {
                            Object obj = (R) it.next();
                            Objects.requireNonNull(obj, "The iterator returned a null value");
                            dVar.onNext(obj);
                            if (this.f80729g) {
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
                        io.reactivex.rxjava3.internal.util.b.e(this.f80726d, j10);
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                if (it == null) {
                    it = this.f80728f;
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80729g = true;
            this.f80727e.dispose();
            this.f80727e = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f80728f = null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f80728f == null;
        }

        void j(org.reactivestreams.d<? super R> a10, Iterator<? extends R> iterator) {
            while (!this.f80729g) {
                try {
                    a10.onNext((R) iterator.next());
                    if (this.f80729g) {
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

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80727e = DisposableHelper.DISPOSED;
            this.f80724b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80727e, d4)) {
                this.f80727e = d4;
                this.f80724b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                Iterator<? extends R> it = this.f80725c.apply(value).iterator();
                if (!it.hasNext()) {
                    this.f80724b.onComplete();
                    return;
                }
                this.f80728f = it;
                b();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80724b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() {
            Iterator<? extends R> it = this.f80728f;
            if (it != null) {
                R next = it.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f80728f = null;
                }
                return next;
            }
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f80726d, n9);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f80730h = true;
                return 2;
            }
            return 0;
        }
    }

    public b0(io.reactivex.rxjava3.core.v0<T> source, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
        this.f80721b = source;
        this.f80722c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f80721b.d(new a(s9, this.f80722c));
    }
}
