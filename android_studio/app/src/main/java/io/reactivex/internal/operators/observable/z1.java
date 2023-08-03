package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableMergeWithMaybe.java */
/* loaded from: classes3.dex */
public final class z1<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f75106b;

    /* compiled from: ObservableMergeWithMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: j  reason: collision with root package name */
        private static final long f75107j = -4592979584110982903L;

        /* renamed from: k  reason: collision with root package name */
        static final int f75108k = 1;

        /* renamed from: l  reason: collision with root package name */
        static final int f75109l = 2;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75110a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75111b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0602a<T> f75112c = new C0602a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f75113d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile o7.n<T> f75114e;

        /* renamed from: f  reason: collision with root package name */
        T f75115f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f75116g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f75117h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f75118i;

        /* compiled from: ObservableMergeWithMaybe.java */
        /* renamed from: io.reactivex.internal.operators.observable.z1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0602a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f75119b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f75120a;

            C0602a(a<T> aVar) {
                this.f75120a = aVar;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f75120a.d();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f75120a.e(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t9) {
                this.f75120a.h(t9);
            }
        }

        a(io.reactivex.g0<? super T> g0Var) {
            this.f75110a = g0Var;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.g0<? super T> g0Var = this.f75110a;
            int i4 = 1;
            while (!this.f75116g) {
                if (this.f75113d.get() != null) {
                    this.f75115f = null;
                    this.f75114e = null;
                    g0Var.onError(this.f75113d.terminate());
                    return;
                }
                int i10 = this.f75118i;
                if (i10 == 1) {
                    this.f75115f = null;
                    this.f75118i = 2;
                    g0Var.onNext((T) this.f75115f);
                    i10 = 2;
                }
                boolean z9 = this.f75117h;
                o7.n<T> nVar = this.f75114e;
                T poll = nVar != null ? nVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10 && i10 == 2) {
                    this.f75114e = null;
                    g0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    g0Var.onNext(poll);
                }
            }
            this.f75115f = null;
            this.f75114e = null;
        }

        o7.n<T> c() {
            o7.n<T> nVar = this.f75114e;
            if (nVar == null) {
                io.reactivex.internal.queue.b bVar = new io.reactivex.internal.queue.b(io.reactivex.z.bufferSize());
                this.f75114e = bVar;
                return bVar;
            }
            return nVar;
        }

        void d() {
            this.f75118i = 2;
            a();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75116g = true;
            DisposableHelper.dispose(this.f75111b);
            DisposableHelper.dispose(this.f75112c);
            if (getAndIncrement() == 0) {
                this.f75114e = null;
                this.f75115f = null;
            }
        }

        void e(Throwable th) {
            if (this.f75113d.addThrowable(th)) {
                DisposableHelper.dispose(this.f75111b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void h(T t9) {
            if (compareAndSet(0, 1)) {
                this.f75110a.onNext(t9);
                this.f75118i = 2;
            } else {
                this.f75115f = t9;
                this.f75118i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f75111b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f75117h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f75113d.addThrowable(th)) {
                DisposableHelper.dispose(this.f75112c);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (compareAndSet(0, 1)) {
                this.f75110a.onNext(t9);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                c().offer(t9);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f75111b, cVar);
        }
    }

    public z1(io.reactivex.z<T> zVar, io.reactivex.w<? extends T> wVar) {
        super(zVar);
        this.f75106b = wVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        this.f73827a.subscribe(aVar);
        this.f75106b.b(aVar.f75112c);
    }
}
