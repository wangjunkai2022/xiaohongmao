package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableTakeLastTimed.java */
/* loaded from: classes3.dex */
public final class q3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74636b;

    /* renamed from: c  reason: collision with root package name */
    final long f74637c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f74638d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f74639e;

    /* renamed from: f  reason: collision with root package name */
    final int f74640f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f74641g;

    /* compiled from: ObservableTakeLastTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: k  reason: collision with root package name */
        private static final long f74642k = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74643a;

        /* renamed from: b  reason: collision with root package name */
        final long f74644b;

        /* renamed from: c  reason: collision with root package name */
        final long f74645c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f74646d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.h0 f74647e;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object> f74648f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f74649g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.c f74650h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f74651i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f74652j;

        a(io.reactivex.g0<? super T> g0Var, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
            this.f74643a = g0Var;
            this.f74644b = j4;
            this.f74645c = j10;
            this.f74646d = timeUnit;
            this.f74647e = h0Var;
            this.f74648f = new io.reactivex.internal.queue.b<>(i4);
            this.f74649g = z9;
        }

        void a() {
            Throwable th;
            if (compareAndSet(false, true)) {
                io.reactivex.g0<? super T> g0Var = this.f74643a;
                io.reactivex.internal.queue.b<Object> bVar = this.f74648f;
                boolean z9 = this.f74649g;
                long e4 = this.f74647e.e(this.f74646d) - this.f74645c;
                while (!this.f74651i) {
                    if (!z9 && (th = this.f74652j) != null) {
                        bVar.clear();
                        g0Var.onError(th);
                        return;
                    }
                    Object poll = bVar.poll();
                    if (poll == null) {
                        Throwable th2 = this.f74652j;
                        if (th2 != null) {
                            g0Var.onError(th2);
                            return;
                        } else {
                            g0Var.onComplete();
                            return;
                        }
                    }
                    Object poll2 = bVar.poll();
                    if (((Long) poll).longValue() >= e4) {
                        g0Var.onNext(poll2);
                    }
                }
                bVar.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74651i) {
                return;
            }
            this.f74651i = true;
            this.f74650h.dispose();
            if (compareAndSet(false, true)) {
                this.f74648f.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74651i;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74652j = th;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            io.reactivex.internal.queue.b<Object> bVar = this.f74648f;
            long e4 = this.f74647e.e(this.f74646d);
            long j4 = this.f74645c;
            long j10 = this.f74644b;
            boolean z9 = j10 == Long.MAX_VALUE;
            bVar.offer(Long.valueOf(e4), t9);
            while (!bVar.isEmpty()) {
                if (((Long) bVar.peek()).longValue() > e4 - j4 && (z9 || (bVar.p() >> 1) <= j10)) {
                    return;
                }
                bVar.poll();
                bVar.poll();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74650h, cVar)) {
                this.f74650h = cVar;
                this.f74643a.onSubscribe(this);
            }
        }
    }

    public q3(io.reactivex.e0<T> e0Var, long j4, long j10, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4, boolean z9) {
        super(e0Var);
        this.f74636b = j4;
        this.f74637c = j10;
        this.f74638d = timeUnit;
        this.f74639e = h0Var;
        this.f74640f = i4;
        this.f74641g = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74636b, this.f74637c, this.f74638d, this.f74639e, this.f74640f, this.f74641g));
    }
}
