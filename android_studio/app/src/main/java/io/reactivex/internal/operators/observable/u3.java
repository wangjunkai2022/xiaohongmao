package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableThrottleFirstTimed.java */
/* loaded from: classes3.dex */
public final class u3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74826b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74827c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f74828d;

    /* compiled from: ObservableThrottleFirstTimed.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f74829h = 786994795061867455L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74830a;

        /* renamed from: b  reason: collision with root package name */
        final long f74831b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f74832c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f74833d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74834e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f74835f;

        /* renamed from: g  reason: collision with root package name */
        boolean f74836g;

        a(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar) {
            this.f74830a = g0Var;
            this.f74831b = j4;
            this.f74832c = timeUnit;
            this.f74833d = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74834e.dispose();
            this.f74833d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74833d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74836g) {
                return;
            }
            this.f74836g = true;
            this.f74830a.onComplete();
            this.f74833d.dispose();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74836g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74836g = true;
            this.f74830a.onError(th);
            this.f74833d.dispose();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74835f || this.f74836g) {
                return;
            }
            this.f74835f = true;
            this.f74830a.onNext(t9);
            io.reactivex.disposables.c cVar = get();
            if (cVar != null) {
                cVar.dispose();
            }
            DisposableHelper.replace(this, this.f74833d.c(this, this.f74831b, this.f74832c));
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74834e, cVar)) {
                this.f74834e = cVar;
                this.f74830a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f74835f = false;
        }
    }

    public u3(io.reactivex.e0<T> e0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(e0Var);
        this.f74826b = j4;
        this.f74827c = timeUnit;
        this.f74828d = h0Var;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(new io.reactivex.observers.l(g0Var), this.f74826b, this.f74827c, this.f74828d.d()));
    }
}
