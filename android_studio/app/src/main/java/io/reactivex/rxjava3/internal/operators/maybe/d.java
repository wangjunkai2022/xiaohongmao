package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeConcatArray.java */
/* loaded from: classes4.dex */
public final class d<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T>[] f78501b;

    /* compiled from: MaybeConcatArray.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.y<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f78502h = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78503a;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.b0<? extends T>[] f78507e;

        /* renamed from: f  reason: collision with root package name */
        int f78508f;

        /* renamed from: g  reason: collision with root package name */
        long f78509g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f78504b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f78506d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f78505c = new AtomicReference<>(NotificationLite.COMPLETE);

        a(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.core.b0<? extends T>[] sources) {
            this.f78503a = actual;
            this.f78507e = sources;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f78505c;
            org.reactivestreams.d<? super T> dVar = this.f78503a;
            SequentialDisposable sequentialDisposable = this.f78506d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z9 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f78509g;
                        if (j4 != this.f78504b.get()) {
                            this.f78509g = j4 + 1;
                            atomicReference.lazySet(null);
                            dVar.onNext(obj);
                        } else {
                            z9 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z9 && !sequentialDisposable.isDisposed()) {
                        int i4 = this.f78508f;
                        io.reactivex.rxjava3.core.b0<? extends T>[] b0VarArr = this.f78507e;
                        if (i4 == b0VarArr.length) {
                            dVar.onComplete();
                            return;
                        } else {
                            this.f78508f = i4 + 1;
                            b0VarArr[i4].b(this);
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
            this.f78506d.dispose();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78505c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78503a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f78506d.replace(d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78505c.lazySet(value);
            a();
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78504b, n9);
                a();
            }
        }
    }

    public d(io.reactivex.rxjava3.core.b0<? extends T>[] sources) {
        this.f78501b = sources;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        a aVar = new a(s9, this.f78501b);
        s9.onSubscribe(aVar);
        aVar.a();
    }
}
