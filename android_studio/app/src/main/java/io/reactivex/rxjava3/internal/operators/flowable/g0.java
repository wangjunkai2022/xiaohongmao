package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableDebounceTimed.java */
/* loaded from: classes4.dex */
public final class g0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77165c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77166d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77167e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableDebounceTimed.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements Runnable, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77168e = 6812032969491025141L;

        /* renamed from: a  reason: collision with root package name */
        final T f77169a;

        /* renamed from: b  reason: collision with root package name */
        final long f77170b;

        /* renamed from: c  reason: collision with root package name */
        final b<T> f77171c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f77172d = new AtomicBoolean();

        a(T value, long idx, b<T> parent) {
            this.f77169a = value;
            this.f77170b = idx;
            this.f77171c = parent;
        }

        void a() {
            if (this.f77172d.compareAndSet(false, true)) {
                this.f77171c.a(this.f77170b, this.f77169a, this);
            }
        }

        public void b(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableDebounceTimed.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f77173i = -9102637559663639004L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77174a;

        /* renamed from: b  reason: collision with root package name */
        final long f77175b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f77176c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f77177d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f77178e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f77179f;

        /* renamed from: g  reason: collision with root package name */
        volatile long f77180g;

        /* renamed from: h  reason: collision with root package name */
        boolean f77181h;

        b(org.reactivestreams.d<? super T> actual, long timeout, TimeUnit unit, o0.c worker) {
            this.f77174a = actual;
            this.f77175b = timeout;
            this.f77176c = unit;
            this.f77177d = worker;
        }

        void a(long idx, T t9, a<T> emitter) {
            if (idx == this.f77180g) {
                if (get() != 0) {
                    this.f77174a.onNext(t9);
                    io.reactivex.rxjava3.internal.util.b.e(this, 1L);
                    emitter.dispose();
                    return;
                }
                cancel();
                this.f77174a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77178e.cancel();
            this.f77177d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77181h) {
                return;
            }
            this.f77181h = true;
            io.reactivex.rxjava3.disposables.f fVar = this.f77179f;
            if (fVar != null) {
                fVar.dispose();
            }
            a aVar = (a) fVar;
            if (aVar != null) {
                aVar.a();
            }
            this.f77174a.onComplete();
            this.f77177d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77181h) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77181h = true;
            io.reactivex.rxjava3.disposables.f fVar = this.f77179f;
            if (fVar != null) {
                fVar.dispose();
            }
            this.f77174a.onError(t9);
            this.f77177d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77181h) {
                return;
            }
            long j4 = this.f77180g + 1;
            this.f77180g = j4;
            io.reactivex.rxjava3.disposables.f fVar = this.f77179f;
            if (fVar != null) {
                fVar.dispose();
            }
            a aVar = new a(t9, j4, this);
            this.f77179f = aVar;
            aVar.b(this.f77177d.c(aVar, this.f77175b, this.f77176c));
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77178e, s9)) {
                this.f77178e = s9;
                this.f77174a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }
    }

    public g0(io.reactivex.rxjava3.core.m<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f77165c = timeout;
        this.f77166d = unit;
        this.f77167e = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new b(new io.reactivex.rxjava3.subscribers.e(s9), this.f77165c, this.f77166d, this.f77167e.d()));
    }
}
