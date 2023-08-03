package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapCompletable.java */
/* loaded from: classes4.dex */
public final class a1<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f76817c;

    /* renamed from: d  reason: collision with root package name */
    final int f76818d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f76819e;

    /* compiled from: FlowableFlatMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f76820j = 8443155186132538303L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76821b;

        /* renamed from: d  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f76823d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f76824e;

        /* renamed from: g  reason: collision with root package name */
        final int f76826g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f76827h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f76828i;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f76822c = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76825f = new io.reactivex.rxjava3.disposables.c();

        /* compiled from: FlowableFlatMapCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.a1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0625a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f76829b = 8606673141535671828L;

            C0625a() {
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.j(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.k(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(org.reactivestreams.d<? super T> subscriber, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors, int maxConcurrency) {
            this.f76821b = subscriber;
            this.f76823d = mapper;
            this.f76824e = delayErrors;
            this.f76826g = maxConcurrency;
            lazySet(1);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76828i = true;
            this.f76827h.cancel();
            this.f76825f.dispose();
            this.f76822c.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return true;
        }

        void j(a<T>.C0625a inner) {
            this.f76825f.c(inner);
            onComplete();
        }

        void k(a<T>.C0625a inner, Throwable e4) {
            this.f76825f.c(inner);
            onError(e4);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (decrementAndGet() == 0) {
                this.f76822c.tryTerminateConsumer(this.f76821b);
            } else if (this.f76826g != Integer.MAX_VALUE) {
                this.f76827h.request(1L);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable e4) {
            if (this.f76822c.tryAddThrowableOrReport(e4)) {
                if (this.f76824e) {
                    if (decrementAndGet() == 0) {
                        this.f76822c.tryTerminateConsumer(this.f76821b);
                        return;
                    } else if (this.f76826g != Integer.MAX_VALUE) {
                        this.f76827h.request(1L);
                        return;
                    } else {
                        return;
                    }
                }
                this.f76828i = true;
                this.f76827h.cancel();
                this.f76825f.dispose();
                this.f76822c.tryTerminateConsumer(this.f76821b);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T value) {
            try {
                io.reactivex.rxjava3.core.g apply = this.f76823d.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                io.reactivex.rxjava3.core.g gVar = apply;
                getAndIncrement();
                C0625a c0625a = new C0625a();
                if (this.f76828i || !this.f76825f.b(c0625a)) {
                    return;
                }
                gVar.d(c0625a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76827h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76827h, s9)) {
                this.f76827h = s9;
                this.f76821b.onSubscribe(this);
                int i4 = this.f76826g;
                if (i4 == Integer.MAX_VALUE) {
                    s9.request(Long.MAX_VALUE);
                } else {
                    s9.request(i4);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return mode & 2;
        }
    }

    public a1(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors, int maxConcurrency) {
        super(source);
        this.f76817c = mapper;
        this.f76819e = delayErrors;
        this.f76818d = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> subscriber) {
        this.f76811b.G6(new a(subscriber, this.f76817c, this.f76819e, this.f76818d));
    }
}
