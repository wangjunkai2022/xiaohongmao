package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapCompletable.java */
/* loaded from: classes3.dex */
public final class a1<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f71545c;

    /* renamed from: d  reason: collision with root package name */
    final int f71546d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f71547e;

    /* compiled from: FlowableFlatMapCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.o<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f71548j = 8443155186132538303L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71549b;

        /* renamed from: d  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f71551d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f71552e;

        /* renamed from: g  reason: collision with root package name */
        final int f71554g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f71555h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f71556i;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f71550c = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.disposables.b f71553f = new io.reactivex.disposables.b();

        /* compiled from: FlowableFlatMapCompletable.java */
        /* renamed from: io.reactivex.internal.operators.flowable.a1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0547a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71557b = 8606673141535671828L;

            C0547a() {
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.d
            public void onComplete() {
                a.this.j(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                a.this.k(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(org.reactivestreams.d<? super T> dVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9, int i4) {
            this.f71549b = dVar;
            this.f71551d = oVar;
            this.f71552e = z9;
            this.f71554g = i4;
            lazySet(1);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71556i = true;
            this.f71555h.cancel();
            this.f71553f.dispose();
        }

        @Override // o7.o
        public void clear() {
        }

        @Override // o7.o
        public boolean isEmpty() {
            return true;
        }

        void j(a<T>.C0547a c0547a) {
            this.f71553f.c(c0547a);
            onComplete();
        }

        void k(a<T>.C0547a c0547a, Throwable th) {
            this.f71553f.c(c0547a);
            onError(th);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f71550c.terminate();
                if (terminate != null) {
                    this.f71549b.onError(terminate);
                } else {
                    this.f71549b.onComplete();
                }
            } else if (this.f71554g != Integer.MAX_VALUE) {
                this.f71555h.request(1L);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71550c.addThrowable(th)) {
                if (this.f71552e) {
                    if (decrementAndGet() == 0) {
                        this.f71549b.onError(this.f71550c.terminate());
                        return;
                    } else if (this.f71554g != Integer.MAX_VALUE) {
                        this.f71555h.request(1L);
                        return;
                    } else {
                        return;
                    }
                }
                cancel();
                if (getAndSet(0) > 0) {
                    this.f71549b.onError(this.f71550c.terminate());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f71551d.apply(t9), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0547a c0547a = new C0547a();
                if (this.f71556i || !this.f71553f.b(c0547a)) {
                    return;
                }
                gVar.d(c0547a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71555h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71555h, eVar)) {
                this.f71555h = eVar;
                this.f71549b.onSubscribe(this);
                int i4 = this.f71554g;
                if (i4 == Integer.MAX_VALUE) {
                    eVar.request(Long.MAX_VALUE);
                } else {
                    eVar.request(i4);
                }
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return i4 & 2;
        }
    }

    public a1(io.reactivex.j<T> jVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9, int i4) {
        super(jVar);
        this.f71545c = oVar;
        this.f71547e = z9;
        this.f71546d = i4;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f71545c, this.f71547e, this.f71546d));
    }
}
