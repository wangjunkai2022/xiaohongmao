package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableSkipLastTimed.java */
/* loaded from: classes4.dex */
public final class k3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f79639b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f79640c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79641d;

    /* renamed from: e  reason: collision with root package name */
    final int f79642e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f79643f;

    /* compiled from: ObservableSkipLastTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: k  reason: collision with root package name */
        private static final long f79644k = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79645a;

        /* renamed from: b  reason: collision with root package name */
        final long f79646b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f79647c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f79648d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f79649e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f79650f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79651g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79652h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f79653i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f79654j;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
            this.f79645a = actual;
            this.f79646b = time;
            this.f79647c = unit;
            this.f79648d = scheduler;
            this.f79649e = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f79650f = delayError;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79645a;
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f79649e;
            boolean z9 = this.f79650f;
            TimeUnit timeUnit = this.f79647c;
            io.reactivex.rxjava3.core.o0 o0Var = this.f79648d;
            long j4 = this.f79646b;
            int i4 = 1;
            while (!this.f79652h) {
                boolean z10 = this.f79653i;
                Long l10 = (Long) bVar.peek();
                boolean z11 = l10 == null;
                long e4 = o0Var.e(timeUnit);
                if (!z11 && l10.longValue() > e4 - j4) {
                    z11 = true;
                }
                if (z10) {
                    if (!z9) {
                        Throwable th = this.f79654j;
                        if (th != null) {
                            this.f79649e.clear();
                            n0Var.onError(th);
                            return;
                        } else if (z11) {
                            n0Var.onComplete();
                            return;
                        }
                    } else if (z11) {
                        Throwable th2 = this.f79654j;
                        if (th2 != null) {
                            n0Var.onError(th2);
                            return;
                        } else {
                            n0Var.onComplete();
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
                    n0Var.onNext(bVar.poll());
                }
            }
            this.f79649e.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79652h) {
                return;
            }
            this.f79652h = true;
            this.f79651g.dispose();
            if (getAndIncrement() == 0) {
                this.f79649e.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79652h;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79653i = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79654j = t9;
            this.f79653i = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79649e.offer(Long.valueOf(this.f79648d.e(this.f79647c)), t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79651g, d4)) {
                this.f79651g = d4;
                this.f79645a.onSubscribe(this);
            }
        }
    }

    public k3(io.reactivex.rxjava3.core.l0<T> source, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
        super(source);
        this.f79639b = time;
        this.f79640c = unit;
        this.f79641d = scheduler;
        this.f79642e = bufferSize;
        this.f79643f = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f79639b, this.f79640c, this.f79641d, this.f79642e, this.f79643f));
    }
}
