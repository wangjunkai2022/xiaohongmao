package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.Stream;

/* compiled from: FlowableFlatMapStream.java */
/* loaded from: classes4.dex */
public final class f<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f76302b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends Stream<? extends R>> f76303c;

    /* renamed from: d  reason: collision with root package name */
    final int f76304d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFlatMapStream.java */
    /* loaded from: classes4.dex */
    public static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: o  reason: collision with root package name */
        private static final long f76305o = -5127032662980523968L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76306a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends Stream<? extends R>> f76307b;

        /* renamed from: c  reason: collision with root package name */
        final int f76308c;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f76310e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f76311f;

        /* renamed from: g  reason: collision with root package name */
        Iterator<? extends R> f76312g;

        /* renamed from: h  reason: collision with root package name */
        AutoCloseable f76313h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f76314i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f76315j;

        /* renamed from: l  reason: collision with root package name */
        long f76317l;

        /* renamed from: m  reason: collision with root package name */
        int f76318m;

        /* renamed from: n  reason: collision with root package name */
        int f76319n;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f76309d = new AtomicLong();

        /* renamed from: k  reason: collision with root package name */
        final AtomicThrowable f76316k = new AtomicThrowable();

        a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
            this.f76306a = downstream;
            this.f76307b = mapper;
            this.f76308c = prefetch;
        }

        void a() throws Throwable {
            this.f76312g = null;
            AutoCloseable autoCloseable = this.f76313h;
            this.f76313h = null;
            if (autoCloseable != null) {
                autoCloseable.close();
            }
        }

        void b() {
            try {
                a();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }

        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [int, boolean] */
        /* JADX WARN: Type inference failed for: r12v2 */
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f76306a;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f76310e;
            AtomicThrowable atomicThrowable = this.f76316k;
            Iterator<? extends R> it = this.f76312g;
            long j4 = this.f76309d.get();
            long j10 = this.f76317l;
            int i4 = this.f76308c;
            int i10 = i4 - (i4 >> 2);
            int i11 = 0;
            ?? r12 = 1;
            boolean z9 = this.f76319n != 1;
            long j11 = j10;
            int i12 = 1;
            long j12 = j4;
            Iterator<? extends R> it2 = it;
            while (true) {
                if (this.f76314i) {
                    qVar.clear();
                    b();
                } else {
                    boolean z10 = this.f76315j;
                    if (atomicThrowable.get() != null) {
                        dVar.onError(atomicThrowable.get());
                        this.f76314i = r12;
                    } else {
                        if (it2 == null) {
                            try {
                                T poll = qVar.poll();
                                boolean z11 = poll == null;
                                if (z10 && z11) {
                                    dVar.onComplete();
                                    this.f76314i = r12;
                                } else if (!z11) {
                                    if (z9) {
                                        int i13 = this.f76318m + r12;
                                        this.f76318m = i13;
                                        if (i13 == i10) {
                                            this.f76318m = i11;
                                            this.f76311f.request(i10);
                                        }
                                    }
                                    try {
                                        Stream<? extends R> apply = this.f76307b.apply(poll);
                                        Objects.requireNonNull(apply, "The mapper returned a null Stream");
                                        Stream<? extends R> stream = apply;
                                        it2 = stream.iterator();
                                        if (it2.hasNext()) {
                                            this.f76312g = it2;
                                            this.f76313h = stream;
                                        }
                                        it2 = null;
                                    } catch (Throwable th) {
                                        io.reactivex.rxjava3.exceptions.a.b(th);
                                        d(dVar, th);
                                    }
                                }
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                d(dVar, th2);
                            }
                        }
                        if (it2 != null && j11 != j12) {
                            try {
                                Object obj = (R) it2.next();
                                Objects.requireNonNull(obj, "The Stream.Iterator returned a null value");
                                if (!this.f76314i) {
                                    dVar.onNext(obj);
                                    j11++;
                                    if (!this.f76314i) {
                                        try {
                                            if (!it2.hasNext()) {
                                                try {
                                                    a();
                                                    it2 = null;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    it2 = null;
                                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                                    d(dVar, th);
                                                    i11 = 0;
                                                    r12 = 1;
                                                }
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                    }
                                }
                            } catch (Throwable th5) {
                                io.reactivex.rxjava3.exceptions.a.b(th5);
                                d(dVar, th5);
                            }
                        }
                    }
                    i11 = 0;
                    r12 = 1;
                }
                this.f76317l = j11;
                i12 = addAndGet(-i12);
                if (i12 == 0) {
                    return;
                }
                j12 = this.f76309d.get();
                i11 = 0;
                r12 = 1;
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76314i = true;
            this.f76311f.cancel();
            c();
        }

        void d(org.reactivestreams.d<?> downstream, Throwable ex) {
            if (this.f76316k.compareAndSet(null, ex)) {
                this.f76311f.cancel();
                this.f76314i = true;
                downstream.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76315j = true;
            c();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76316k.compareAndSet(null, t9)) {
                this.f76315j = true;
                c();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f76319n != 2 && !this.f76310e.offer(t9)) {
                this.f76311f.cancel();
                onError(new MissingBackpressureException("Queue full?!"));
                return;
            }
            c();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(@p7.e org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76311f, s9)) {
                this.f76311f = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f76319n = requestFusion;
                        this.f76310e = nVar;
                        this.f76315j = true;
                        this.f76306a.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f76319n = requestFusion;
                        this.f76310e = nVar;
                        this.f76306a.onSubscribe(this);
                        s9.request(this.f76308c);
                        return;
                    }
                }
                this.f76310e = new SpscArrayQueue(this.f76308c);
                this.f76306a.onSubscribe(this);
                s9.request(this.f76308c);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f76309d, n9);
                c();
            }
        }
    }

    public f(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
        this.f76302b = source;
        this.f76303c = mapper;
        this.f76304d = prefetch;
    }

    public static <T, R> org.reactivestreams.d<T> g9(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
        return new a(downstream, mapper, prefetch);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        io.reactivex.rxjava3.core.m<T> mVar = this.f76302b;
        if (mVar instanceof q7.s) {
            Stream<? extends R> stream = null;
            try {
                Object obj = ((q7.s) mVar).get();
                if (obj != null) {
                    Stream<? extends R> apply = this.f76303c.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null Stream");
                    stream = apply;
                }
                if (stream != null) {
                    h.h9(s9, stream);
                    return;
                } else {
                    EmptySubscription.complete(s9);
                    return;
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptySubscription.error(th, s9);
                return;
            }
        }
        mVar.i(g9(s9, this.f76303c, this.f76304d));
    }
}
