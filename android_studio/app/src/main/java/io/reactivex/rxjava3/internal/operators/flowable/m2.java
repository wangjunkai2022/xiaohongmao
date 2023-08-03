package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableOnBackpressureBuffer.java */
/* loaded from: classes4.dex */
public final class m2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f77545c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f77546d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f77547e;

    /* renamed from: f  reason: collision with root package name */
    final q7.a f77548f;

    /* compiled from: FlowableOnBackpressureBuffer.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f77549l = -2514538129242366402L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77550b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<T> f77551c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f77552d;

        /* renamed from: e  reason: collision with root package name */
        final q7.a f77553e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f77554f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f77555g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f77556h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f77557i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicLong f77558j = new AtomicLong();

        /* renamed from: k  reason: collision with root package name */
        boolean f77559k;

        a(org.reactivestreams.d<? super T> actual, int bufferSize, boolean unbounded, boolean delayError, q7.a onOverflow) {
            io.reactivex.rxjava3.internal.fuseable.p<T> spscArrayQueue;
            this.f77550b = actual;
            this.f77553e = onOverflow;
            this.f77552d = delayError;
            if (unbounded) {
                spscArrayQueue = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            } else {
                spscArrayQueue = new SpscArrayQueue<>(bufferSize);
            }
            this.f77551c = spscArrayQueue;
        }

        void b() {
            int i4;
            if (getAndIncrement() == 0) {
                io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f77551c;
                org.reactivestreams.d<? super T> dVar = this.f77550b;
                int i10 = 1;
                while (!j(this.f77556h, pVar.isEmpty(), dVar)) {
                    long j4 = this.f77558j.get();
                    long j10 = 0;
                    while (true) {
                        i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                        if (i4 == 0) {
                            break;
                        }
                        boolean z9 = this.f77556h;
                        Object obj = (T) pVar.poll();
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
                    if (i4 == 0 && j(this.f77556h, pVar.isEmpty(), dVar)) {
                        return;
                    }
                    if (j10 != 0 && j4 != Long.MAX_VALUE) {
                        this.f77558j.addAndGet(-j10);
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
            if (this.f77555g) {
                return;
            }
            this.f77555g = true;
            this.f77554f.cancel();
            if (this.f77559k || getAndIncrement() != 0) {
                return;
            }
            this.f77551c.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f77551c.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f77551c.isEmpty();
        }

        boolean j(boolean d4, boolean empty, org.reactivestreams.d<? super T> a10) {
            if (this.f77555g) {
                this.f77551c.clear();
                return true;
            } else if (d4) {
                if (this.f77552d) {
                    if (empty) {
                        Throwable th = this.f77557i;
                        if (th != null) {
                            a10.onError(th);
                        } else {
                            a10.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f77557i;
                if (th2 != null) {
                    this.f77551c.clear();
                    a10.onError(th2);
                    return true;
                } else if (empty) {
                    a10.onComplete();
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
            this.f77556h = true;
            if (this.f77559k) {
                this.f77550b.onComplete();
            } else {
                b();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77557i = t9;
            this.f77556h = true;
            if (this.f77559k) {
                this.f77550b.onError(t9);
            } else {
                b();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f77551c.offer(t9)) {
                this.f77554f.cancel();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
                try {
                    this.f77553e.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    missingBackpressureException.initCause(th);
                }
                onError(missingBackpressureException);
            } else if (this.f77559k) {
                this.f77550b.onNext(null);
            } else {
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77554f, s9)) {
                this.f77554f = s9;
                this.f77550b.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            return this.f77551c.poll();
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (this.f77559k || !SubscriptionHelper.validate(n9)) {
                return;
            }
            io.reactivex.rxjava3.internal.util.b.a(this.f77558j, n9);
            b();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f77559k = true;
                return 2;
            }
            return 0;
        }
    }

    public m2(io.reactivex.rxjava3.core.m<T> source, int bufferSize, boolean unbounded, boolean delayError, q7.a onOverflow) {
        super(source);
        this.f77545c = bufferSize;
        this.f77546d = unbounded;
        this.f77547e = delayError;
        this.f77548f = onOverflow;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77545c, this.f77546d, this.f77547e, this.f77548f));
    }
}
