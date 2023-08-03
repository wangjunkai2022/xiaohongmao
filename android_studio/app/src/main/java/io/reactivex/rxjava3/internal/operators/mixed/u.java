package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMapMaybe.java */
/* loaded from: classes4.dex */
public final class u<T, R> extends g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final g0<T> f79063a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends b0<? extends R>> f79064b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f79065c;

    /* compiled from: ObservableSwitchMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: i  reason: collision with root package name */
        private static final long f79066i = -5402190102429853762L;

        /* renamed from: j  reason: collision with root package name */
        static final C0661a<Object> f79067j = new C0661a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f79068a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends b0<? extends R>> f79069b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f79070c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f79071d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0661a<R>> f79072e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79073f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79074g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79075h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableSwitchMapMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0661a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements y<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f79076c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f79077a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f79078b;

            C0661a(a<?, R> parent) {
                this.f79077a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f79077a.c(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79077a.d(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f79078b = t9;
                this.f79077a.b();
            }
        }

        a(n0<? super R> downstream, q7.o<? super T, ? extends b0<? extends R>> mapper, boolean delayErrors) {
            this.f79068a = downstream;
            this.f79069b = mapper;
            this.f79070c = delayErrors;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0661a<Object> c0661a = f79067j;
            C0661a<Object> c0661a2 = (C0661a) this.f79072e.getAndSet(c0661a);
            if (c0661a2 == null || c0661a2 == c0661a) {
                return;
            }
            c0661a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            n0<? super R> n0Var = this.f79068a;
            AtomicThrowable atomicThrowable = this.f79071d;
            AtomicReference<C0661a<R>> atomicReference = this.f79072e;
            int i4 = 1;
            while (!this.f79075h) {
                if (atomicThrowable.get() != null && !this.f79070c) {
                    atomicThrowable.tryTerminateConsumer(n0Var);
                    return;
                }
                boolean z9 = this.f79074g;
                C0661a<R> c0661a = atomicReference.get();
                boolean z10 = c0661a == null;
                if (z9 && z10) {
                    atomicThrowable.tryTerminateConsumer(n0Var);
                    return;
                } else if (!z10 && c0661a.f79078b != null) {
                    atomicReference.compareAndSet(c0661a, null);
                    n0Var.onNext((R) c0661a.f79078b);
                } else {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0661a<R> sender) {
            if (this.f79072e.compareAndSet(sender, null)) {
                b();
            }
        }

        void d(C0661a<R> sender, Throwable ex) {
            if (this.f79072e.compareAndSet(sender, null)) {
                if (this.f79071d.tryAddThrowableOrReport(ex)) {
                    if (!this.f79070c) {
                        this.f79073f.dispose();
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
            this.f79075h = true;
            this.f79073f.dispose();
            a();
            this.f79071d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79075h;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79074g = true;
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79071d.tryAddThrowableOrReport(t9)) {
                if (!this.f79070c) {
                    a();
                }
                this.f79074g = true;
                b();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            C0661a<R> c0661a;
            C0661a<R> c0661a2 = this.f79072e.get();
            if (c0661a2 != null) {
                c0661a2.a();
            }
            try {
                b0<? extends R> apply = this.f79069b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                b0<? extends R> b0Var = apply;
                C0661a<R> c0661a3 = new C0661a<>(this);
                do {
                    c0661a = this.f79072e.get();
                    if (c0661a == f79067j) {
                        return;
                    }
                } while (!this.f79072e.compareAndSet(c0661a, c0661a3));
                b0Var.b(c0661a3);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79073f.dispose();
                this.f79072e.getAndSet(f79067j);
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79073f, d4)) {
                this.f79073f = d4;
                this.f79068a.onSubscribe(this);
            }
        }
    }

    public u(g0<T> source, q7.o<? super T, ? extends b0<? extends R>> mapper, boolean delayErrors) {
        this.f79063a = source;
        this.f79064b = mapper;
        this.f79065c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        if (w.b(this.f79063a, this.f79064b, observer)) {
            return;
        }
        this.f79063a.a(new a(observer, this.f79064b, this.f79065c));
    }
}
