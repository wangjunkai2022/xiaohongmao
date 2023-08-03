package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeConcatArrayDelayError.java */
/* loaded from: classes3.dex */
public final class e<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f73256b;

    /* compiled from: MaybeConcatArrayDelayError.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.t<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73257i = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73258a;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.w<? extends T>[] f73262e;

        /* renamed from: g  reason: collision with root package name */
        int f73264g;

        /* renamed from: h  reason: collision with root package name */
        long f73265h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f73259b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f73261d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f73260c = new AtomicReference<>(NotificationLite.COMPLETE);

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f73263f = new AtomicThrowable();

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.w<? extends T>[] wVarArr) {
            this.f73258a = dVar;
            this.f73262e = wVarArr;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f73260c;
            org.reactivestreams.d<? super T> dVar = this.f73258a;
            SequentialDisposable sequentialDisposable = this.f73261d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z9 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f73265h;
                        if (j4 != this.f73259b.get()) {
                            this.f73265h = j4 + 1;
                            atomicReference.lazySet(null);
                            dVar.onNext(obj);
                        } else {
                            z9 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z9 && !sequentialDisposable.isDisposed()) {
                        int i4 = this.f73264g;
                        io.reactivex.w<? extends T>[] wVarArr = this.f73262e;
                        if (i4 == wVarArr.length) {
                            if (this.f73263f.get() != null) {
                                dVar.onError(this.f73263f.terminate());
                                return;
                            } else {
                                dVar.onComplete();
                                return;
                            }
                        }
                        this.f73264g = i4 + 1;
                        wVarArr[i4].b(this);
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
            this.f73261d.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73260c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73260c.lazySet(NotificationLite.COMPLETE);
            if (this.f73263f.addThrowable(th)) {
                a();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73261d.replace(cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73260c.lazySet(t9);
            a();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73259b, j4);
                a();
            }
        }
    }

    public e(io.reactivex.w<? extends T>[] wVarArr) {
        this.f73256b = wVarArr;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar, this.f73256b);
        dVar.onSubscribe(aVar);
        aVar.a();
    }
}
