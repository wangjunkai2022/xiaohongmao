package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeConcatArrayDelayError.java */
/* loaded from: classes4.dex */
public final class e<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T>[] f78524b;

    /* compiled from: MaybeConcatArrayDelayError.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.y<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f78525i = 3520831347801429610L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78526a;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.b0<? extends T>[] f78530e;

        /* renamed from: g  reason: collision with root package name */
        int f78532g;

        /* renamed from: h  reason: collision with root package name */
        long f78533h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f78527b = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f78529d = new SequentialDisposable();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<Object> f78528c = new AtomicReference<>(NotificationLite.COMPLETE);

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f78531f = new AtomicThrowable();

        a(org.reactivestreams.d<? super T> actual, io.reactivex.rxjava3.core.b0<? extends T>[] sources) {
            this.f78526a = actual;
            this.f78530e = sources;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.f78528c;
            org.reactivestreams.d<? super T> dVar = this.f78526a;
            SequentialDisposable sequentialDisposable = this.f78529d;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z9 = true;
                    if (obj != NotificationLite.COMPLETE) {
                        long j4 = this.f78533h;
                        if (j4 != this.f78527b.get()) {
                            this.f78533h = j4 + 1;
                            atomicReference.lazySet(null);
                            dVar.onNext(obj);
                        } else {
                            z9 = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z9 && !sequentialDisposable.isDisposed()) {
                        int i4 = this.f78532g;
                        io.reactivex.rxjava3.core.b0<? extends T>[] b0VarArr = this.f78530e;
                        if (i4 == b0VarArr.length) {
                            this.f78531f.tryTerminateConsumer(this.f78526a);
                            return;
                        } else {
                            this.f78532g = i4 + 1;
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
            this.f78529d.dispose();
            this.f78531f.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78528c.lazySet(NotificationLite.COMPLETE);
            a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78528c.lazySet(NotificationLite.COMPLETE);
            if (this.f78531f.tryAddThrowableOrReport(e4)) {
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f78529d.replace(d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78528c.lazySet(value);
            a();
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f78527b, n9);
                a();
            }
        }
    }

    public e(io.reactivex.rxjava3.core.b0<? extends T>[] sources) {
        this.f78524b = sources;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        a aVar = new a(s9, this.f78524b);
        s9.onSubscribe(aVar);
        aVar.a();
    }
}
