package io.reactivex.internal.operators.flowable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: BlockingFlowableLatest.java */
/* loaded from: classes3.dex */
public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f71636a;

    /* compiled from: BlockingFlowableLatest.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.subscribers.b<io.reactivex.y<T>> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        final Semaphore f71637b = new Semaphore(0);

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.y<T>> f71638c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.y<T> f71639d;

        a() {
        }

        @Override // org.reactivestreams.d
        /* renamed from: d */
        public void onNext(io.reactivex.y<T> yVar) {
            if (this.f71638c.getAndSet(yVar) == null) {
                this.f71637b.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            io.reactivex.y<T> yVar = this.f71639d;
            if (yVar != null && yVar.g()) {
                throw io.reactivex.internal.util.g.f(this.f71639d.d());
            }
            io.reactivex.y<T> yVar2 = this.f71639d;
            if ((yVar2 == null || yVar2.h()) && this.f71639d == null) {
                try {
                    io.reactivex.internal.util.c.b();
                    this.f71637b.acquire();
                    io.reactivex.y<T> andSet = this.f71638c.getAndSet(null);
                    this.f71639d = andSet;
                    if (andSet.g()) {
                        throw io.reactivex.internal.util.g.f(andSet.d());
                    }
                } catch (InterruptedException e4) {
                    dispose();
                    this.f71639d = io.reactivex.y.b(e4);
                    throw io.reactivex.internal.util.g.f(e4);
                }
            }
            return this.f71639d.h();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext() && this.f71639d.h()) {
                T e4 = this.f71639d.e();
                this.f71639d = null;
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public c(org.reactivestreams.c<? extends T> cVar) {
        this.f71636a = cVar;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        io.reactivex.j.Y2(this.f71636a).L3().j6(aVar);
        return aVar;
    }
}
