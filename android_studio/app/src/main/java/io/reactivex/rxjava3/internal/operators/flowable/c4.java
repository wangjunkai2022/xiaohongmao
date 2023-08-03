package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMap.java */
/* loaded from: classes4.dex */
public final class c4<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f76966c;

    /* renamed from: d  reason: collision with root package name */
    final int f76967d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f76968e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSwitchMap.java */
    /* loaded from: classes4.dex */
    public static final class a<T, R> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<R> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f76969g = 3837284832786408377L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f76970a;

        /* renamed from: b  reason: collision with root package name */
        final long f76971b;

        /* renamed from: c  reason: collision with root package name */
        final int f76972c;

        /* renamed from: d  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.q<R> f76973d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f76974e;

        /* renamed from: f  reason: collision with root package name */
        int f76975f;

        a(b<T, R> parent, long index, int bufferSize) {
            this.f76970a = parent;
            this.f76971b = index;
            this.f76972c = bufferSize;
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        public void b(long n9) {
            if (this.f76975f != 1) {
                get().request(n9);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            b<T, R> bVar = this.f76970a;
            if (this.f76971b == bVar.f76988k) {
                this.f76974e = true;
                bVar.b();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            b<T, R> bVar = this.f76970a;
            if (this.f76971b == bVar.f76988k && bVar.f76983f.tryAddThrowable(t9)) {
                if (!bVar.f76981d) {
                    bVar.f76985h.cancel();
                    bVar.f76982e = true;
                }
                this.f76974e = true;
                bVar.b();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(R t9) {
            b<T, R> bVar = this.f76970a;
            if (this.f76971b == bVar.f76988k) {
                if (this.f76975f == 0 && !this.f76973d.offer(t9)) {
                    onError(new MissingBackpressureException("Queue full?!"));
                } else {
                    bVar.b();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this, s9)) {
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f76975f = requestFusion;
                        this.f76973d = nVar;
                        this.f76974e = true;
                        this.f76970a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f76975f = requestFusion;
                        this.f76973d = nVar;
                        s9.request(this.f76972c);
                        return;
                    }
                }
                this.f76973d = new SpscArrayQueue(this.f76972c);
                s9.request(this.f76972c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableSwitchMap.java */
    /* loaded from: classes4.dex */
    public static final class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f76976l = -3491074160481096299L;

        /* renamed from: m  reason: collision with root package name */
        static final a<Object, Object> f76977m;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76978a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f76979b;

        /* renamed from: c  reason: collision with root package name */
        final int f76980c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f76981d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f76982e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f76984g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f76985h;

        /* renamed from: k  reason: collision with root package name */
        volatile long f76988k;

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<a<T, R>> f76986i = new AtomicReference<>();

        /* renamed from: j  reason: collision with root package name */
        final AtomicLong f76987j = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f76983f = new AtomicThrowable();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            f76977m = aVar;
            aVar.a();
        }

        b(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int bufferSize, boolean delayErrors) {
            this.f76978a = actual;
            this.f76979b = mapper;
            this.f76980c = bufferSize;
            this.f76981d = delayErrors;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar = f76977m;
            a<Object, Object> aVar2 = (a) this.f76986i.getAndSet(aVar);
            if (aVar2 == aVar || aVar2 == null) {
                return;
            }
            aVar2.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x0095, code lost:
            r14 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 293
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.c4.b.b():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f76984g) {
                return;
            }
            this.f76984g = true;
            this.f76985h.cancel();
            a();
            this.f76983f.tryTerminateAndReport();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76982e) {
                return;
            }
            this.f76982e = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (!this.f76982e && this.f76983f.tryAddThrowable(t9)) {
                if (!this.f76981d) {
                    a();
                }
                this.f76982e = true;
                b();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            a<T, R> aVar;
            if (this.f76982e) {
                return;
            }
            long j4 = this.f76988k + 1;
            this.f76988k = j4;
            a<T, R> aVar2 = this.f76986i.get();
            if (aVar2 != null) {
                aVar2.a();
            }
            try {
                org.reactivestreams.c<? extends R> apply = this.f76979b.apply(t9);
                Objects.requireNonNull(apply, "The publisher returned is null");
                org.reactivestreams.c<? extends R> cVar = apply;
                a<T, R> aVar3 = new a<>(this, j4, this.f76980c);
                do {
                    aVar = this.f76986i.get();
                    if (aVar == f76977m) {
                        return;
                    }
                } while (!this.f76986i.compareAndSet(aVar, aVar3));
                cVar.i(aVar3);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76985h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76985h, s9)) {
                this.f76985h = s9;
                this.f76978a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f76987j, n9);
                if (this.f76988k == 0) {
                    this.f76985h.request(Long.MAX_VALUE);
                } else {
                    b();
                }
            }
        }
    }

    public c4(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int bufferSize, boolean delayErrors) {
        super(source);
        this.f76966c = mapper;
        this.f76967d = bufferSize;
        this.f76968e = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        if (m3.b(this.f76811b, s9, this.f76966c)) {
            return;
        }
        this.f76811b.G6(new b(s9, this.f76966c, this.f76967d, this.f76968e));
    }
}
