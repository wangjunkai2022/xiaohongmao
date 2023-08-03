package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeConcatIterable.java */
/* loaded from: classes3.dex */
public final class f<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.w<? extends T>> f73279b;

    /* compiled from: MaybeConcatIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.t<T>, org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f73280g = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73281a;

        /* renamed from: e  reason: collision with root package name */
        final Iterator<? extends io.reactivex.w<? extends T>> f73285e;

        /* renamed from: f  reason: collision with root package name */
        long f73286f;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f73282b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f73284d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f73283c = new AtomicReference<>(NotificationLite.COMPLETE);

        a(org.reactivestreams.d<? super T> dVar, Iterator<? extends io.reactivex.w<? extends T>> it) {
            this.f73281a = dVar;
            this.f73285e = it;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f73283c;
            org.reactivestreams.d<? super T> dVar = this.f73281a;
            SequentialDisposable sequentialDisposable = this.f73284d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z9 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f73286f;
                        if (j4 != this.f73282b.get()) {
                            this.f73286f = j4 + 1;
                            atomicReference.lazySet(null);
                            dVar.onNext(obj);
                        } else {
                            z9 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z9 && !sequentialDisposable.isDisposed()) {
                        try {
                            if (this.f73285e.hasNext()) {
                                try {
                                    ((io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73285e.next(), "The source Iterator returned a null MaybeSource")).b(this);
                                } catch (Throwable th) {
                                    io.reactivex.exceptions.a.b(th);
                                    dVar.onError(th);
                                    return;
                                }
                            } else {
                                dVar.onComplete();
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            dVar.onError(th2);
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73284d.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73283c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73281a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73284d.replace(cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73283c.lazySet(t9);
            a();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73282b, j4);
                a();
            }
        }
    }

    public f(Iterable<? extends io.reactivex.w<? extends T>> iterable) {
        this.f73279b = iterable;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        try {
            a aVar = new a(dVar, (Iterator) io.reactivex.internal.functions.b.g(this.f73279b.iterator(), "The sources Iterable returned a null Iterator"));
            dVar.onSubscribe(aVar);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
