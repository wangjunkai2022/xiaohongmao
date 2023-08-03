package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableBufferBoundary.java */
/* loaded from: classes4.dex */
public final class n<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<U> f79776b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends Open> f79777c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super Open, ? extends io.reactivex.rxjava3.core.l0<? extends Close>> f79778d;

    /* compiled from: ObservableBufferBoundary.java */
    /* loaded from: classes4.dex */
    static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: m  reason: collision with root package name */
        private static final long f79779m = -8466418554264089604L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super C> f79780a;

        /* renamed from: b  reason: collision with root package name */
        final q7.s<C> f79781b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends Open> f79782c;

        /* renamed from: d  reason: collision with root package name */
        final q7.o<? super Open, ? extends io.reactivex.rxjava3.core.l0<? extends Close>> f79783d;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79787h;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f79789j;

        /* renamed from: k  reason: collision with root package name */
        long f79790k;

        /* renamed from: i  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<C> f79788i = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.g0.R());

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f79784e = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79785f = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        Map<Long, C> f79791l = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f79786g = new AtomicThrowable();

        /* compiled from: ObservableBufferBoundary.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0673a<Open> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<Open>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79792b = -8498650778633225126L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, ?, Open, ?> f79793a;

            C0673a(a<?, ?, Open, ?> parent) {
                this.f79793a = parent;
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                lazySet(DisposableHelper.DISPOSED);
                this.f79793a.e(this);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable t9) {
                lazySet(DisposableHelper.DISPOSED);
                this.f79793a.a(this, t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(Open t9) {
                this.f79793a.d(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super C> actual, io.reactivex.rxjava3.core.l0<? extends Open> bufferOpen, q7.o<? super Open, ? extends io.reactivex.rxjava3.core.l0<? extends Close>> bufferClose, q7.s<C> bufferSupplier) {
            this.f79780a = actual;
            this.f79781b = bufferSupplier;
            this.f79782c = bufferOpen;
            this.f79783d = bufferClose;
        }

        void a(io.reactivex.rxjava3.disposables.f observer, Throwable ex) {
            DisposableHelper.dispose(this.f79785f);
            this.f79784e.c(observer);
            onError(ex);
        }

        void b(b<T, C> closer, long idx) {
            boolean z9;
            this.f79784e.c(closer);
            if (this.f79784e.g() == 0) {
                DisposableHelper.dispose(this.f79785f);
                z9 = true;
            } else {
                z9 = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.f79791l;
                if (map == null) {
                    return;
                }
                this.f79788i.offer(map.remove(Long.valueOf(idx)));
                if (z9) {
                    this.f79787h = true;
                }
                c();
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super C> n0Var = this.f79780a;
            io.reactivex.rxjava3.internal.queue.b<C> bVar = this.f79788i;
            int i4 = 1;
            while (!this.f79789j) {
                boolean z9 = this.f79787h;
                if (z9 && this.f79786g.get() != null) {
                    bVar.clear();
                    this.f79786g.tryTerminateConsumer(n0Var);
                    return;
                }
                C poll = bVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    n0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    n0Var.onNext(poll);
                }
            }
            bVar.clear();
        }

        void d(Open token) {
            try {
                C c10 = this.f79781b.get();
                Objects.requireNonNull(c10, "The bufferSupplier returned a null Collection");
                C c11 = c10;
                io.reactivex.rxjava3.core.l0<? extends Close> apply = this.f79783d.apply(token);
                Objects.requireNonNull(apply, "The bufferClose returned a null ObservableSource");
                io.reactivex.rxjava3.core.l0<? extends Close> l0Var = apply;
                long j4 = this.f79790k;
                this.f79790k = 1 + j4;
                synchronized (this) {
                    Map<Long, C> map = this.f79791l;
                    if (map == null) {
                        return;
                    }
                    map.put(Long.valueOf(j4), c11);
                    b bVar = new b(this, j4);
                    this.f79784e.b(bVar);
                    l0Var.a(bVar);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                DisposableHelper.dispose(this.f79785f);
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (DisposableHelper.dispose(this.f79785f)) {
                this.f79789j = true;
                this.f79784e.dispose();
                synchronized (this) {
                    this.f79791l = null;
                }
                if (getAndIncrement() != 0) {
                    this.f79788i.clear();
                }
            }
        }

        void e(C0673a<Open> os) {
            this.f79784e.c(os);
            if (this.f79784e.g() == 0) {
                DisposableHelper.dispose(this.f79785f);
                this.f79787h = true;
                c();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79785f.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79784e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f79791l;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    this.f79788i.offer(c10);
                }
                this.f79791l = null;
                this.f79787h = true;
                c();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79786g.tryAddThrowableOrReport(t9)) {
                this.f79784e.dispose();
                synchronized (this) {
                    this.f79791l = null;
                }
                this.f79787h = true;
                c();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            synchronized (this) {
                Map<Long, C> map = this.f79791l;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    c10.add(t9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this.f79785f, d4)) {
                C0673a c0673a = new C0673a(this);
                this.f79784e.b(c0673a);
                this.f79782c.a(c0673a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableBufferBoundary.java */
    /* loaded from: classes4.dex */
    public static final class b<T, C extends Collection<? super T>> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<Object>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f79794c = -8498650778633225126L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, C, ?, ?> f79795a;

        /* renamed from: b  reason: collision with root package name */
        final long f79796b;

        b(a<T, C, ?, ?> parent, long index) {
            this.f79795a = parent;
            this.f79796b = index;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f79795a.b(this, this.f79796b);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f79795a.a(this, t9);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            io.reactivex.rxjava3.disposables.f fVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar != disposableHelper) {
                lazySet(disposableHelper);
                fVar.dispose();
                this.f79795a.b(this, this.f79796b);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    public n(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<? extends Open> bufferOpen, q7.o<? super Open, ? extends io.reactivex.rxjava3.core.l0<? extends Close>> bufferClose, q7.s<U> bufferSupplier) {
        super(source);
        this.f79777c = bufferOpen;
        this.f79778d = bufferClose;
        this.f79776b = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        a aVar = new a(t9, this.f79777c, this.f79778d, this.f79776b);
        t9.onSubscribe(aVar);
        this.f79141a.a(aVar);
    }
}
