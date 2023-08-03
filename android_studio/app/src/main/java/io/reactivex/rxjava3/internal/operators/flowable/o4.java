package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.operators.flowable.p4;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTimeout.java */
/* loaded from: classes4.dex */
public final class o4<T, U, V> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<U> f77676c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<V>> f77677d;

    /* renamed from: e  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77678e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes4.dex */
    public static final class a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f77679c = 8708641127342403073L;

        /* renamed from: a  reason: collision with root package name */
        final c f77680a;

        /* renamed from: b  reason: collision with root package name */
        final long f77681b;

        a(long idx, c parent) {
            this.f77681b = idx;
            this.f77680a = parent;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f77680a.b(this.f77681b);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            Object obj = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (obj != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f77680a.a(this.f77681b, t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            org.reactivestreams.e eVar = (org.reactivestreams.e) get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (eVar != subscriptionHelper) {
                eVar.cancel();
                lazySet(subscriptionHelper);
                this.f77680a.b(this.f77681b);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.r<T>, c {

        /* renamed from: q  reason: collision with root package name */
        private static final long f77682q = 3764492702657003550L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77683j;

        /* renamed from: k  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<?>> f77684k;

        /* renamed from: l  reason: collision with root package name */
        final SequentialDisposable f77685l;

        /* renamed from: m  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77686m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicLong f77687n;

        /* renamed from: o  reason: collision with root package name */
        org.reactivestreams.c<? extends T> f77688o;

        /* renamed from: p  reason: collision with root package name */
        long f77689p;

        b(org.reactivestreams.d<? super T> actual, q7.o<? super T, ? extends org.reactivestreams.c<?>> itemTimeoutIndicator, org.reactivestreams.c<? extends T> fallback) {
            super(true);
            this.f77683j = actual;
            this.f77684k = itemTimeoutIndicator;
            this.f77685l = new SequentialDisposable();
            this.f77686m = new AtomicReference<>();
            this.f77688o = fallback;
            this.f77687n = new AtomicLong();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.o4.c
        public void a(long idx, Throwable ex) {
            if (this.f77687n.compareAndSet(idx, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f77686m);
                this.f77683j.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p4.d
        public void b(long idx) {
            if (this.f77687n.compareAndSet(idx, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f77686m);
                org.reactivestreams.c<? extends T> cVar = this.f77688o;
                this.f77688o = null;
                long j4 = this.f77689p;
                if (j4 != 0) {
                    produced(j4);
                }
                cVar.i(new p4.a(this.f77683j, this));
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77685l.dispose();
        }

        void e(org.reactivestreams.c<?> firstTimeoutIndicator) {
            if (firstTimeoutIndicator != null) {
                a aVar = new a(0L, this);
                if (this.f77685l.replace(aVar)) {
                    firstTimeoutIndicator.i(aVar);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77687n.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77685l.dispose();
                this.f77683j.onComplete();
                this.f77685l.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77687n.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77685l.dispose();
                this.f77683j.onError(t9);
                this.f77685l.dispose();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f77687n.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = j4 + 1;
                if (this.f77687n.compareAndSet(j4, j10)) {
                    io.reactivex.rxjava3.disposables.f fVar = this.f77685l.get();
                    if (fVar != null) {
                        fVar.dispose();
                    }
                    this.f77689p++;
                    this.f77683j.onNext(t9);
                    try {
                        org.reactivestreams.c<?> apply = this.f77684k.apply(t9);
                        Objects.requireNonNull(apply, "The itemTimeoutIndicator returned a null Publisher.");
                        org.reactivestreams.c<?> cVar = apply;
                        a aVar = new a(j10, this);
                        if (this.f77685l.replace(aVar)) {
                            cVar.i(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f77686m.get().cancel();
                        this.f77687n.getAndSet(Long.MAX_VALUE);
                        this.f77683j.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this.f77686m, s9)) {
                setSubscription(s9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes4.dex */
    public interface c extends p4.d {
        void a(long idx, Throwable ex);
    }

    /* compiled from: FlowableTimeout.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, c {

        /* renamed from: f  reason: collision with root package name */
        private static final long f77690f = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77691a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<?>> f77692b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f77693c = new SequentialDisposable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77694d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f77695e = new AtomicLong();

        d(org.reactivestreams.d<? super T> actual, q7.o<? super T, ? extends org.reactivestreams.c<?>> itemTimeoutIndicator) {
            this.f77691a = actual;
            this.f77692b = itemTimeoutIndicator;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.o4.c
        public void a(long idx, Throwable ex) {
            if (compareAndSet(idx, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f77694d);
                this.f77691a.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p4.d
        public void b(long idx) {
            if (compareAndSet(idx, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f77694d);
                this.f77691a.onError(new TimeoutException());
            }
        }

        void c(org.reactivestreams.c<?> firstTimeoutIndicator) {
            if (firstTimeoutIndicator != null) {
                a aVar = new a(0L, this);
                if (this.f77693c.replace(aVar)) {
                    firstTimeoutIndicator.i(aVar);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f77694d);
            this.f77693c.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77693c.dispose();
                this.f77691a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77693c.dispose();
                this.f77691a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (compareAndSet(j4, j10)) {
                    io.reactivex.rxjava3.disposables.f fVar = this.f77693c.get();
                    if (fVar != null) {
                        fVar.dispose();
                    }
                    this.f77691a.onNext(t9);
                    try {
                        org.reactivestreams.c<?> apply = this.f77692b.apply(t9);
                        Objects.requireNonNull(apply, "The itemTimeoutIndicator returned a null Publisher.");
                        org.reactivestreams.c<?> cVar = apply;
                        a aVar = new a(j10, this);
                        if (this.f77693c.replace(aVar)) {
                            cVar.i(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f77694d.get().cancel();
                        getAndSet(Long.MAX_VALUE);
                        this.f77691a.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f77694d, this.f77695e, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f77694d, this.f77695e, n9);
        }
    }

    public o4(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<U> firstTimeoutIndicator, q7.o<? super T, ? extends org.reactivestreams.c<V>> itemTimeoutIndicator, org.reactivestreams.c<? extends T> other) {
        super(source);
        this.f77676c = firstTimeoutIndicator;
        this.f77677d = itemTimeoutIndicator;
        this.f77678e = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (this.f77678e == null) {
            d dVar = new d(s9, this.f77677d);
            s9.onSubscribe(dVar);
            dVar.c(this.f77676c);
            this.f76811b.G6(dVar);
            return;
        }
        b bVar = new b(s9, this.f77677d, this.f77678e);
        s9.onSubscribe(bVar);
        bVar.e(this.f77676c);
        this.f76811b.G6(bVar);
    }
}
