package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: BlockingObservableIterable.java */
/* loaded from: classes4.dex */
public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79197a;

    /* renamed from: b  reason: collision with root package name */
    final int f79198b;

    /* compiled from: BlockingObservableIterable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, Iterator<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: f  reason: collision with root package name */
        private static final long f79199f = 6695226475494099826L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f79200a;

        /* renamed from: b  reason: collision with root package name */
        final Lock f79201b;

        /* renamed from: c  reason: collision with root package name */
        final Condition f79202c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f79203d;

        /* renamed from: e  reason: collision with root package name */
        volatile Throwable f79204e;

        a(int batchSize) {
            this.f79200a = new io.reactivex.rxjava3.internal.queue.b<>(batchSize);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f79201b = reentrantLock;
            this.f79202c = reentrantLock.newCondition();
        }

        void a() {
            this.f79201b.lock();
            try {
                this.f79202c.signalAll();
            } finally {
                this.f79201b.unlock();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z9 = this.f79203d;
                boolean isEmpty = this.f79200a.isEmpty();
                if (z9) {
                    Throwable th = this.f79204e;
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
                try {
                    io.reactivex.rxjava3.internal.util.c.b();
                    this.f79201b.lock();
                    while (!this.f79203d && this.f79200a.isEmpty() && !isDisposed()) {
                        this.f79202c.await();
                    }
                    this.f79201b.unlock();
                } catch (InterruptedException e4) {
                    DisposableHelper.dispose(this);
                    a();
                    throw io.reactivex.rxjava3.internal.util.g.i(e4);
                }
            }
            Throwable th2 = this.f79204e;
            if (th2 == null) {
                return false;
            }
            throw io.reactivex.rxjava3.internal.util.g.i(th2);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                return this.f79200a.poll();
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79203d = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79204e = t9;
            this.f79203d = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79200a.offer(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public b(io.reactivex.rxjava3.core.l0<? extends T> source, int bufferSize) {
        this.f79197a = source;
        this.f79198b = bufferSize;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f79198b);
        this.f79197a.a(aVar);
        return aVar;
    }
}
