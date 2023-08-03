package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: BlockingFlowableLatest.java */
/* loaded from: classes4.dex */
public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f76924a;

    /* compiled from: BlockingFlowableLatest.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.subscribers.b<io.reactivex.rxjava3.core.d0<T>> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        final Semaphore f76925b = new Semaphore(0);

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.core.d0<T>> f76926c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.core.d0<T> f76927d;

        a() {
        }

        @Override // org.reactivestreams.d
        /* renamed from: d */
        public void onNext(io.reactivex.rxjava3.core.d0<T> args) {
            if (this.f76926c.getAndSet(args) == null) {
                this.f76925b.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            io.reactivex.rxjava3.core.d0<T> d0Var = this.f76927d;
            if (d0Var != null && d0Var.g()) {
                throw io.reactivex.rxjava3.internal.util.g.i(this.f76927d.d());
            }
            io.reactivex.rxjava3.core.d0<T> d0Var2 = this.f76927d;
            if ((d0Var2 == null || d0Var2.h()) && this.f76927d == null) {
                try {
                    io.reactivex.rxjava3.internal.util.c.b();
                    this.f76925b.acquire();
                    io.reactivex.rxjava3.core.d0<T> andSet = this.f76926c.getAndSet(null);
                    this.f76927d = andSet;
                    if (andSet.g()) {
                        throw io.reactivex.rxjava3.internal.util.g.i(andSet.d());
                    }
                } catch (InterruptedException e4) {
                    dispose();
                    this.f76927d = io.reactivex.rxjava3.core.d0.b(e4);
                    throw io.reactivex.rxjava3.internal.util.g.i(e4);
                }
            }
            return this.f76927d.h();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext() && this.f76927d.h()) {
                T e4 = this.f76927d.e();
                this.f76927d = null;
                return e4;
            }
            throw new NoSuchElementException();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public c(org.reactivestreams.c<? extends T> source) {
        this.f76924a = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        io.reactivex.rxjava3.core.m.i3(this.f76924a).b4().G6(aVar);
        return aVar;
    }
}
