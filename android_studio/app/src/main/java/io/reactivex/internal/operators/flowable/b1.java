package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlatMapCompletableCompletable.java */
/* loaded from: classes3.dex */
public final class b1<T> extends io.reactivex.a implements o7.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f71603a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f71604b;

    /* renamed from: c  reason: collision with root package name */
    final int f71605c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f71606d;

    /* compiled from: FlowableFlatMapCompletableCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f71607i = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71608a;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f71610c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f71611d;

        /* renamed from: f  reason: collision with root package name */
        final int f71613f;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f71614g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f71615h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f71609b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.b f71612e = new io.reactivex.disposables.b();

        /* compiled from: FlowableFlatMapCompletableCompletable.java */
        /* renamed from: io.reactivex.internal.operators.flowable.b1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0548a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71616b = 8606673141535671828L;

            C0548a() {
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

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9, int i4) {
            this.f71608a = dVar;
            this.f71610c = oVar;
            this.f71611d = z9;
            this.f71613f = i4;
            lazySet(1);
        }

        void a(a<T>.C0548a c0548a) {
            this.f71612e.c(c0548a);
            onComplete();
        }

        void b(a<T>.C0548a c0548a, Throwable th) {
            this.f71612e.c(c0548a);
            onError(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71615h = true;
            this.f71614g.cancel();
            this.f71612e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71612e.isDisposed();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f71609b.terminate();
                if (terminate != null) {
                    this.f71608a.onError(terminate);
                } else {
                    this.f71608a.onComplete();
                }
            } else if (this.f71613f != Integer.MAX_VALUE) {
                this.f71614g.request(1L);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71609b.addThrowable(th)) {
                if (this.f71611d) {
                    if (decrementAndGet() == 0) {
                        this.f71608a.onError(this.f71609b.terminate());
                        return;
                    } else if (this.f71613f != Integer.MAX_VALUE) {
                        this.f71614g.request(1L);
                        return;
                    } else {
                        return;
                    }
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f71608a.onError(this.f71609b.terminate());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f71610c.apply(t9), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0548a c0548a = new C0548a();
                if (this.f71615h || !this.f71612e.b(c0548a)) {
                    return;
                }
                gVar.d(c0548a);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71614g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71614g, eVar)) {
                this.f71614g = eVar;
                this.f71608a.onSubscribe(this);
                int i4 = this.f71613f;
                if (i4 == Integer.MAX_VALUE) {
                    eVar.request(Long.MAX_VALUE);
                } else {
                    eVar.request(i4);
                }
            }
        }
    }

    public b1(io.reactivex.j<T> jVar, n7.o<? super T, ? extends io.reactivex.g> oVar, boolean z9, int i4) {
        this.f71603a = jVar;
        this.f71604b = oVar;
        this.f71606d = z9;
        this.f71605c = i4;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71603a.j6(new a(dVar, this.f71604b, this.f71606d, this.f71605c));
    }

    @Override // o7.b
    public io.reactivex.j<T> c() {
        return io.reactivex.plugins.a.P(new a1(this.f71603a, this.f71604b, this.f71606d, this.f71605c));
    }
}
