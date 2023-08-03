package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: MaybeMergeArray.java */
/* loaded from: classes4.dex */
public final class y0<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T>[] f78807b;

    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends ConcurrentLinkedQueue<T> implements d<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78808c = -4025173261791142821L;

        /* renamed from: a  reason: collision with root package name */
        int f78809a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f78810b = new AtomicInteger();

        a() {
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d
        public void c() {
            poll();
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d
        public int d() {
            return this.f78809a;
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d
        public int e() {
            return this.f78810b.get();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T v12, T v22) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, io.reactivex.rxjava3.internal.operators.maybe.y0.d, io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            T t9 = (T) super.poll();
            if (t9 != null) {
                this.f78809a++;
            }
            return t9;
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue, io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T e4) {
            this.f78810b.getAndIncrement();
            return super.offer(e4);
        }
    }

    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f78811k = -660395290758764731L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78812b;

        /* renamed from: e  reason: collision with root package name */
        final d<Object> f78815e;

        /* renamed from: g  reason: collision with root package name */
        final int f78817g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f78818h;

        /* renamed from: i  reason: collision with root package name */
        boolean f78819i;

        /* renamed from: j  reason: collision with root package name */
        long f78820j;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f78813c = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f78814d = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f78816f = new AtomicThrowable();

        b(org.reactivestreams.d<? super T> actual, int sourceCount, d<Object> queue) {
            this.f78812b = actual;
            this.f78817g = sourceCount;
            this.f78815e = queue;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f78819i) {
                j();
            } else {
                k();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f78818h) {
                return;
            }
            this.f78818h = true;
            this.f78813c.dispose();
            if (getAndIncrement() == 0) {
                this.f78815e.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f78815e.clear();
        }

        boolean isCancelled() {
            return this.f78818h;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f78815e.isEmpty();
        }

        void j() {
            org.reactivestreams.d<? super T> dVar = this.f78812b;
            d<Object> dVar2 = this.f78815e;
            int i4 = 1;
            while (!this.f78818h) {
                Throwable th = this.f78816f.get();
                if (th != null) {
                    dVar2.clear();
                    dVar.onError(th);
                    return;
                }
                boolean z9 = dVar2.e() == this.f78817g;
                if (!dVar2.isEmpty()) {
                    dVar.onNext(null);
                }
                if (z9) {
                    dVar.onComplete();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            dVar2.clear();
        }

        void k() {
            int i4;
            org.reactivestreams.d<? super T> dVar = this.f78812b;
            d<Object> dVar2 = this.f78815e;
            long j4 = this.f78820j;
            int i10 = 1;
            do {
                long j10 = this.f78814d.get();
                while (true) {
                    i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (this.f78818h) {
                        dVar2.clear();
                        return;
                    } else if (this.f78816f.get() != null) {
                        dVar2.clear();
                        this.f78816f.tryTerminateConsumer(this.f78812b);
                        return;
                    } else if (dVar2.d() == this.f78817g) {
                        dVar.onComplete();
                        return;
                    } else {
                        Object poll = dVar2.poll();
                        if (poll == null) {
                            break;
                        } else if (poll != NotificationLite.COMPLETE) {
                            dVar.onNext(poll);
                            j4++;
                        }
                    }
                }
                if (i4 == 0) {
                    if (this.f78816f.get() != null) {
                        dVar2.clear();
                        this.f78816f.tryTerminateConsumer(this.f78812b);
                        return;
                    }
                    while (dVar2.peek() == NotificationLite.COMPLETE) {
                        dVar2.c();
                    }
                    if (dVar2.d() == this.f78817g) {
                        dVar.onComplete();
                        return;
                    }
                }
                this.f78820j = j4;
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78815e.offer(NotificationLite.COMPLETE);
            b();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f78816f.tryAddThrowableOrReport(e4)) {
                this.f78813c.dispose();
                this.f78815e.offer(NotificationLite.COMPLETE);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f78813c.b(d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78815e.offer(value);
            b();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            T t9;
            do {
                t9 = (T) this.f78815e.poll();
            } while (t9 == NotificationLite.COMPLETE);
            return t9;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78814d, n9);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f78819i = true;
                return 2;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes4.dex */
    public interface d<T> extends io.reactivex.rxjava3.internal.fuseable.q<T> {
        void c();

        int d();

        int e();

        T peek();

        @Override // java.util.Queue, io.reactivex.rxjava3.internal.operators.maybe.y0.d, io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        T poll();
    }

    public y0(io.reactivex.rxjava3.core.b0<? extends T>[] sources) {
        this.f78807b = sources;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        d aVar;
        io.reactivex.rxjava3.core.b0[] b0VarArr = this.f78807b;
        int length = b0VarArr.length;
        if (length <= io.reactivex.rxjava3.core.m.V()) {
            aVar = new c(length);
        } else {
            aVar = new a();
        }
        b bVar = new b(s9, length, aVar);
        s9.onSubscribe(bVar);
        AtomicThrowable atomicThrowable = bVar.f78816f;
        for (io.reactivex.rxjava3.core.b0 b0Var : b0VarArr) {
            if (bVar.isCancelled() || atomicThrowable.get() != null) {
                return;
            }
            b0Var.b(bVar);
        }
    }

    /* compiled from: MaybeMergeArray.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends AtomicReferenceArray<T> implements d<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78821c = -7969063454040569579L;

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f78822a;

        /* renamed from: b  reason: collision with root package name */
        int f78823b;

        c(int length) {
            super(length);
            this.f78822a = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d
        public void c() {
            int i4 = this.f78823b;
            lazySet(i4, null);
            this.f78823b = i4 + 1;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            while (poll() != null && !isEmpty()) {
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d
        public int d() {
            return this.f78823b;
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d
        public int e() {
            return this.f78822a.get();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f78823b == e();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T value) {
            Objects.requireNonNull(value, "value is null");
            int andIncrement = this.f78822a.getAndIncrement();
            if (andIncrement < length()) {
                lazySet(andIncrement, value);
                return true;
            }
            return false;
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d
        public T peek() {
            int i4 = this.f78823b;
            if (i4 == length()) {
                return null;
            }
            return get(i4);
        }

        @Override // io.reactivex.rxjava3.internal.operators.maybe.y0.d, java.util.Queue, io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            int i4 = this.f78823b;
            if (i4 == length()) {
                return null;
            }
            AtomicInteger atomicInteger = this.f78822a;
            do {
                T t9 = get(i4);
                if (t9 != null) {
                    this.f78823b = i4 + 1;
                    lazySet(i4, null);
                    return t9;
                }
            } while (atomicInteger.get() != i4);
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(T v12, T v22) {
            throw new UnsupportedOperationException();
        }
    }
}
