package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTimeoutTimed.java */
/* loaded from: classes4.dex */
public final class p4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f77760c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f77761d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f77762e;

    /* renamed from: f  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f77763f;

    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77764a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f77765b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super T> actual, SubscriptionArbiter arbiter) {
            this.f77764a = actual;
            this.f77765b = arbiter;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77764a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77764a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77764a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            this.f77765b.setSubscription(s9);
        }
    }

    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.r<T>, d {

        /* renamed from: s  reason: collision with root package name */
        private static final long f77766s = 3764492702657003550L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77767j;

        /* renamed from: k  reason: collision with root package name */
        final long f77768k;

        /* renamed from: l  reason: collision with root package name */
        final TimeUnit f77769l;

        /* renamed from: m  reason: collision with root package name */
        final o0.c f77770m;

        /* renamed from: n  reason: collision with root package name */
        final SequentialDisposable f77771n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77772o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicLong f77773p;

        /* renamed from: q  reason: collision with root package name */
        long f77774q;

        /* renamed from: r  reason: collision with root package name */
        org.reactivestreams.c<? extends T> f77775r;

        b(org.reactivestreams.d<? super T> actual, long timeout, TimeUnit unit, o0.c worker, org.reactivestreams.c<? extends T> fallback) {
            super(true);
            this.f77767j = actual;
            this.f77768k = timeout;
            this.f77769l = unit;
            this.f77770m = worker;
            this.f77775r = fallback;
            this.f77771n = new SequentialDisposable();
            this.f77772o = new AtomicReference<>();
            this.f77773p = new AtomicLong();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p4.d
        public void b(long idx) {
            if (this.f77773p.compareAndSet(idx, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f77772o);
                long j4 = this.f77774q;
                if (j4 != 0) {
                    produced(j4);
                }
                org.reactivestreams.c<? extends T> cVar = this.f77775r;
                this.f77775r = null;
                cVar.i(new a(this.f77767j, this));
                this.f77770m.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f77770m.dispose();
        }

        void e(long nextIndex) {
            this.f77771n.replace(this.f77770m.c(new e(nextIndex, this), this.f77768k, this.f77769l));
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77773p.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77771n.dispose();
                this.f77767j.onComplete();
                this.f77770m.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77773p.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77771n.dispose();
                this.f77767j.onError(t9);
                this.f77770m.dispose();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f77773p.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = j4 + 1;
                if (this.f77773p.compareAndSet(j4, j10)) {
                    this.f77771n.get().dispose();
                    this.f77774q++;
                    this.f77767j.onNext(t9);
                    e(j10);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this.f77772o, s9)) {
                setSubscription(s9);
            }
        }
    }

    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, d {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77776h = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77777a;

        /* renamed from: b  reason: collision with root package name */
        final long f77778b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f77779c;

        /* renamed from: d  reason: collision with root package name */
        final o0.c f77780d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f77781e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77782f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f77783g = new AtomicLong();

        c(org.reactivestreams.d<? super T> actual, long timeout, TimeUnit unit, o0.c worker) {
            this.f77777a = actual;
            this.f77778b = timeout;
            this.f77779c = unit;
            this.f77780d = worker;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.p4.d
        public void b(long idx) {
            if (compareAndSet(idx, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f77782f);
                this.f77777a.onError(new TimeoutException(io.reactivex.rxjava3.internal.util.g.h(this.f77778b, this.f77779c)));
                this.f77780d.dispose();
            }
        }

        void c(long nextIndex) {
            this.f77781e.replace(this.f77780d.c(new e(nextIndex, this), this.f77778b, this.f77779c));
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f77782f);
            this.f77780d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77781e.dispose();
                this.f77777a.onComplete();
                this.f77780d.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f77781e.dispose();
                this.f77777a.onError(t9);
                this.f77780d.dispose();
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
                    this.f77781e.get().dispose();
                    this.f77777a.onNext(t9);
                    c(j10);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f77782f, this.f77783g, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f77782f, this.f77783g, n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    public interface d {
        void b(long idx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes4.dex */
    public static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f77784a;

        /* renamed from: b  reason: collision with root package name */
        final long f77785b;

        e(long idx, d parent) {
            this.f77785b = idx;
            this.f77784a = parent;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f77784a.b(this.f77785b);
        }
    }

    public p4(io.reactivex.rxjava3.core.m<T> source, long timeout, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, org.reactivestreams.c<? extends T> other) {
        super(source);
        this.f77760c = timeout;
        this.f77761d = unit;
        this.f77762e = scheduler;
        this.f77763f = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (this.f77763f == null) {
            c cVar = new c(s9, this.f77760c, this.f77761d, this.f77762e.d());
            s9.onSubscribe(cVar);
            cVar.c(0L);
            this.f76811b.G6(cVar);
            return;
        }
        b bVar = new b(s9, this.f77760c, this.f77761d, this.f77762e.d(), this.f77763f);
        s9.onSubscribe(bVar);
        bVar.e(0L);
        this.f76811b.G6(bVar);
    }
}
