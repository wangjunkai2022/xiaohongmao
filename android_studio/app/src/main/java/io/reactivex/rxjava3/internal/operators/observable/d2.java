package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableMergeWithMaybe.java */
/* loaded from: classes4.dex */
public final class d2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f79303b;

    /* compiled from: ObservableMergeWithMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: j  reason: collision with root package name */
        private static final long f79304j = -4592979584110982903L;

        /* renamed from: k  reason: collision with root package name */
        static final int f79305k = 1;

        /* renamed from: l  reason: collision with root package name */
        static final int f79306l = 2;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79307a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79308b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0667a<T> f79309c = new C0667a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f79310d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.p<T> f79311e;

        /* renamed from: f  reason: collision with root package name */
        T f79312f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79313g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f79314h;

        /* renamed from: i  reason: collision with root package name */
        volatile int f79315i;

        /* compiled from: ObservableMergeWithMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.d2$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0667a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79316b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<T> f79317a;

            C0667a(a<T> parent) {
                this.f79317a = parent;
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f79317a.d();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79317a.e(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(T t9) {
                this.f79317a.h(t9);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79307a = downstream;
        }

        void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        void b() {
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79307a;
            int i4 = 1;
            while (!this.f79313g) {
                if (this.f79310d.get() != null) {
                    this.f79312f = null;
                    this.f79311e = null;
                    this.f79310d.tryTerminateConsumer(n0Var);
                    return;
                }
                int i10 = this.f79315i;
                if (i10 == 1) {
                    this.f79312f = null;
                    this.f79315i = 2;
                    n0Var.onNext((T) this.f79312f);
                    i10 = 2;
                }
                boolean z9 = this.f79314h;
                io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f79311e;
                T poll = pVar != null ? pVar.poll() : (Object) null;
                boolean z10 = poll == null;
                if (z9 && z10 && i10 == 2) {
                    this.f79311e = null;
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
            this.f79312f = null;
            this.f79311e = null;
        }

        io.reactivex.rxjava3.internal.fuseable.p<T> c() {
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f79311e;
            if (pVar == null) {
                io.reactivex.rxjava3.internal.queue.b bVar = new io.reactivex.rxjava3.internal.queue.b(io.reactivex.rxjava3.core.g0.R());
                this.f79311e = bVar;
                return bVar;
            }
            return pVar;
        }

        void d() {
            this.f79315i = 2;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79313g = true;
            DisposableHelper.dispose(this.f79308b);
            DisposableHelper.dispose(this.f79309c);
            this.f79310d.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f79311e = null;
                this.f79312f = null;
            }
        }

        void e(Throwable ex) {
            if (this.f79310d.tryAddThrowableOrReport(ex)) {
                DisposableHelper.dispose(this.f79308b);
                a();
            }
        }

        void h(T value) {
            if (compareAndSet(0, 1)) {
                this.f79307a.onNext(value);
                this.f79315i = 2;
            } else {
                this.f79312f = value;
                this.f79315i = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            b();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79308b.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79314h = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable ex) {
            if (this.f79310d.tryAddThrowableOrReport(ex)) {
                DisposableHelper.dispose(this.f79309c);
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (compareAndSet(0, 1)) {
                this.f79307a.onNext(t9);
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

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79308b, d4);
        }
    }

    public d2(io.reactivex.rxjava3.core.g0<T> source, io.reactivex.rxjava3.core.b0<? extends T> other) {
        super(source);
        this.f79303b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        this.f79141a.a(aVar);
        this.f79303b.b(aVar.f79309c);
    }
}
