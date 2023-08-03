package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableConcat.java */
/* loaded from: classes4.dex */
public final class d extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends io.reactivex.rxjava3.core.g> f76570a;

    /* renamed from: b  reason: collision with root package name */
    final int f76571b;

    /* compiled from: CompletableConcat.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicInteger implements io.reactivex.rxjava3.core.r<io.reactivex.rxjava3.core.g>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: l  reason: collision with root package name */
        private static final long f76572l = 9032184911934499404L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76573a;

        /* renamed from: b  reason: collision with root package name */
        final int f76574b;

        /* renamed from: c  reason: collision with root package name */
        final int f76575c;

        /* renamed from: d  reason: collision with root package name */
        final C0622a f76576d = new C0622a(this);

        /* renamed from: e  reason: collision with root package name */
        final AtomicBoolean f76577e = new AtomicBoolean();

        /* renamed from: f  reason: collision with root package name */
        int f76578f;

        /* renamed from: g  reason: collision with root package name */
        int f76579g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<io.reactivex.rxjava3.core.g> f76580h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f76581i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f76582j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f76583k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CompletableConcat.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.completable.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0622a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f76584b = -5454794857847146511L;

            /* renamed from: a  reason: collision with root package name */
            final a f76585a;

            C0622a(a parent) {
                this.f76585a = parent;
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f76585a.b();
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f76585a.c(e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.d actual, int prefetch) {
            this.f76573a = actual;
            this.f76574b = prefetch;
            this.f76575c = prefetch - (prefetch >> 2);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!isDisposed()) {
                if (!this.f76583k) {
                    boolean z9 = this.f76582j;
                    try {
                        io.reactivex.rxjava3.core.g poll = this.f76580h.poll();
                        boolean z10 = poll == null;
                        if (z9 && z10) {
                            this.f76573a.onComplete();
                            return;
                        } else if (!z10) {
                            this.f76583k = true;
                            poll.d(this.f76576d);
                            e();
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
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
            this.f76583k = false;
            a();
        }

        void c(Throwable e4) {
            if (this.f76577e.compareAndSet(false, true)) {
                this.f76581i.cancel();
                this.f76573a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // org.reactivestreams.d
        /* renamed from: d */
        public void onNext(io.reactivex.rxjava3.core.g t9) {
            if (this.f76578f == 0 && !this.f76580h.offer(t9)) {
                onError(new MissingBackpressureException());
            } else {
                a();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76581i.cancel();
            DisposableHelper.dispose(this.f76576d);
        }

        void e() {
            if (this.f76578f != 1) {
                int i4 = this.f76579g + 1;
                if (i4 == this.f76575c) {
                    this.f76579g = 0;
                    this.f76581i.request(i4);
                    return;
                }
                this.f76579g = i4;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f76576d.get());
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76582j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76577e.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f76576d);
                this.f76573a.onError(t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76581i, s9)) {
                this.f76581i = s9;
                int i4 = this.f76574b;
                long j4 = i4 == Integer.MAX_VALUE ? Long.MAX_VALUE : i4;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f76578f = requestFusion;
                        this.f76580h = nVar;
                        this.f76582j = true;
                        this.f76573a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f76578f = requestFusion;
                        this.f76580h = nVar;
                        this.f76573a.onSubscribe(this);
                        s9.request(j4);
                        return;
                    }
                }
                if (this.f76574b == Integer.MAX_VALUE) {
                    this.f76580h = new io.reactivex.rxjava3.internal.queue.b(io.reactivex.rxjava3.core.m.V());
                } else {
                    this.f76580h = new SpscArrayQueue(this.f76574b);
                }
                this.f76573a.onSubscribe(this);
                s9.request(j4);
            }
        }
    }

    public d(org.reactivestreams.c<? extends io.reactivex.rxjava3.core.g> sources, int prefetch) {
        this.f76570a = sources;
        this.f76571b = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76570a.i(new a(observer, this.f76571b));
    }
}
