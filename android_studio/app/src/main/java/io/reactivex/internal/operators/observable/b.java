package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: BlockingObservableIterable.java */
/* loaded from: classes3.dex */
public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f73883a;

    /* renamed from: b  reason: collision with root package name */
    final int f73884b;

    /* compiled from: BlockingObservableIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, Iterator<T>, io.reactivex.disposables.c {

        /* renamed from: f  reason: collision with root package name */
        private static final long f73885f = 6695226475494099826L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f73886a;

        /* renamed from: b  reason: collision with root package name */
        final Lock f73887b;

        /* renamed from: c  reason: collision with root package name */
        final Condition f73888c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f73889d;

        /* renamed from: e  reason: collision with root package name */
        volatile Throwable f73890e;

        a(int i4) {
            this.f73886a = new io.reactivex.internal.queue.b<>(i4);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f73887b = reentrantLock;
            this.f73888c = reentrantLock.newCondition();
        }

        void a() {
            this.f73887b.lock();
            try {
                this.f73888c.signalAll();
            } finally {
                this.f73887b.unlock();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z9 = this.f73889d;
                boolean isEmpty = this.f73886a.isEmpty();
                if (z9) {
                    Throwable th = this.f73890e;
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
                try {
                    io.reactivex.internal.util.c.b();
                    this.f73887b.lock();
                    while (!this.f73889d && this.f73886a.isEmpty() && !isDisposed()) {
                        this.f73888c.await();
                    }
                    this.f73887b.unlock();
                } catch (InterruptedException e4) {
                    DisposableHelper.dispose(this);
                    a();
                    throw io.reactivex.internal.util.g.f(e4);
                }
            }
            Throwable th2 = this.f73890e;
            if (th2 == null) {
                return false;
            }
            throw io.reactivex.internal.util.g.f(th2);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                return this.f73886a.poll();
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73889d = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73890e = th;
            this.f73889d = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73886a.offer(t9);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public b(io.reactivex.e0<? extends T> e0Var, int i4) {
        this.f73883a = e0Var;
        this.f73884b = i4;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f73884b);
        this.f73883a.subscribe(aVar);
        return aVar;
    }
}
