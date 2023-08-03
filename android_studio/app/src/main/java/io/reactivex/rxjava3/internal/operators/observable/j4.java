package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundarySelector.java */
/* loaded from: classes4.dex */
public final class j4<T, B, V> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.core.g0<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<B> f79591b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super B, ? extends io.reactivex.rxjava3.core.l0<V>> f79592c;

    /* renamed from: d  reason: collision with root package name */
    final int f79593d;

    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes4.dex */
    static final class a<T, B, V> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: r  reason: collision with root package name */
        private static final long f79594r = 8646217640096099753L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> f79595a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<B> f79596b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super B, ? extends io.reactivex.rxjava3.core.l0<V>> f79597c;

        /* renamed from: d  reason: collision with root package name */
        final int f79598d;

        /* renamed from: l  reason: collision with root package name */
        long f79606l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f79607m;

        /* renamed from: n  reason: collision with root package name */
        volatile boolean f79608n;

        /* renamed from: o  reason: collision with root package name */
        volatile boolean f79609o;

        /* renamed from: q  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79611q;

        /* renamed from: h  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<Object> f79602h = new io.reactivex.rxjava3.internal.queue.a();

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f79599e = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: g  reason: collision with root package name */
        final List<io.reactivex.rxjava3.subjects.j<T>> f79601g = new ArrayList();

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f79603i = new AtomicLong(1);

        /* renamed from: j  reason: collision with root package name */
        final AtomicBoolean f79604j = new AtomicBoolean();

        /* renamed from: p  reason: collision with root package name */
        final AtomicThrowable f79610p = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        final c<B> f79600f = new c<>(this);

        /* renamed from: k  reason: collision with root package name */
        final AtomicLong f79605k = new AtomicLong();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowBoundarySelector.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.j4$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0672a<T, V> extends io.reactivex.rxjava3.core.g0<T> implements io.reactivex.rxjava3.core.n0<V>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: a  reason: collision with root package name */
            final a<T, ?, V> f79612a;

            /* renamed from: b  reason: collision with root package name */
            final io.reactivex.rxjava3.subjects.j<T> f79613b;

            /* renamed from: c  reason: collision with root package name */
            final AtomicReference<io.reactivex.rxjava3.disposables.f> f79614c = new AtomicReference<>();

            /* renamed from: d  reason: collision with root package name */
            final AtomicBoolean f79615d = new AtomicBoolean();

            C0672a(a<T, ?, V> parent, io.reactivex.rxjava3.subjects.j<T> window) {
                this.f79612a = parent;
                this.f79613b = window;
            }

            boolean A8() {
                return !this.f79615d.get() && this.f79615d.compareAndSet(false, true);
            }

            @Override // io.reactivex.rxjava3.core.g0
            protected void d6(io.reactivex.rxjava3.core.n0<? super T> o9) {
                this.f79613b.a(o9);
                this.f79615d.set(true);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this.f79614c);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return this.f79614c.get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                this.f79612a.a(this);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable t9) {
                if (isDisposed()) {
                    io.reactivex.rxjava3.plugins.a.Y(t9);
                } else {
                    this.f79612a.b(t9);
                }
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(V t9) {
                if (DisposableHelper.dispose(this.f79614c)) {
                    this.f79612a.a(this);
                }
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this.f79614c, d4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowBoundarySelector.java */
        /* loaded from: classes4.dex */
        public static final class b<B> {

            /* renamed from: a  reason: collision with root package name */
            final B f79616a;

            b(B item) {
                this.f79616a = item;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableWindowBoundarySelector.java */
        /* loaded from: classes4.dex */
        public static final class c<B> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<B> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79617b = -3326496781427702834L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, B, ?> f79618a;

            c(a<?, B, ?> parent) {
                this.f79618a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                this.f79618a.e();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable t9) {
                this.f79618a.h(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(B t9) {
                this.f79618a.d(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> downstream, io.reactivex.rxjava3.core.l0<B> open, q7.o<? super B, ? extends io.reactivex.rxjava3.core.l0<V>> closingIndicator, int bufferSize) {
            this.f79595a = downstream;
            this.f79596b = open;
            this.f79597c = closingIndicator;
            this.f79598d = bufferSize;
        }

        void a(C0672a<T, V> what) {
            this.f79602h.offer(what);
            c();
        }

        void b(Throwable t9) {
            this.f79611q.dispose();
            this.f79600f.a();
            this.f79599e.dispose();
            if (this.f79610p.tryAddThrowableOrReport(t9)) {
                this.f79608n = true;
                c();
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> n0Var = this.f79595a;
            io.reactivex.rxjava3.internal.fuseable.p<Object> pVar = this.f79602h;
            List<io.reactivex.rxjava3.subjects.j<T>> list = this.f79601g;
            int i4 = 1;
            while (true) {
                if (this.f79607m) {
                    pVar.clear();
                    list.clear();
                } else {
                    boolean z9 = this.f79608n;
                    Object poll = pVar.poll();
                    boolean z10 = poll == null;
                    if (z9 && (z10 || this.f79610p.get() != null)) {
                        i(n0Var);
                        this.f79607m = true;
                    } else if (!z10) {
                        if (poll instanceof b) {
                            if (!this.f79604j.get()) {
                                try {
                                    io.reactivex.rxjava3.core.l0<V> apply = this.f79597c.apply(((b) poll).f79616a);
                                    Objects.requireNonNull(apply, "The closingIndicator returned a null ObservableSource");
                                    io.reactivex.rxjava3.core.l0<V> l0Var = apply;
                                    this.f79603i.getAndIncrement();
                                    io.reactivex.rxjava3.subjects.j<T> H8 = io.reactivex.rxjava3.subjects.j.H8(this.f79598d, this);
                                    C0672a c0672a = new C0672a(this, H8);
                                    n0Var.onNext(c0672a);
                                    if (c0672a.A8()) {
                                        H8.onComplete();
                                    } else {
                                        list.add(H8);
                                        this.f79599e.b(c0672a);
                                        l0Var.a(c0672a);
                                    }
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    this.f79611q.dispose();
                                    this.f79600f.a();
                                    this.f79599e.dispose();
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    this.f79610p.tryAddThrowableOrReport(th);
                                    this.f79608n = true;
                                }
                            }
                        } else if (poll instanceof C0672a) {
                            io.reactivex.rxjava3.subjects.j<T> jVar = ((C0672a) poll).f79613b;
                            list.remove(jVar);
                            this.f79599e.c((io.reactivex.rxjava3.disposables.f) poll);
                            jVar.onComplete();
                        } else {
                            for (io.reactivex.rxjava3.subjects.j<T> jVar2 : list) {
                                jVar2.onNext(poll);
                            }
                        }
                    } else if (this.f79609o && list.size() == 0) {
                        this.f79611q.dispose();
                        this.f79600f.a();
                        this.f79599e.dispose();
                        i(n0Var);
                        this.f79607m = true;
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        void d(B startValue) {
            this.f79602h.offer(new b(startValue));
            c();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79604j.compareAndSet(false, true)) {
                if (this.f79603i.decrementAndGet() == 0) {
                    this.f79611q.dispose();
                    this.f79600f.a();
                    this.f79599e.dispose();
                    this.f79610p.tryTerminateAndReport();
                    this.f79607m = true;
                    c();
                    return;
                }
                this.f79600f.a();
            }
        }

        void e() {
            this.f79609o = true;
            c();
        }

        void h(Throwable t9) {
            this.f79611q.dispose();
            this.f79599e.dispose();
            if (this.f79610p.tryAddThrowableOrReport(t9)) {
                this.f79608n = true;
                c();
            }
        }

        void i(io.reactivex.rxjava3.core.n0<?> downstream) {
            Throwable terminate = this.f79610p.terminate();
            if (terminate == null) {
                for (io.reactivex.rxjava3.subjects.j<T> jVar : this.f79601g) {
                    jVar.onComplete();
                }
                downstream.onComplete();
            } else if (terminate != io.reactivex.rxjava3.internal.util.g.f81331a) {
                for (io.reactivex.rxjava3.subjects.j<T> jVar2 : this.f79601g) {
                    jVar2.onError(terminate);
                }
                downstream.onError(terminate);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79604j.get();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79600f.a();
            this.f79599e.dispose();
            this.f79608n = true;
            c();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79600f.a();
            this.f79599e.dispose();
            if (this.f79610p.tryAddThrowableOrReport(t9)) {
                this.f79608n = true;
                c();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79602h.offer(t9);
            c();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79611q, d4)) {
                this.f79611q = d4;
                this.f79595a.onSubscribe(this);
                this.f79596b.a(this.f79600f);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f79603i.decrementAndGet() == 0) {
                this.f79611q.dispose();
                this.f79600f.a();
                this.f79599e.dispose();
                this.f79610p.tryTerminateAndReport();
                this.f79607m = true;
                c();
            }
        }
    }

    public j4(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<B> open, q7.o<? super B, ? extends io.reactivex.rxjava3.core.l0<V>> closingIndicator, int bufferSize) {
        super(source);
        this.f79591b = open;
        this.f79592c = closingIndicator;
        this.f79593d = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> t9) {
        this.f79141a.a(new a(t9, this.f79591b, this.f79592c, this.f79593d));
    }
}
