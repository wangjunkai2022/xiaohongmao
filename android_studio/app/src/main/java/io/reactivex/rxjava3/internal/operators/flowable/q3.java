package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.p3;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableSequenceEqualSingle.java */
/* loaded from: classes4.dex */
public final class q3<T> extends io.reactivex.rxjava3.core.p0<Boolean> implements io.reactivex.rxjava3.internal.fuseable.d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77827a;

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77828b;

    /* renamed from: c  reason: collision with root package name */
    final q7.d<? super T, ? super T> f77829c;

    /* renamed from: d  reason: collision with root package name */
    final int f77830d;

    /* compiled from: FlowableSequenceEqualSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f, p3.b {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77831h = -6178010334400373240L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f77832a;

        /* renamed from: b  reason: collision with root package name */
        final q7.d<? super T, ? super T> f77833b;

        /* renamed from: c  reason: collision with root package name */
        final p3.c<T> f77834c;

        /* renamed from: d  reason: collision with root package name */
        final p3.c<T> f77835d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f77836e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        T f77837f;

        /* renamed from: g  reason: collision with root package name */
        T f77838g;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, int prefetch, q7.d<? super T, ? super T> comparer) {
            this.f77832a = actual;
            this.f77833b = comparer;
            this.f77834c = new p3.c<>(this, prefetch);
            this.f77835d = new p3.c<>(this, prefetch);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p3.b
        public void a(Throwable t9) {
            if (this.f77836e.tryAddThrowableOrReport(t9)) {
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p3.b
        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            do {
                io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f77834c.f77757e;
                io.reactivex.rxjava3.internal.fuseable.q<T> qVar2 = this.f77835d.f77757e;
                if (qVar != null && qVar2 != null) {
                    while (!isDisposed()) {
                        if (this.f77836e.get() != null) {
                            c();
                            this.f77836e.tryTerminateConsumer(this.f77832a);
                            return;
                        }
                        boolean z9 = this.f77834c.f77758f;
                        T t9 = this.f77837f;
                        if (t9 == null) {
                            try {
                                t9 = qVar.poll();
                                this.f77837f = t9;
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                c();
                                this.f77836e.tryAddThrowableOrReport(th);
                                this.f77836e.tryTerminateConsumer(this.f77832a);
                                return;
                            }
                        }
                        boolean z10 = t9 == null;
                        boolean z11 = this.f77835d.f77758f;
                        T t10 = this.f77838g;
                        if (t10 == null) {
                            try {
                                t10 = qVar2.poll();
                                this.f77838g = t10;
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                c();
                                this.f77836e.tryAddThrowableOrReport(th2);
                                this.f77836e.tryTerminateConsumer(this.f77832a);
                                return;
                            }
                        }
                        boolean z12 = t10 == null;
                        if (z9 && z11 && z10 && z12) {
                            this.f77832a.onSuccess(Boolean.TRUE);
                            return;
                        } else if (z9 && z11 && z10 != z12) {
                            c();
                            this.f77832a.onSuccess(Boolean.FALSE);
                            return;
                        } else if (!z10 && !z12) {
                            try {
                                if (!this.f77833b.a(t9, t10)) {
                                    c();
                                    this.f77832a.onSuccess(Boolean.FALSE);
                                    return;
                                }
                                this.f77837f = null;
                                this.f77838g = null;
                                this.f77834c.c();
                                this.f77835d.c();
                            } catch (Throwable th3) {
                                io.reactivex.rxjava3.exceptions.a.b(th3);
                                c();
                                this.f77836e.tryAddThrowableOrReport(th3);
                                this.f77836e.tryTerminateConsumer(this.f77832a);
                                return;
                            }
                        }
                    }
                    this.f77834c.b();
                    this.f77835d.b();
                    return;
                } else if (isDisposed()) {
                    this.f77834c.b();
                    this.f77835d.b();
                    return;
                } else if (this.f77836e.get() != null) {
                    c();
                    this.f77836e.tryTerminateConsumer(this.f77832a);
                    return;
                }
                i4 = addAndGet(-i4);
            } while (i4 != 0);
        }

        void c() {
            this.f77834c.a();
            this.f77834c.b();
            this.f77835d.a();
            this.f77835d.b();
        }

        void d(org.reactivestreams.c<? extends T> source1, org.reactivestreams.c<? extends T> source2) {
            source1.i(this.f77834c);
            source2.i(this.f77835d);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77834c.a();
            this.f77835d.a();
            this.f77836e.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f77834c.b();
                this.f77835d.b();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77834c.get() == SubscriptionHelper.CANCELLED;
        }
    }

    public q3(org.reactivestreams.c<? extends T> first, org.reactivestreams.c<? extends T> second, q7.d<? super T, ? super T> comparer, int prefetch) {
        this.f77827a = first;
        this.f77828b = second;
        this.f77829c = comparer;
        this.f77830d = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.p0
    public void M1(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        a aVar = new a(observer, this.f77830d, this.f77829c);
        observer.onSubscribe(aVar);
        aVar.d(this.f77827a, this.f77828b);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<Boolean> c() {
        return io.reactivex.rxjava3.plugins.a.P(new p3(this.f77827a, this.f77828b, this.f77829c, this.f77830d));
    }
}
