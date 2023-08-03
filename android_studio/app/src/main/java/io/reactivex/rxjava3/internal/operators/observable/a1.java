package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapSingle.java */
/* loaded from: classes4.dex */
public final class a1<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f79145b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f79146c;

    /* compiled from: ObservableFlatMapSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: j  reason: collision with root package name */
        private static final long f79147j = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79148a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f79149b;

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> f79153f;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79155h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f79156i;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f79150c = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f79152e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f79151d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> f79154g = new AtomicReference<>();

        /* compiled from: ObservableFlatMapSingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.a1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0663a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<R>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79157b = -502562646270949838L;

            C0663a() {
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.e(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(R value) {
                a.this.h(this, value);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper, boolean delayErrors) {
            this.f79148a = actual;
            this.f79153f = mapper;
            this.f79149b = delayErrors;
        }

        void a() {
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f79154g.get();
            if (bVar != null) {
                bVar.clear();
            }
        }

        void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        void c() {
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f79148a;
            AtomicInteger atomicInteger = this.f79151d;
            AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> atomicReference = this.f79154g;
            int i4 = 1;
            while (!this.f79156i) {
                if (!this.f79149b && this.f79152e.get() != null) {
                    a();
                    this.f79152e.tryTerminateConsumer(n0Var);
                    return;
                }
                boolean z9 = atomicInteger.get() == 0;
                io.reactivex.rxjava3.internal.queue.b<R> bVar = atomicReference.get();
                R poll = bVar != null ? bVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10) {
                    this.f79152e.tryTerminateConsumer(this.f79148a);
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
            a();
        }

        io.reactivex.rxjava3.internal.queue.b<R> d() {
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f79154g.get();
            if (bVar != null) {
                return bVar;
            }
            io.reactivex.rxjava3.internal.queue.b<R> bVar2 = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.g0.R());
            return this.f79154g.compareAndSet(null, bVar2) ? bVar2 : this.f79154g.get();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79156i = true;
            this.f79155h.dispose();
            this.f79150c.dispose();
            this.f79152e.tryTerminateAndReport();
        }

        void e(a<T, R>.C0663a inner, Throwable e4) {
            this.f79150c.c(inner);
            if (this.f79152e.tryAddThrowableOrReport(e4)) {
                if (!this.f79149b) {
                    this.f79155h.dispose();
                    this.f79150c.dispose();
                }
                this.f79151d.decrementAndGet();
                b();
            }
        }

        void h(a<T, R>.C0663a inner, R value) {
            this.f79150c.c(inner);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f79148a.onNext(value);
                    boolean z9 = this.f79151d.decrementAndGet() == 0;
                    io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f79154g.get();
                    if (z9 && (bVar == null || bVar.isEmpty())) {
                        this.f79152e.tryTerminateConsumer(this.f79148a);
                        return;
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    c();
                }
            }
            io.reactivex.rxjava3.internal.queue.b<R> d4 = d();
            synchronized (d4) {
                d4.offer(value);
            }
            this.f79151d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79156i;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79151d.decrementAndGet();
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79151d.decrementAndGet();
            if (this.f79152e.tryAddThrowableOrReport(t9)) {
                if (!this.f79149b) {
                    this.f79150c.dispose();
                }
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            try {
                io.reactivex.rxjava3.core.v0<? extends R> apply = this.f79153f.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                io.reactivex.rxjava3.core.v0<? extends R> v0Var = apply;
                this.f79151d.getAndIncrement();
                C0663a c0663a = new C0663a();
                if (this.f79156i || !this.f79150c.b(c0663a)) {
                    return;
                }
                v0Var.d(c0663a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79155h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79155h, d4)) {
                this.f79155h = d4;
                this.f79148a.onSubscribe(this);
            }
        }
    }

    public a1(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.v0<? extends R>> mapper, boolean delayError) {
        super(source);
        this.f79145b = mapper;
        this.f79146c = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        this.f79141a.a(new a(observer, this.f79145b, this.f79146c));
    }
}
