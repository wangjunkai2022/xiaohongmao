package io.reactivex.internal.operators.observable;

import io.reactivex.h0;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableThrottleLatest.java */
/* loaded from: classes3.dex */
public final class v3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74886b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f74887c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f74888d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f74889e;

    /* compiled from: ObservableThrottleLatest.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: m  reason: collision with root package name */
        private static final long f74890m = -8296689127439125014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74891a;

        /* renamed from: b  reason: collision with root package name */
        final long f74892b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f74893c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f74894d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f74895e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<T> f74896f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f74897g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f74898h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f74899i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f74900j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f74901k;

        /* renamed from: l  reason: collision with root package name */
        boolean f74902l;

        a(io.reactivex.g0<? super T> g0Var, long j4, TimeUnit timeUnit, h0.c cVar, boolean z9) {
            this.f74891a = g0Var;
            this.f74892b = j4;
            this.f74893c = timeUnit;
            this.f74894d = cVar;
            this.f74895e = z9;
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f74896f;
            io.reactivex.g0<? super T> g0Var = this.f74891a;
            int i4 = 1;
            while (!this.f74900j) {
                boolean z9 = this.f74898h;
                if (z9 && this.f74899i != null) {
                    atomicReference.lazySet(null);
                    g0Var.onError(this.f74899i);
                    this.f74894d.dispose();
                    return;
                }
                boolean z10 = atomicReference.get() == null;
                if (z9) {
                    T andSet = atomicReference.getAndSet(null);
                    if (!z10 && this.f74895e) {
                        g0Var.onNext(andSet);
                    }
                    g0Var.onComplete();
                    this.f74894d.dispose();
                    return;
                }
                if (z10) {
                    if (this.f74901k) {
                        this.f74902l = false;
                        this.f74901k = false;
                    }
                } else if (!this.f74902l || this.f74901k) {
                    g0Var.onNext(atomicReference.getAndSet(null));
                    this.f74901k = false;
                    this.f74902l = true;
                    this.f74894d.c(this, this.f74892b, this.f74893c);
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74900j = true;
            this.f74897g.dispose();
            this.f74894d.dispose();
            if (getAndIncrement() == 0) {
                this.f74896f.lazySet(null);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74900j;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74898h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74899i = th;
            this.f74898h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74896f.set(t9);
            a();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74897g, cVar)) {
                this.f74897g = cVar;
                this.f74891a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f74901k = true;
            a();
        }
    }

    public v3(io.reactivex.z<T> zVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        super(zVar);
        this.f74886b = j4;
        this.f74887c = timeUnit;
        this.f74888d = h0Var;
        this.f74889e = z9;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74886b, this.f74887c, this.f74888d.d(), this.f74889e));
    }
}
