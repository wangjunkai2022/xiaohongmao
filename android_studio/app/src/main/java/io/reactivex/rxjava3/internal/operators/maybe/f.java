package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeConcatIterable.java */
/* loaded from: classes4.dex */
public final class f<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.b0<? extends T>> f78551b;

    /* compiled from: MaybeConcatIterable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.y<T>, org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f78552g = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78553a;

        /* renamed from: e  reason: collision with root package name */
        final Iterator<? extends io.reactivex.rxjava3.core.b0<? extends T>> f78557e;

        /* renamed from: f  reason: collision with root package name */
        long f78558f;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f78554b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f78556d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f78555c = new AtomicReference<>(NotificationLite.COMPLETE);

        a(org.reactivestreams.d<? super T> actual, Iterator<? extends io.reactivex.rxjava3.core.b0<? extends T>> sources) {
            this.f78553a = actual;
            this.f78557e = sources;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f78555c;
            org.reactivestreams.d<? super T> dVar = this.f78553a;
            SequentialDisposable sequentialDisposable = this.f78556d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z9 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f78558f;
                        if (j4 != this.f78554b.get()) {
                            this.f78558f = j4 + 1;
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
                            if (this.f78557e.hasNext()) {
                                try {
                                    io.reactivex.rxjava3.core.b0<? extends T> next = this.f78557e.next();
                                    Objects.requireNonNull(next, "The source Iterator returned a null MaybeSource");
                                    next.b(this);
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    dVar.onError(th);
                                    return;
                                }
                            } else {
                                dVar.onComplete();
                            }
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
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
            this.f78556d.dispose();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78555c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78553a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f78556d.replace(d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78555c.lazySet(value);
            a();
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78554b, n9);
                a();
            }
        }
    }

    public f(Iterable<? extends io.reactivex.rxjava3.core.b0<? extends T>> sources) {
        this.f78551b = sources;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        try {
            Iterator<? extends io.reactivex.rxjava3.core.b0<? extends T>> it = this.f78551b.iterator();
            Objects.requireNonNull(it, "The sources Iterable returned a null Iterator");
            a aVar = new a(s9, it);
            s9.onSubscribe(aVar);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
