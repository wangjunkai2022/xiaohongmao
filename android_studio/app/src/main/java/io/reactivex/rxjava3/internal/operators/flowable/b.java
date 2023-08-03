package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: BlockingFlowableIterable.java */
/* loaded from: classes4.dex */
public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f76863a;

    /* renamed from: b  reason: collision with root package name */
    final int f76864b;

    /* compiled from: BlockingFlowableIterable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<T>, Iterator<T>, Runnable, io.reactivex.rxjava3.disposables.f {

        /* renamed from: i  reason: collision with root package name */
        private static final long f76865i = 6695226475494099826L;

        /* renamed from: a  reason: collision with root package name */
        final SpscArrayQueue<T> f76866a;

        /* renamed from: b  reason: collision with root package name */
        final long f76867b;

        /* renamed from: c  reason: collision with root package name */
        final long f76868c;

        /* renamed from: d  reason: collision with root package name */
        final Lock f76869d;

        /* renamed from: e  reason: collision with root package name */
        final Condition f76870e;

        /* renamed from: f  reason: collision with root package name */
        long f76871f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f76872g;

        /* renamed from: h  reason: collision with root package name */
        volatile Throwable f76873h;

        a(int batchSize) {
            this.f76866a = new SpscArrayQueue<>(batchSize);
            this.f76867b = batchSize;
            this.f76868c = batchSize - (batchSize >> 2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f76869d = reentrantLock;
            this.f76870e = reentrantLock.newCondition();
        }

        void a() {
            this.f76869d.lock();
            try {
                this.f76870e.signalAll();
            } finally {
                this.f76869d.unlock();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            SubscriptionHelper.cancel(this);
            a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z9 = this.f76872g;
                boolean isEmpty = this.f76866a.isEmpty();
                if (z9) {
                    Throwable th = this.f76873h;
                    if (th != null) {
                        throw io.reactivex.rxjava3.internal.util.g.i(th);
                    }
                    if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                io.reactivex.rxjava3.internal.util.c.b();
                this.f76869d.lock();
                while (!this.f76872g && this.f76866a.isEmpty() && !isDisposed()) {
                    try {
                        try {
                            this.f76870e.await();
                        } catch (InterruptedException e4) {
                            run();
                            throw io.reactivex.rxjava3.internal.util.g.i(e4);
                        }
                    } finally {
                        this.f76869d.unlock();
                    }
                }
            }
            Throwable th2 = this.f76873h;
            if (th2 == null) {
                return false;
            }
            throw io.reactivex.rxjava3.internal.util.g.i(th2);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T poll = this.f76866a.poll();
                long j4 = this.f76871f + 1;
                if (j4 == this.f76868c) {
                    this.f76871f = 0L;
                    get().request(j4);
                } else {
                    this.f76871f = j4;
                }
                return poll;
            }
            throw new NoSuchElementException();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76872g = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76873h = t9;
            this.f76872g = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (!this.f76866a.offer(t9)) {
                SubscriptionHelper.cancel(this);
                onError(new MissingBackpressureException("Queue full?!"));
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, this.f76867b);
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

    public b(io.reactivex.rxjava3.core.m<T> source, int bufferSize) {
        this.f76863a = source;
        this.f76864b = bufferSize;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f76864b);
        this.f76863a.G6(aVar);
        return aVar;
    }
}
