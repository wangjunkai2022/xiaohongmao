package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSampleTimed.java */
/* loaded from: classes3.dex */
public final class i3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72046c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72047d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f72048e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f72049f;

    /* compiled from: FlowableSampleTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends c<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f72050j = -7139995637533111443L;

        /* renamed from: i  reason: collision with root package name */
        final AtomicInteger f72051i;

        a(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(dVar, j4, timeUnit, h0Var);
            this.f72051i = new AtomicInteger(1);
        }

        @Override // io.reactivex.internal.operators.flowable.i3.c
        void b() {
            c();
            if (this.f72051i.decrementAndGet() == 0) {
                this.f72054a.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f72051i.incrementAndGet() == 2) {
                c();
                if (this.f72051i.decrementAndGet() == 0) {
                    this.f72054a.onComplete();
                }
            }
        }
    }

    /* compiled from: FlowableSampleTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends c<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f72052i = -7139995637533111443L;

        b(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            super(dVar, j4, timeUnit, h0Var);
        }

        @Override // io.reactivex.internal.operators.flowable.i3.c
        void b() {
            this.f72054a.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            c();
        }
    }

    /* compiled from: FlowableSampleTimed.java */
    /* loaded from: classes3.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.o<T>, org.reactivestreams.e, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f72053h = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72054a;

        /* renamed from: b  reason: collision with root package name */
        final long f72055b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f72056c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f72057d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f72058e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final SequentialDisposable f72059f = new SequentialDisposable();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f72060g;

        c(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f72054a = dVar;
            this.f72055b = j4;
            this.f72056c = timeUnit;
            this.f72057d = h0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f72059f);
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f72058e.get() != 0) {
                    this.f72054a.onNext(andSet);
                    io.reactivex.internal.util.b.e(this.f72058e, 1L);
                    return;
                }
                cancel();
                this.f72054a.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            a();
            this.f72060g.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            a();
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            a();
            this.f72054a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            lazySet(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72060g, eVar)) {
                this.f72060g = eVar;
                this.f72054a.onSubscribe(this);
                SequentialDisposable sequentialDisposable = this.f72059f;
                io.reactivex.h0 h0Var = this.f72057d;
                long j4 = this.f72055b;
                sequentialDisposable.replace(h0Var.h(this, j4, j4, this.f72056c));
                eVar.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f72058e, j4);
            }
        }
    }

    public i3(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        super(jVar);
        this.f72046c = j4;
        this.f72047d = timeUnit;
        this.f72048e = h0Var;
        this.f72049f = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        io.reactivex.subscribers.e eVar = new io.reactivex.subscribers.e(dVar);
        if (this.f72049f) {
            this.f71538b.j6(new a(eVar, this.f72046c, this.f72047d, this.f72048e));
        } else {
            this.f71538b.j6(new b(eVar, this.f72046c, this.f72047d, this.f72048e));
        }
    }
}
