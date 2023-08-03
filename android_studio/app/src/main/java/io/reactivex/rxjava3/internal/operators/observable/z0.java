package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableFlatMapMaybe.java */
/* loaded from: classes4.dex */
public final class z0<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f80473b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f80474c;

    /* compiled from: ObservableFlatMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: j  reason: collision with root package name */
        private static final long f80475j = 8600231336733376951L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f80476a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f80477b;

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> f80481f;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80483h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f80484i;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f80478c = new io.reactivex.rxjava3.disposables.c();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f80480e = new AtomicThrowable();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f80479d = new AtomicInteger(1);

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> f80482g = new AtomicReference<>();

        /* compiled from: ObservableFlatMapMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.z0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0681a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<R>, io.reactivex.rxjava3.disposables.f {

            /* renamed from: b  reason: collision with root package name */
            private static final long f80485b = -502562646270949838L;

            C0681a() {
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.disposables.f
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                a.this.e(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                a.this.h(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R value) {
                a.this.i(this, value);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper, boolean delayErrors) {
            this.f80476a = actual;
            this.f80481f = mapper;
            this.f80477b = delayErrors;
        }

        void a() {
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f80482g.get();
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
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f80476a;
            AtomicInteger atomicInteger = this.f80479d;
            AtomicReference<io.reactivex.rxjava3.internal.queue.b<R>> atomicReference = this.f80482g;
            int i4 = 1;
            while (!this.f80484i) {
                if (!this.f80477b && this.f80480e.get() != null) {
                    a();
                    this.f80480e.tryTerminateConsumer(n0Var);
                    return;
                }
                boolean z9 = atomicInteger.get() == 0;
                io.reactivex.rxjava3.internal.queue.b<R> bVar = atomicReference.get();
                R poll = bVar != null ? bVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10) {
                    this.f80480e.tryTerminateConsumer(n0Var);
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
            io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f80482g.get();
            if (bVar != null) {
                return bVar;
            }
            io.reactivex.rxjava3.internal.queue.b<R> bVar2 = new io.reactivex.rxjava3.internal.queue.b<>(io.reactivex.rxjava3.core.g0.R());
            return this.f80482g.compareAndSet(null, bVar2) ? bVar2 : this.f80482g.get();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80484i = true;
            this.f80483h.dispose();
            this.f80478c.dispose();
            this.f80480e.tryTerminateAndReport();
        }

        void e(a<T, R>.C0681a inner) {
            this.f80478c.c(inner);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z9 = this.f80479d.decrementAndGet() == 0;
                    io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f80482g.get();
                    if (z9 && (bVar == null || bVar.isEmpty())) {
                        this.f80480e.tryTerminateConsumer(this.f80476a);
                        return;
                    } else if (decrementAndGet() == 0) {
                        return;
                    } else {
                        c();
                        return;
                    }
                }
            }
            this.f80479d.decrementAndGet();
            b();
        }

        void h(a<T, R>.C0681a inner, Throwable e4) {
            this.f80478c.c(inner);
            if (this.f80480e.tryAddThrowableOrReport(e4)) {
                if (!this.f80477b) {
                    this.f80483h.dispose();
                    this.f80478c.dispose();
                }
                this.f80479d.decrementAndGet();
                b();
            }
        }

        void i(a<T, R>.C0681a inner, R value) {
            this.f80478c.c(inner);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    this.f80476a.onNext(value);
                    boolean z9 = this.f80479d.decrementAndGet() == 0;
                    io.reactivex.rxjava3.internal.queue.b<R> bVar = this.f80482g.get();
                    if (z9 && (bVar == null || bVar.isEmpty())) {
                        this.f80480e.tryTerminateConsumer(this.f80476a);
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
            this.f80479d.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            c();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80484i;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80479d.decrementAndGet();
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80479d.decrementAndGet();
            if (this.f80480e.tryAddThrowableOrReport(t9)) {
                if (!this.f80477b) {
                    this.f80478c.dispose();
                }
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            try {
                io.reactivex.rxjava3.core.b0<? extends R> apply = this.f80481f.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                io.reactivex.rxjava3.core.b0<? extends R> b0Var = apply;
                this.f80479d.getAndIncrement();
                C0681a c0681a = new C0681a();
                if (this.f80484i || !this.f80478c.b(c0681a)) {
                    return;
                }
                b0Var.b(c0681a);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80483h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80483h, d4)) {
                this.f80483h = d4;
                this.f80476a.onSubscribe(this);
            }
        }
    }

    public z0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.b0<? extends R>> mapper, boolean delayError) {
        super(source);
        this.f80473b = mapper;
        this.f80474c = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        this.f79141a.a(new a(observer, this.f80473b, this.f80474c));
    }
}
