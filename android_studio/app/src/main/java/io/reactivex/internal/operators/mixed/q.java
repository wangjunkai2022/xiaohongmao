package io.reactivex.internal.operators.mixed;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.l0;
import io.reactivex.o0;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMapSingle.java */
/* loaded from: classes3.dex */
public final class q<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f73769a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends o0<? extends R>> f73770b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73771c;

    /* compiled from: ObservableSwitchMapSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements g0<T>, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73772i = -5402190102429853762L;

        /* renamed from: j  reason: collision with root package name */
        static final C0584a<Object> f73773j = new C0584a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f73774a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends o0<? extends R>> f73775b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73776c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73777d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0584a<R>> f73778e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f73779f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73780g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73781h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableSwitchMapSingle.java */
        /* renamed from: io.reactivex.internal.operators.mixed.q$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0584a<R> extends AtomicReference<io.reactivex.disposables.c> implements l0<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f73782c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73783a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f73784b;

            C0584a(a<?, R> aVar) {
                this.f73783a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f73783a.c(this, th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(R r9) {
                this.f73784b = r9;
                this.f73783a.b();
            }
        }

        a(g0<? super R> g0Var, n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9) {
            this.f73774a = g0Var;
            this.f73775b = oVar;
            this.f73776c = z9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0584a<Object> c0584a = f73773j;
            C0584a<Object> c0584a2 = (C0584a) this.f73778e.getAndSet(c0584a);
            if (c0584a2 == null || c0584a2 == c0584a) {
                return;
            }
            c0584a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f73774a;
            AtomicThrowable atomicThrowable = this.f73777d;
            AtomicReference<C0584a<R>> atomicReference = this.f73778e;
            int i4 = 1;
            while (!this.f73781h) {
                if (atomicThrowable.get() != null && !this.f73776c) {
                    g0Var.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z9 = this.f73780g;
                C0584a<R> c0584a = atomicReference.get();
                boolean z10 = c0584a == null;
                if (z9 && z10) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate != null) {
                        g0Var.onError(terminate);
                        return;
                    } else {
                        g0Var.onComplete();
                        return;
                    }
                } else if (!z10 && c0584a.f73784b != null) {
                    atomicReference.compareAndSet(c0584a, null);
                    g0Var.onNext((R) c0584a.f73784b);
                } else {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0584a<R> c0584a, Throwable th) {
            if (this.f73778e.compareAndSet(c0584a, null) && this.f73777d.addThrowable(th)) {
                if (!this.f73776c) {
                    this.f73779f.dispose();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73781h = true;
            this.f73779f.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73781h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73780g = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73777d.addThrowable(th)) {
                if (!this.f73776c) {
                    a();
                }
                this.f73780g = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t9) {
            C0584a<R> c0584a;
            C0584a<R> c0584a2 = this.f73778e.get();
            if (c0584a2 != null) {
                c0584a2.a();
            }
            try {
                o0 o0Var = (o0) io.reactivex.internal.functions.b.g(this.f73775b.apply(t9), "The mapper returned a null SingleSource");
                C0584a<R> c0584a3 = new C0584a<>(this);
                do {
                    c0584a = this.f73778e.get();
                    if (c0584a == f73773j) {
                        return;
                    }
                } while (!this.f73778e.compareAndSet(c0584a, c0584a3));
                o0Var.d(c0584a3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73779f.dispose();
                this.f73778e.getAndSet(f73773j);
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73779f, cVar)) {
                this.f73779f = cVar;
                this.f73774a.onSubscribe(this);
            }
        }
    }

    public q(z<T> zVar, n7.o<? super T, ? extends o0<? extends R>> oVar, boolean z9) {
        this.f73769a = zVar;
        this.f73770b = oVar;
        this.f73771c = z9;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super R> g0Var) {
        if (r.c(this.f73769a, this.f73770b, g0Var)) {
            return;
        }
        this.f73769a.subscribe(new a(g0Var, this.f73770b, this.f73771c));
    }
}
