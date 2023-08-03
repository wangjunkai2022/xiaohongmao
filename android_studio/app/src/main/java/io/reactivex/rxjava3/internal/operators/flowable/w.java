package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscribers.InnerQueuedSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableConcatMapEager.java */
/* loaded from: classes4.dex */
public final class w<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78151c;

    /* renamed from: d  reason: collision with root package name */
    final int f78152d;

    /* renamed from: e  reason: collision with root package name */
    final int f78153e;

    /* renamed from: f  reason: collision with root package name */
    final ErrorMode f78154f;

    /* compiled from: FlowableConcatMapEager.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, io.reactivex.rxjava3.internal.subscribers.g<R> {

        /* renamed from: m  reason: collision with root package name */
        private static final long f78155m = -4255299542215038287L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78156a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f78157b;

        /* renamed from: c  reason: collision with root package name */
        final int f78158c;

        /* renamed from: d  reason: collision with root package name */
        final int f78159d;

        /* renamed from: e  reason: collision with root package name */
        final ErrorMode f78160e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f78161f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f78162g = new AtomicLong();

        /* renamed from: h  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<InnerQueuedSubscriber<R>> f78163h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f78164i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78165j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f78166k;

        /* renamed from: l  reason: collision with root package name */
        volatile InnerQueuedSubscriber<R> f78167l;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int maxConcurrency, int prefetch, ErrorMode errorMode) {
            this.f78156a = actual;
            this.f78157b = mapper;
            this.f78158c = maxConcurrency;
            this.f78159d = prefetch;
            this.f78160e = errorMode;
            this.f78163h = new io.reactivex.rxjava3.internal.queue.b<>(Math.min(prefetch, maxConcurrency));
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.g
        public void a(InnerQueuedSubscriber<R> inner) {
            inner.setDone();
            b();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.g
        public void b() {
            InnerQueuedSubscriber<R> innerQueuedSubscriber;
            int i4;
            long j4;
            boolean z9;
            io.reactivex.rxjava3.internal.fuseable.q<R> queue;
            int i10;
            if (getAndIncrement() != 0) {
                return;
            }
            InnerQueuedSubscriber<R> innerQueuedSubscriber2 = this.f78167l;
            org.reactivestreams.d<? super R> dVar = this.f78156a;
            ErrorMode errorMode = this.f78160e;
            int i11 = 1;
            while (true) {
                long j10 = this.f78162g.get();
                if (innerQueuedSubscriber2 != null) {
                    innerQueuedSubscriber = innerQueuedSubscriber2;
                } else if (errorMode != ErrorMode.END && this.f78161f.get() != null) {
                    e();
                    this.f78161f.tryTerminateConsumer(this.f78156a);
                    return;
                } else {
                    boolean z10 = this.f78166k;
                    innerQueuedSubscriber = this.f78163h.poll();
                    if (z10 && innerQueuedSubscriber == null) {
                        this.f78161f.tryTerminateConsumer(this.f78156a);
                        return;
                    } else if (innerQueuedSubscriber != null) {
                        this.f78167l = innerQueuedSubscriber;
                    }
                }
                if (innerQueuedSubscriber == null || (queue = innerQueuedSubscriber.queue()) == null) {
                    i4 = i11;
                    j4 = 0;
                    z9 = false;
                } else {
                    i4 = i11;
                    j4 = 0;
                    while (true) {
                        i10 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                        if (i10 == 0) {
                            break;
                        } else if (this.f78165j) {
                            e();
                            return;
                        } else if (errorMode == ErrorMode.IMMEDIATE && this.f78161f.get() != null) {
                            this.f78167l = null;
                            innerQueuedSubscriber.cancel();
                            e();
                            this.f78161f.tryTerminateConsumer(this.f78156a);
                            return;
                        } else {
                            boolean isDone = innerQueuedSubscriber.isDone();
                            try {
                                R poll = queue.poll();
                                boolean z11 = poll == null;
                                if (isDone && z11) {
                                    this.f78167l = null;
                                    this.f78164i.request(1L);
                                    innerQueuedSubscriber = null;
                                    z9 = true;
                                    break;
                                } else if (z11) {
                                    break;
                                } else {
                                    dVar.onNext(poll);
                                    j4++;
                                    innerQueuedSubscriber.request(1L);
                                }
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                this.f78167l = null;
                                innerQueuedSubscriber.cancel();
                                e();
                                dVar.onError(th);
                                return;
                            }
                        }
                    }
                    z9 = false;
                    if (i10 == 0) {
                        if (this.f78165j) {
                            e();
                            return;
                        } else if (errorMode == ErrorMode.IMMEDIATE && this.f78161f.get() != null) {
                            this.f78167l = null;
                            innerQueuedSubscriber.cancel();
                            e();
                            this.f78161f.tryTerminateConsumer(this.f78156a);
                            return;
                        } else {
                            boolean isDone2 = innerQueuedSubscriber.isDone();
                            boolean isEmpty = queue.isEmpty();
                            if (isDone2 && isEmpty) {
                                this.f78167l = null;
                                this.f78164i.request(1L);
                                innerQueuedSubscriber = null;
                                z9 = true;
                            }
                        }
                    }
                }
                if (j4 != 0 && j10 != Long.MAX_VALUE) {
                    this.f78162g.addAndGet(-j4);
                }
                if (z9) {
                    innerQueuedSubscriber2 = innerQueuedSubscriber;
                    i11 = i4;
                } else {
                    i11 = addAndGet(-i4);
                    if (i11 == 0) {
                        return;
                    }
                    innerQueuedSubscriber2 = innerQueuedSubscriber;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.g
        public void c(InnerQueuedSubscriber<R> inner, Throwable e4) {
            if (this.f78161f.tryAddThrowableOrReport(e4)) {
                inner.setDone();
                if (this.f78160e != ErrorMode.END) {
                    this.f78164i.cancel();
                }
                b();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78165j) {
                return;
            }
            this.f78165j = true;
            this.f78164i.cancel();
            this.f78161f.tryTerminateAndReport();
            i();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.g
        public void d(InnerQueuedSubscriber<R> inner, R value) {
            if (inner.queue().offer(value)) {
                b();
                return;
            }
            inner.cancel();
            c(inner, new MissingBackpressureException());
        }

        void e() {
            InnerQueuedSubscriber<R> innerQueuedSubscriber = this.f78167l;
            this.f78167l = null;
            if (innerQueuedSubscriber != null) {
                innerQueuedSubscriber.cancel();
            }
            while (true) {
                InnerQueuedSubscriber<R> poll = this.f78163h.poll();
                if (poll == null) {
                    return;
                }
                poll.cancel();
            }
        }

        void i() {
            if (getAndIncrement() == 0) {
                do {
                    e();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78166k = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78161f.tryAddThrowableOrReport(t9)) {
                this.f78166k = true;
                b();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                org.reactivestreams.c<? extends R> apply = this.f78157b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                org.reactivestreams.c<? extends R> cVar = apply;
                InnerQueuedSubscriber<R> innerQueuedSubscriber = new InnerQueuedSubscriber<>(this, this.f78159d);
                if (this.f78165j) {
                    return;
                }
                this.f78163h.offer(innerQueuedSubscriber);
                cVar.i(innerQueuedSubscriber);
                if (this.f78165j) {
                    innerQueuedSubscriber.cancel();
                    i();
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78164i.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78164i, s9)) {
                this.f78164i = s9;
                this.f78156a.onSubscribe(this);
                int i4 = this.f78158c;
                s9.request(i4 == Integer.MAX_VALUE ? Long.MAX_VALUE : i4);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78162g, n9);
                b();
            }
        }
    }

    public w(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends org.reactivestreams.c<? extends R>> mapper, int maxConcurrency, int prefetch, ErrorMode errorMode) {
        super(source);
        this.f78151c = mapper;
        this.f78152d = maxConcurrency;
        this.f78153e = prefetch;
        this.f78154f = errorMode;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f76811b.G6(new a(s9, this.f78151c, this.f78152d, this.f78153e, this.f78154f));
    }
}
