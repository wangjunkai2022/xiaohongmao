package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableMerge.java */
/* loaded from: classes3.dex */
public final class a0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends io.reactivex.g> f71270a;

    /* renamed from: b  reason: collision with root package name */
    final int f71271b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f71272c;

    /* compiled from: CompletableMerge.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicInteger implements io.reactivex.o<io.reactivex.g>, io.reactivex.disposables.c {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71273g = -2108443387387077490L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71274a;

        /* renamed from: b  reason: collision with root package name */
        final int f71275b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f71276c;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f71279f;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.b f71278e = new io.reactivex.disposables.b();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f71277d = new AtomicThrowable();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CompletableMerge.java */
        /* renamed from: io.reactivex.internal.operators.completable.a0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public final class C0542a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71280b = 251330541679988317L;

            C0542a() {
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
                a.this.a(this);
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                a.this.b(this, th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.d dVar, int i4, boolean z9) {
            this.f71274a = dVar;
            this.f71275b = i4;
            this.f71276c = z9;
            lazySet(1);
        }

        void a(C0542a c0542a) {
            this.f71278e.c(c0542a);
            if (decrementAndGet() == 0) {
                Throwable th = this.f71277d.get();
                if (th != null) {
                    this.f71274a.onError(th);
                } else {
                    this.f71274a.onComplete();
                }
            } else if (this.f71275b != Integer.MAX_VALUE) {
                this.f71279f.request(1L);
            }
        }

        void b(C0542a c0542a, Throwable th) {
            this.f71278e.c(c0542a);
            if (!this.f71276c) {
                this.f71279f.cancel();
                this.f71278e.dispose();
                if (this.f71277d.addThrowable(th)) {
                    if (getAndSet(0) > 0) {
                        this.f71274a.onError(this.f71277d.terminate());
                        return;
                    }
                    return;
                }
                io.reactivex.plugins.a.Y(th);
            } else if (this.f71277d.addThrowable(th)) {
                if (decrementAndGet() == 0) {
                    this.f71274a.onError(this.f71277d.terminate());
                } else if (this.f71275b != Integer.MAX_VALUE) {
                    this.f71279f.request(1L);
                }
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.d
        /* renamed from: c */
        public void onNext(io.reactivex.g gVar) {
            getAndIncrement();
            C0542a c0542a = new C0542a();
            this.f71278e.b(c0542a);
            gVar.d(c0542a);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71279f.cancel();
            this.f71278e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71278e.isDisposed();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (decrementAndGet() == 0) {
                if (this.f71277d.get() != null) {
                    this.f71274a.onError(this.f71277d.terminate());
                } else {
                    this.f71274a.onComplete();
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (!this.f71276c) {
                this.f71278e.dispose();
                if (this.f71277d.addThrowable(th)) {
                    if (getAndSet(0) > 0) {
                        this.f71274a.onError(this.f71277d.terminate());
                        return;
                    }
                    return;
                }
                io.reactivex.plugins.a.Y(th);
            } else if (this.f71277d.addThrowable(th)) {
                if (decrementAndGet() == 0) {
                    this.f71274a.onError(this.f71277d.terminate());
                }
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71279f, eVar)) {
                this.f71279f = eVar;
                this.f71274a.onSubscribe(this);
                int i4 = this.f71275b;
                if (i4 == Integer.MAX_VALUE) {
                    eVar.request(Long.MAX_VALUE);
                } else {
                    eVar.request(i4);
                }
            }
        }
    }

    public a0(org.reactivestreams.c<? extends io.reactivex.g> cVar, int i4, boolean z9) {
        this.f71270a = cVar;
        this.f71271b = i4;
        this.f71272c = z9;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        this.f71270a.i(new a(dVar, this.f71271b, this.f71272c));
    }
}
