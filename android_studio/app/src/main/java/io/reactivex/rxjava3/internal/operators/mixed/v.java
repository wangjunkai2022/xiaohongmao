package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.v0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMapSingle.java */
/* loaded from: classes4.dex */
public final class v<T, R> extends g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final g0<T> f79079a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends v0<? extends R>> f79080b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f79081c;

    /* compiled from: ObservableSwitchMapSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: i  reason: collision with root package name */
        private static final long f79082i = -5402190102429853762L;

        /* renamed from: j  reason: collision with root package name */
        static final C0662a<Object> f79083j = new C0662a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f79084a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends v0<? extends R>> f79085b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f79086c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f79087d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0662a<R>> f79088e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79089f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79090g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79091h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableSwitchMapSingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.v$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0662a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements s0<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f79092c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f79093a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f79094b;

            C0662a(a<?, R> parent) {
                this.f79093a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79093a.c(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f79094b = t9;
                this.f79093a.b();
            }
        }

        a(n0<? super R> downstream, q7.o<? super T, ? extends v0<? extends R>> mapper, boolean delayErrors) {
            this.f79084a = downstream;
            this.f79085b = mapper;
            this.f79086c = delayErrors;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0662a<Object> c0662a = f79083j;
            C0662a<Object> c0662a2 = (C0662a) this.f79088e.getAndSet(c0662a);
            if (c0662a2 == null || c0662a2 == c0662a) {
                return;
            }
            c0662a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            n0<? super R> n0Var = this.f79084a;
            AtomicThrowable atomicThrowable = this.f79087d;
            AtomicReference<C0662a<R>> atomicReference = this.f79088e;
            int i4 = 1;
            while (!this.f79091h) {
                if (atomicThrowable.get() != null && !this.f79086c) {
                    atomicThrowable.tryTerminateConsumer(n0Var);
                    return;
                }
                boolean z9 = this.f79090g;
                C0662a<R> c0662a = atomicReference.get();
                boolean z10 = c0662a == null;
                if (z9 && z10) {
                    atomicThrowable.tryTerminateConsumer(n0Var);
                    return;
                } else if (!z10 && c0662a.f79094b != null) {
                    atomicReference.compareAndSet(c0662a, null);
                    n0Var.onNext((R) c0662a.f79094b);
                } else {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0662a<R> sender, Throwable ex) {
            if (this.f79088e.compareAndSet(sender, null)) {
                if (this.f79087d.tryAddThrowableOrReport(ex)) {
                    if (!this.f79086c) {
                        this.f79089f.dispose();
                        a();
                    }
                    b();
                    return;
                }
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79091h = true;
            this.f79089f.dispose();
            a();
            this.f79087d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79091h;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79090g = true;
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79087d.tryAddThrowableOrReport(t9)) {
                if (!this.f79086c) {
                    a();
                }
                this.f79090g = true;
                b();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            C0662a<R> c0662a;
            C0662a<R> c0662a2 = this.f79088e.get();
            if (c0662a2 != null) {
                c0662a2.a();
            }
            try {
                v0<? extends R> apply = this.f79085b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                v0<? extends R> v0Var = apply;
                C0662a<R> c0662a3 = new C0662a<>(this);
                do {
                    c0662a = this.f79088e.get();
                    if (c0662a == f79083j) {
                        return;
                    }
                } while (!this.f79088e.compareAndSet(c0662a, c0662a3));
                v0Var.d(c0662a3);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79089f.dispose();
                this.f79088e.getAndSet(f79083j);
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79089f, d4)) {
                this.f79089f = d4;
                this.f79084a.onSubscribe(this);
            }
        }
    }

    public v(g0<T> source, q7.o<? super T, ? extends v0<? extends R>> mapper, boolean delayErrors) {
        this.f79079a = source;
        this.f79080b = mapper;
        this.f79081c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        if (w.c(this.f79079a, this.f79080b, observer)) {
            return;
        }
        this.f79079a.a(new a(observer, this.f79080b, this.f79081c));
    }
}
