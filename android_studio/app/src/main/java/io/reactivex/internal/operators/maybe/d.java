package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeConcatArray.java */
/* loaded from: classes3.dex */
public final class d<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T>[] f73231b;

    /* compiled from: MaybeConcatArray.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.t<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f73232h = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73233a;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.w<? extends T>[] f73237e;

        /* renamed from: f  reason: collision with root package name */
        int f73238f;

        /* renamed from: g  reason: collision with root package name */
        long f73239g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f73234b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f73236d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f73235c = new AtomicReference<>(NotificationLite.COMPLETE);

        a(org.reactivestreams.d<? super T> dVar, io.reactivex.w<? extends T>[] wVarArr) {
            this.f73233a = dVar;
            this.f73237e = wVarArr;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f73235c;
            org.reactivestreams.d<? super T> dVar = this.f73233a;
            SequentialDisposable sequentialDisposable = this.f73236d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z9 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f73239g;
                        if (j4 != this.f73234b.get()) {
                            this.f73239g = j4 + 1;
                            atomicReference.lazySet(null);
                            dVar.onNext(obj);
                        } else {
                            z9 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z9 && !sequentialDisposable.isDisposed()) {
                        int i4 = this.f73238f;
                        io.reactivex.w<? extends T>[] wVarArr = this.f73237e;
                        if (i4 == wVarArr.length) {
                            dVar.onComplete();
                            return;
                        } else {
                            this.f73238f = i4 + 1;
                            wVarArr[i4].b(this);
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
            this.f73236d.dispose();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73235c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73233a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73236d.replace(cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73235c.lazySet(t9);
            a();
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f73234b, j4);
                a();
            }
        }
    }

    public d(io.reactivex.w<? extends T>[] wVarArr) {
        this.f73231b = wVarArr;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar, this.f73231b);
        dVar.onSubscribe(aVar);
        aVar.a();
    }
}
