package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTimeoutTimed.java */
/* loaded from: classes3.dex */
public final class m4<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72291c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72292d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f72293e;

    /* renamed from: f  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f72294f;

    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72295a;

        /* renamed from: b  reason: collision with root package name */
        final SubscriptionArbiter f72296b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super T> dVar, SubscriptionArbiter subscriptionArbiter) {
            this.f72295a = dVar;
            this.f72296b = subscriptionArbiter;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72295a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72295a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72295a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            this.f72296b.setSubscription(eVar);
        }
    }

    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends SubscriptionArbiter implements io.reactivex.o<T>, d {

        /* renamed from: s  reason: collision with root package name */
        private static final long f72297s = 3764492702657003550L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72298j;

        /* renamed from: k  reason: collision with root package name */
        final long f72299k;

        /* renamed from: l  reason: collision with root package name */
        final TimeUnit f72300l;

        /* renamed from: m  reason: collision with root package name */
        final h0.c f72301m;

        /* renamed from: n  reason: collision with root package name */
        final SequentialDisposable f72302n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72303o;

        /* renamed from: p  reason: collision with root package name */
        final AtomicLong f72304p;

        /* renamed from: q  reason: collision with root package name */
        long f72305q;

        /* renamed from: r  reason: collision with root package name */
        org.reactivestreams.c<? extends T> f72306r;

        b(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, h0.c cVar, org.reactivestreams.c<? extends T> cVar2) {
            super(true);
            this.f72298j = dVar;
            this.f72299k = j4;
            this.f72300l = timeUnit;
            this.f72301m = cVar;
            this.f72306r = cVar2;
            this.f72302n = new SequentialDisposable();
            this.f72303o = new AtomicReference<>();
            this.f72304p = new AtomicLong();
        }

        @Override // io.reactivex.internal.operators.flowable.m4.d
        public void b(long j4) {
            if (this.f72304p.compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f72303o);
                long j10 = this.f72305q;
                if (j10 != 0) {
                    produced(j10);
                }
                org.reactivestreams.c<? extends T> cVar = this.f72306r;
                this.f72306r = null;
                cVar.i(new a(this.f72298j, this));
                this.f72301m.dispose();
            }
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f72301m.dispose();
        }

        void e(long j4) {
            this.f72302n.replace(this.f72301m.c(new e(j4, this), this.f72299k, this.f72300l));
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72304p.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72302n.dispose();
                this.f72298j.onComplete();
                this.f72301m.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72304p.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72302n.dispose();
                this.f72298j.onError(th);
                this.f72301m.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = this.f72304p.get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = j4 + 1;
                if (this.f72304p.compareAndSet(j4, j10)) {
                    this.f72302n.get().dispose();
                    this.f72305q++;
                    this.f72298j.onNext(t9);
                    e(j10);
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this.f72303o, eVar)) {
                setSubscription(eVar);
            }
        }
    }

    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e, d {

        /* renamed from: h  reason: collision with root package name */
        private static final long f72307h = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72308a;

        /* renamed from: b  reason: collision with root package name */
        final long f72309b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f72310c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f72311d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f72312e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72313f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicLong f72314g = new AtomicLong();

        c(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f72308a = dVar;
            this.f72309b = j4;
            this.f72310c = timeUnit;
            this.f72311d = cVar;
        }

        @Override // io.reactivex.internal.operators.flowable.m4.d
        public void b(long j4) {
            if (compareAndSet(j4, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f72313f);
                this.f72308a.onError(new TimeoutException(io.reactivex.internal.util.g.e(this.f72309b, this.f72310c)));
                this.f72311d.dispose();
            }
        }

        void c(long j4) {
            this.f72312e.replace(this.f72311d.c(new e(j4, this), this.f72309b, this.f72310c));
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f72313f);
            this.f72311d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72312e.dispose();
                this.f72308a.onComplete();
                this.f72311d.dispose();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f72312e.dispose();
                this.f72308a.onError(th);
                this.f72311d.dispose();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            long j4 = get();
            if (j4 != Long.MAX_VALUE) {
                long j10 = 1 + j4;
                if (compareAndSet(j4, j10)) {
                    this.f72312e.get().dispose();
                    this.f72308a.onNext(t9);
                    c(j10);
                }
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f72313f, this.f72314g, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f72313f, this.f72314g, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    public interface d {
        void b(long j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTimeoutTimed.java */
    /* loaded from: classes3.dex */
    public static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f72315a;

        /* renamed from: b  reason: collision with root package name */
        final long f72316b;

        e(long j4, d dVar) {
            this.f72316b = j4;
            this.f72315a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72315a.b(this.f72316b);
        }
    }

    public m4(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, org.reactivestreams.c<? extends T> cVar) {
        super(jVar);
        this.f72291c = j4;
        this.f72292d = timeUnit;
        this.f72293e = h0Var;
        this.f72294f = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (this.f72294f == null) {
            c cVar = new c(dVar, this.f72291c, this.f72292d, this.f72293e.d());
            dVar.onSubscribe(cVar);
            cVar.c(0L);
            this.f71538b.j6(cVar);
            return;
        }
        b bVar = new b(dVar, this.f72291c, this.f72292d, this.f72293e.d(), this.f72294f);
        dVar.onSubscribe(bVar);
        bVar.e(0L);
        this.f71538b.j6(bVar);
    }
}
