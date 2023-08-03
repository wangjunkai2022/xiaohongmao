package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: BlockingObservableLatest.java */
/* loaded from: classes4.dex */
public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79245a;

    /* compiled from: BlockingObservableLatest.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.observers.e<io.reactivex.rxjava3.core.d0<T>> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.core.d0<T> f79246b;

        /* renamed from: c  reason: collision with root package name */
        final Semaphore f79247c = new Semaphore(0);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.core.d0<T>> f79248d = new AtomicReference<>();

        a() {
        }

        @Override // io.reactivex.rxjava3.core.n0
        /* renamed from: b */
        public void onNext(io.reactivex.rxjava3.core.d0<T> args) {
            if (this.f79248d.getAndSet(args) == null) {
                this.f79247c.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            io.reactivex.rxjava3.core.d0<T> d0Var = this.f79246b;
            if (d0Var != null && d0Var.g()) {
                throw io.reactivex.rxjava3.internal.util.g.i(this.f79246b.d());
            }
            if (this.f79246b == null) {
                try {
                    io.reactivex.rxjava3.internal.util.c.b();
                    this.f79247c.acquire();
                    io.reactivex.rxjava3.core.d0<T> andSet = this.f79248d.getAndSet(null);
                    this.f79246b = andSet;
                    if (andSet.g()) {
                        throw io.reactivex.rxjava3.internal.util.g.i(andSet.d());
                    }
                } catch (InterruptedException e4) {
                    dispose();
                    this.f79246b = io.reactivex.rxjava3.core.d0.b(e4);
                    throw io.reactivex.rxjava3.internal.util.g.i(e4);
                }
            }
            return this.f79246b.h();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T e4 = this.f79246b.e();
                this.f79246b = null;
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public c(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79245a = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        io.reactivex.rxjava3.core.g0.i8(this.f79245a).P3().a(aVar);
        return aVar;
    }
}
