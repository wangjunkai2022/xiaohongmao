package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: BlockingFlowableIterable.java */
/* loaded from: classes3.dex */
public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f71587a;

    /* renamed from: b  reason: collision with root package name */
    final int f71588b;

    /* compiled from: BlockingFlowableIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T>, Iterator<T>, Runnable, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f71589i = 6695226475494099826L;

        /* renamed from: a  reason: collision with root package name */
        final SpscArrayQueue<T> f71590a;

        /* renamed from: b  reason: collision with root package name */
        final long f71591b;

        /* renamed from: c  reason: collision with root package name */
        final long f71592c;

        /* renamed from: d  reason: collision with root package name */
        final Lock f71593d;

        /* renamed from: e  reason: collision with root package name */
        final Condition f71594e;

        /* renamed from: f  reason: collision with root package name */
        long f71595f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f71596g;

        /* renamed from: h  reason: collision with root package name */
        volatile Throwable f71597h;

        a(int i4) {
            this.f71590a = new SpscArrayQueue<>(i4);
            this.f71591b = i4;
            this.f71592c = i4 - (i4 >> 2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f71593d = reentrantLock;
            this.f71594e = reentrantLock.newCondition();
        }

        void a() {
            this.f71593d.lock();
            try {
                this.f71594e.signalAll();
            } finally {
                this.f71593d.unlock();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            SubscriptionHelper.cancel(this);
            a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z9 = this.f71596g;
                boolean isEmpty = this.f71590a.isEmpty();
                if (z9) {
                    Throwable th = this.f71597h;
                    if (th != null) {
                        throw io.reactivex.internal.util.g.f(th);
                    }
                    if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                io.reactivex.internal.util.c.b();
                this.f71593d.lock();
                while (!this.f71596g && this.f71590a.isEmpty() && !isDisposed()) {
                    try {
                        try {
                            this.f71594e.await();
                        } catch (InterruptedException e4) {
                            run();
                            throw io.reactivex.internal.util.g.f(e4);
                        }
                    } finally {
                        this.f71593d.unlock();
                    }
                }
            }
            Throwable th2 = this.f71597h;
            if (th2 == null) {
                return false;
            }
            throw io.reactivex.internal.util.g.f(th2);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T poll = this.f71590a.poll();
                long j4 = this.f71595f + 1;
                if (j4 == this.f71592c) {
                    this.f71595f = 0L;
                    get().request(j4);
                } else {
                    this.f71595f = j4;
                }
                return poll;
            }
            throw new NoSuchElementException();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71596g = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f71597h = th;
            this.f71596g = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f71590a.offer(t9)) {
                SubscriptionHelper.cancel(this);
                onError(new MissingBackpressureException("Queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, this.f71591b);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }

        @Override // java.lang.Runnable
        public void run() {
            SubscriptionHelper.cancel(this);
            a();
        }
    }

    public b(io.reactivex.j<T> jVar, int i4) {
        this.f71587a = jVar;
        this.f71588b = i4;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f71588b);
        this.f71587a.j6(aVar);
        return aVar;
    }
}
