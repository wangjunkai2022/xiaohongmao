package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableTakeLastTimed.java */
/* loaded from: classes4.dex */
public final class t3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f80134b;

    /* renamed from: c  reason: collision with root package name */
    final long f80135c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f80136d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80137e;

    /* renamed from: f  reason: collision with root package name */
    final int f80138f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f80139g;

    /* compiled from: ObservableTakeLastTimed.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: k  reason: collision with root package name */
        private static final long f80140k = -5677354903406201275L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80141a;

        /* renamed from: b  reason: collision with root package name */
        final long f80142b;

        /* renamed from: c  reason: collision with root package name */
        final long f80143c;

        /* renamed from: d  reason: collision with root package name */
        final TimeUnit f80144d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80145e;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f80146f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f80147g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80148h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80149i;

        /* renamed from: j  reason: collision with root package name */
        Throwable f80150j;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long count, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
            this.f80141a = actual;
            this.f80142b = count;
            this.f80143c = time;
            this.f80144d = unit;
            this.f80145e = scheduler;
            this.f80146f = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f80147g = delayError;
        }

        void a() {
            Throwable th;
            if (compareAndSet(false, true)) {
                io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f80141a;
                io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f80146f;
                boolean z9 = this.f80147g;
                long e4 = this.f80145e.e(this.f80144d) - this.f80143c;
                while (!this.f80149i) {
                    if (!z9 && (th = this.f80150j) != null) {
                        bVar.clear();
                        n0Var.onError(th);
                        return;
                    }
                    Object poll = bVar.poll();
                    if (poll == null) {
                        Throwable th2 = this.f80150j;
                        if (th2 != null) {
                            n0Var.onError(th2);
                            return;
                        } else {
                            n0Var.onComplete();
                            return;
                        }
                    }
                    Object poll2 = bVar.poll();
                    if (((Long) poll).longValue() >= e4) {
                        n0Var.onNext(poll2);
                    }
                }
                bVar.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f80149i) {
                return;
            }
            this.f80149i = true;
            this.f80148h.dispose();
            if (compareAndSet(false, true)) {
                this.f80146f.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80149i;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80150j = t9;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f80146f;
            long e4 = this.f80145e.e(this.f80144d);
            long j4 = this.f80143c;
            long j10 = this.f80142b;
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

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80148h, d4)) {
                this.f80148h = d4;
                this.f80141a.onSubscribe(this);
            }
        }
    }

    public t3(io.reactivex.rxjava3.core.l0<T> source, long count, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, int bufferSize, boolean delayError) {
        super(source);
        this.f80134b = count;
        this.f80135c = time;
        this.f80136d = unit;
        this.f80137e = scheduler;
        this.f80138f = bufferSize;
        this.f80139g = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f80134b, this.f80135c, this.f80136d, this.f80137e, this.f80138f, this.f80139g));
    }
}
