package io.reactivex.internal.operators.observable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: BlockingObservableLatest.java */
/* loaded from: classes3.dex */
public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f73924a;

    /* compiled from: BlockingObservableLatest.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.observers.d<io.reactivex.y<T>> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.y<T> f73925b;

        /* renamed from: c  reason: collision with root package name */
        final Semaphore f73926c = new Semaphore(0);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.y<T>> f73927d = new AtomicReference<>();

        a() {
        }

        @Override // io.reactivex.g0
        /* renamed from: b */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f73927d.getAndSet(yVar) == null) {
                this.f73926c.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            io.reactivex.y<T> yVar = this.f73925b;
            if (yVar != null && yVar.g()) {
                throw io.reactivex.internal.util.g.f(this.f73925b.d());
            }
            if (this.f73925b == null) {
                try {
                    io.reactivex.internal.util.c.b();
                    this.f73926c.acquire();
                    io.reactivex.y<T> andSet = this.f73927d.getAndSet(null);
                    this.f73925b = andSet;
                    if (andSet.g()) {
                        throw io.reactivex.internal.util.g.f(andSet.d());
                    }
                } catch (InterruptedException e4) {
                    dispose();
                    this.f73925b = io.reactivex.y.b(e4);
                    throw io.reactivex.internal.util.g.f(e4);
                }
            }
            return this.f73925b.h();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T e4 = this.f73925b.e();
                this.f73925b = null;
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public c(io.reactivex.e0<T> e0Var) {
        this.f73924a = e0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        io.reactivex.z.wrap(this.f73924a).materialize().subscribe(aVar);
        return aVar;
    }
}
