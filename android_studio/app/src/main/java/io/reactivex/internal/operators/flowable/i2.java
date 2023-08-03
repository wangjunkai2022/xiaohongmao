package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableOnBackpressureBuffer.java */
/* loaded from: classes3.dex */
public final class i2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f72031c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f72032d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f72033e;

    /* renamed from: f  reason: collision with root package name */
    final n7.a f72034f;

    /* compiled from: FlowableOnBackpressureBuffer.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f72035l = -2514538129242366402L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72036b;

        /* renamed from: c  reason: collision with root package name */
        final o7.n<T> f72037c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f72038d;

        /* renamed from: e  reason: collision with root package name */
        final n7.a f72039e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f72040f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f72041g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f72042h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f72043i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicLong f72044j = new AtomicLong();

        /* renamed from: k  reason: collision with root package name */
        boolean f72045k;

        a(org.reactivestreams.d<? super T> dVar, int i4, boolean z9, boolean z10, n7.a aVar) {
            o7.n<T> spscArrayQueue;
            this.f72036b = dVar;
            this.f72039e = aVar;
            this.f72038d = z10;
            if (z9) {
                spscArrayQueue = new io.reactivex.internal.queue.b<>(i4);
            } else {
                spscArrayQueue = new SpscArrayQueue<>(i4);
            }
            this.f72037c = spscArrayQueue;
        }

        void b() {
            int i4;
            if (getAndIncrement() == 0) {
                o7.n<T> nVar = this.f72037c;
                org.reactivestreams.d<? super T> dVar = this.f72036b;
                int i10 = 1;
                while (!j(this.f72042h, nVar.isEmpty(), dVar)) {
                    long j4 = this.f72044j.get();
                    long j10 = 0;
                    while (true) {
                        i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                        if (i4 == 0) {
                            break;
                        }
                        boolean z9 = this.f72042h;
                        Object obj = (T) nVar.poll();
                        boolean z10 = obj == null;
                        if (j(z9, z10, dVar)) {
                            return;
                        }
                        if (z10) {
                            break;
                        }
                        dVar.onNext(obj);
                        j10++;
                    }
                    if (i4 == 0 && j(this.f72042h, nVar.isEmpty(), dVar)) {
                        return;
                    }
                    if (j10 != 0 && j4 != Long.MAX_VALUE) {
                        this.f72044j.addAndGet(-j10);
                    }
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72041g) {
                return;
            }
            this.f72041g = true;
            this.f72040f.cancel();
            if (this.f72045k || getAndIncrement() != 0) {
                return;
            }
            this.f72037c.clear();
        }

        @Override // o7.o
        public void clear() {
            this.f72037c.clear();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f72037c.isEmpty();
        }

        boolean j(boolean z9, boolean z10, org.reactivestreams.d<? super T> dVar) {
            if (this.f72041g) {
                this.f72037c.clear();
                return true;
            } else if (z9) {
                if (this.f72038d) {
                    if (z10) {
                        Throwable th = this.f72043i;
                        if (th != null) {
                            dVar.onError(th);
                        } else {
                            dVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f72043i;
                if (th2 != null) {
                    this.f72037c.clear();
                    dVar.onError(th2);
                    return true;
                } else if (z10) {
                    dVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72042h = true;
            if (this.f72045k) {
                this.f72036b.onComplete();
            } else {
                b();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72043i = th;
            this.f72042h = true;
            if (this.f72045k) {
                this.f72036b.onError(th);
            } else {
                b();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f72037c.offer(t9)) {
                this.f72040f.cancel();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
                try {
                    this.f72039e.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    missingBackpressureException.initCause(th);
                }
                onError(missingBackpressureException);
            } else if (this.f72045k) {
                this.f72036b.onNext(null);
            } else {
                b();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72040f, eVar)) {
                this.f72040f = eVar;
                this.f72036b.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            return this.f72037c.poll();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (this.f72045k || !SubscriptionHelper.validate(j4)) {
                return;
            }
            io.reactivex.internal.util.b.a(this.f72044j, j4);
            b();
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f72045k = true;
                return 2;
            }
            return 0;
        }
    }

    public i2(io.reactivex.j<T> jVar, int i4, boolean z9, boolean z10, n7.a aVar) {
        super(jVar);
        this.f72031c = i4;
        this.f72032d = z9;
        this.f72033e = z10;
        this.f72034f = aVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72031c, this.f72032d, this.f72033e, this.f72034f));
    }
}
