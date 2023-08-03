package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableConcat.java */
/* loaded from: classes3.dex */
public final class d extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends io.reactivex.g> f71308a;

    /* renamed from: b  reason: collision with root package name */
    final int f71309b;

    /* compiled from: CompletableConcat.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicInteger implements io.reactivex.o<io.reactivex.g>, io.reactivex.disposables.c {

        /* renamed from: l  reason: collision with root package name */
        private static final long f71310l = 9032184911934499404L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71311a;

        /* renamed from: b  reason: collision with root package name */
        final int f71312b;

        /* renamed from: c  reason: collision with root package name */
        final int f71313c;

        /* renamed from: d  reason: collision with root package name */
        final C0544a f71314d = new C0544a(this);

        /* renamed from: e  reason: collision with root package name */
        final AtomicBoolean f71315e = new AtomicBoolean();

        /* renamed from: f  reason: collision with root package name */
        int f71316f;

        /* renamed from: g  reason: collision with root package name */
        int f71317g;

        /* renamed from: h  reason: collision with root package name */
        o7.o<io.reactivex.g> f71318h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f71319i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f71320j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f71321k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CompletableConcat.java */
        /* renamed from: io.reactivex.internal.operators.completable.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0544a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71322b = -5454794857847146511L;

            /* renamed from: a  reason: collision with root package name */
            final a f71323a;

            C0544a(a aVar) {
                this.f71323a = aVar;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f71323a.b();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f71323a.c(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }
        }

        a(io.reactivex.d dVar, int i4) {
            this.f71311a = dVar;
            this.f71312b = i4;
            this.f71313c = i4 - (i4 >> 2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!isDisposed()) {
                if (!this.f71321k) {
                    boolean z9 = this.f71320j;
                    try {
                        io.reactivex.g poll = this.f71318h.poll();
                        boolean z10 = poll == null;
                        if (z9 && z10) {
                            if (this.f71315e.compareAndSet(false, true)) {
                                this.f71311a.onComplete();
                                return;
                            }
                            return;
                        } else if (!z10) {
                            this.f71321k = true;
                            poll.d(this.f71314d);
                            e();
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        c(th);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        void b() {
            this.f71321k = false;
            a();
        }

        void c(Throwable th) {
            if (this.f71315e.compareAndSet(false, true)) {
                this.f71319i.cancel();
                this.f71311a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        /* renamed from: d */
        public void onNext(io.reactivex.g gVar) {
            if (this.f71316f == 0 && !this.f71318h.offer(gVar)) {
                onError(new MissingBackpressureException());
            } else {
                a();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71319i.cancel();
            DisposableHelper.dispose(this.f71314d);
        }

        void e() {
            if (this.f71316f != 1) {
                int i4 = this.f71317g + 1;
                if (i4 == this.f71313c) {
                    this.f71317g = 0;
                    this.f71319i.request(i4);
                    return;
                }
                this.f71317g = i4;
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f71314d.get());
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71320j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71315e.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f71314d);
                this.f71311a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71319i, eVar)) {
                this.f71319i = eVar;
                int i4 = this.f71312b;
                long j4 = i4 == Integer.MAX_VALUE ? Long.MAX_VALUE : i4;
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f71316f = requestFusion;
                        this.f71318h = lVar;
                        this.f71320j = true;
                        this.f71311a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f71316f = requestFusion;
                        this.f71318h = lVar;
                        this.f71311a.onSubscribe(this);
                        eVar.request(j4);
                        return;
                    }
                }
                if (this.f71312b == Integer.MAX_VALUE) {
                    this.f71318h = new io.reactivex.internal.queue.b(io.reactivex.j.Y());
                } else {
                    this.f71318h = new SpscArrayQueue(this.f71312b);
                }
                this.f71311a.onSubscribe(this);
                eVar.request(j4);
            }
        }
    }

    public d(org.reactivestreams.c<? extends io.reactivex.g> cVar, int i4) {
        this.f71308a = cVar;
        this.f71309b = i4;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        this.f71308a.i(new a(dVar, this.f71309b));
    }
}
