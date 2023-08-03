package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableSkipLastTimed.java */
/* loaded from: classes3.dex */
public final class h3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74178b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74179c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f74180d;

    /* renamed from: e  reason: collision with root package name */
    final int f74181e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f74182f;

    /* compiled from: ObservableSkipLastTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: k  reason: collision with root package name */
        private static final long f74183k = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74184a;

        /* renamed from: b  reason: collision with root package name */
        final long f74185b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f74186c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f74187d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f74188e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f74189f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f74190g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f74191h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f74192i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f74193j;

        a(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
            this.f74184a = g0Var;
            this.f74185b = j4;
            this.f74186c = timeUnit;
            this.f74187d = h0Var;
            this.f74188e = new io.reactivex.internal.queue.b<>(i4);
            this.f74189f = z9;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super T> g0Var = this.f74184a;
            io.reactivex.internal.queue.b<Object> bVar = this.f74188e;
            boolean z9 = this.f74189f;
            TimeUnit timeUnit = this.f74186c;
            io.reactivex.h0 h0Var = this.f74187d;
            long j4 = this.f74185b;
            int i4 = 1;
            while (!this.f74191h) {
                boolean z10 = this.f74192i;
                Long l10 = (Long) bVar.peek();
                boolean z11 = l10 == null;
                long e4 = h0Var.e(timeUnit);
                if (!z11 && l10.longValue() > e4 - j4) {
                    z11 = true;
                }
                if (z10) {
                    if (!z9) {
                        Throwable th = this.f74193j;
                        if (th != null) {
                            this.f74188e.clear();
                            g0Var.onError(th);
                            return;
                        } else if (z11) {
                            g0Var.onComplete();
                            return;
                        }
                    } else if (z11) {
                        Throwable th2 = this.f74193j;
                        if (th2 != null) {
                            g0Var.onError(th2);
                            return;
                        } else {
                            g0Var.onComplete();
                            return;
                        }
                    }
                }
                if (z11) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    bVar.poll();
                    g0Var.onNext(bVar.poll());
                }
            }
            this.f74188e.clear();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74191h) {
                return;
            }
            this.f74191h = true;
            this.f74190g.dispose();
            if (getAndIncrement() == 0) {
                this.f74188e.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74191h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74192i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74193j = th;
            this.f74192i = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74188e.offer(Long.valueOf(this.f74187d.e(this.f74186c)), t9);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74190g, cVar)) {
                this.f74190g = cVar;
                this.f74184a.onSubscribe(this);
            }
        }
    }

    public h3(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
        super(e0Var);
        this.f74178b = j4;
        this.f74179c = timeUnit;
        this.f74180d = h0Var;
        this.f74181e = i4;
        this.f74182f = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74178b, this.f74179c, this.f74180d, this.f74181e, this.f74182f));
    }
}
