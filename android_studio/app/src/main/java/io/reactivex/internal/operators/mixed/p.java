package io.reactivex.internal.operators.mixed;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMapMaybe.java */
/* loaded from: classes3.dex */
public final class p<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final z<T> f73753a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends w<? extends R>> f73754b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73755c;

    /* compiled from: ObservableSwitchMapMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements g0<T>, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73756i = -5402190102429853762L;

        /* renamed from: j  reason: collision with root package name */
        static final C0583a<Object> f73757j = new C0583a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f73758a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends w<? extends R>> f73759b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73760c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73761d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0583a<R>> f73762e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f73763f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f73764g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73765h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableSwitchMapMaybe.java */
        /* renamed from: io.reactivex.internal.operators.mixed.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0583a<R> extends AtomicReference<io.reactivex.disposables.c> implements t<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f73766c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f73767a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f73768b;

            C0583a(a<?, R> aVar) {
                this.f73767a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73767a.c(this);
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73767a.d(this, th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                this.f73768b = r9;
                this.f73767a.b();
            }
        }

        a(g0<? super R> g0Var, n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9) {
            this.f73758a = g0Var;
            this.f73759b = oVar;
            this.f73760c = z9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0583a<Object> c0583a = f73757j;
            C0583a<Object> c0583a2 = (C0583a) this.f73762e.getAndSet(c0583a);
            if (c0583a2 == null || c0583a2 == c0583a) {
                return;
            }
            c0583a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            g0<? super R> g0Var = this.f73758a;
            AtomicThrowable atomicThrowable = this.f73761d;
            AtomicReference<C0583a<R>> atomicReference = this.f73762e;
            int i4 = 1;
            while (!this.f73765h) {
                if (atomicThrowable.get() != null && !this.f73760c) {
                    g0Var.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z9 = this.f73764g;
                C0583a<R> c0583a = atomicReference.get();
                boolean z10 = c0583a == null;
                if (z9 && z10) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate != null) {
                        g0Var.onError(terminate);
                        return;
                    } else {
                        g0Var.onComplete();
                        return;
                    }
                } else if (!z10 && c0583a.f73768b != null) {
                    atomicReference.compareAndSet(c0583a, null);
                    g0Var.onNext((R) c0583a.f73768b);
                } else {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0583a<R> c0583a) {
            if (this.f73762e.compareAndSet(c0583a, null)) {
                b();
            }
        }

        void d(C0583a<R> c0583a, Throwable th) {
            if (this.f73762e.compareAndSet(c0583a, null) && this.f73761d.addThrowable(th)) {
                if (!this.f73760c) {
                    this.f73763f.dispose();
                    a();
                }
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73765h = true;
            this.f73763f.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73765h;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f73764g = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f73761d.addThrowable(th)) {
                if (!this.f73760c) {
                    a();
                }
                this.f73764g = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t9) {
            C0583a<R> c0583a;
            C0583a<R> c0583a2 = this.f73762e.get();
            if (c0583a2 != null) {
                c0583a2.a();
            }
            try {
                w wVar = (w) io.reactivex.internal.functions.b.g(this.f73759b.apply(t9), "The mapper returned a null MaybeSource");
                C0583a<R> c0583a3 = new C0583a<>(this);
                do {
                    c0583a = this.f73762e.get();
                    if (c0583a == f73757j) {
                        return;
                    }
                } while (!this.f73762e.compareAndSet(c0583a, c0583a3));
                wVar.b(c0583a3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73763f.dispose();
                this.f73762e.getAndSet(f73757j);
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73763f, cVar)) {
                this.f73763f = cVar;
                this.f73758a.onSubscribe(this);
            }
        }
    }

    public p(z<T> zVar, n7.o<? super T, ? extends w<? extends R>> oVar, boolean z9) {
        this.f73753a = zVar;
        this.f73754b = oVar;
        this.f73755c = z9;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super R> g0Var) {
        if (r.b(this.f73753a, this.f73754b, g0Var)) {
            return;
        }
        this.f73753a.subscribe(new a(g0Var, this.f73754b, this.f73755c));
    }
}
