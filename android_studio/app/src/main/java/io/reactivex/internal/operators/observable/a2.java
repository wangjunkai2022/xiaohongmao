package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableMergeWithSingle.java */
/* loaded from: classes3.dex */
public final class a2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f73845b;

    /* compiled from: ObservableMergeWithSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: j  reason: collision with root package name */
        private static final long f73846j = -4592979584110982903L;

        /* renamed from: k  reason: collision with root package name */
        static final int f73847k = 1;

        /* renamed from: l  reason: collision with root package name */
        static final int f73848l = 2;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73849a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f73850b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0586a<T> f73851c = new C0586a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73852d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile o7.n<T> f73853e;

        /* renamed from: f  reason: collision with root package name */
        T f73854f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73855g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73856h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f73857i;

        /* compiled from: ObservableMergeWithSingle.java */
        /* renamed from: io.reactivex.internal.operators.observable.a2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0586a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73858b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f73859a;

            C0586a(a<T> aVar) {
                this.f73859a = aVar;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f73859a.d(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(T t9) {
                this.f73859a.e(t9);
            }
        }

        a(io.reactivex.g0<? super T> g0Var) {
            this.f73849a = g0Var;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.g0<? super T> g0Var = this.f73849a;
            int i4 = 1;
            while (!this.f73855g) {
                if (this.f73852d.get() != null) {
                    this.f73854f = null;
                    this.f73853e = null;
                    g0Var.onError(this.f73852d.terminate());
                    return;
                }
                int i10 = this.f73857i;
                if (i10 == 1) {
                    this.f73854f = null;
                    this.f73857i = 2;
                    g0Var.onNext((T) this.f73854f);
                    i10 = 2;
                }
                boolean z9 = this.f73856h;
                o7.n<T> nVar = this.f73853e;
                T poll = nVar != null ? nVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10 && i10 == 2) {
                    this.f73853e = null;
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
            this.f73854f = null;
            this.f73853e = null;
        }

        o7.n<T> c() {
            o7.n<T> nVar = this.f73853e;
            if (nVar == null) {
                io.reactivex.internal.queue.b bVar = new io.reactivex.internal.queue.b(io.reactivex.z.bufferSize());
                this.f73853e = bVar;
                return bVar;
            }
            return nVar;
        }

        void d(Throwable th) {
            if (this.f73852d.addThrowable(th)) {
                DisposableHelper.dispose(this.f73850b);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73855g = true;
            DisposableHelper.dispose(this.f73850b);
            DisposableHelper.dispose(this.f73851c);
            if (getAndIncrement() == 0) {
                this.f73853e = null;
                this.f73854f = null;
            }
        }

        void e(T t9) {
            if (compareAndSet(0, 1)) {
                this.f73849a.onNext(t9);
                this.f73857i = 2;
            } else {
                this.f73854f = t9;
                this.f73857i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f73850b.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73856h = true;
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73852d.addThrowable(th)) {
                DisposableHelper.dispose(this.f73851c);
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (compareAndSet(0, 1)) {
                this.f73849a.onNext(t9);
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
            DisposableHelper.setOnce(this.f73850b, cVar);
        }
    }

    public a2(io.reactivex.z<T> zVar, io.reactivex.o0<? extends T> o0Var) {
        super(zVar);
        this.f73845b = o0Var;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        this.f73827a.subscribe(aVar);
        this.f73845b.d(aVar.f73851c);
    }
}
