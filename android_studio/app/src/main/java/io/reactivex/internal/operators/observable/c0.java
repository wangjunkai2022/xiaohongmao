package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableCreate.java */
/* loaded from: classes3.dex */
public final class c0<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.c0<T> f73928a;

    /* compiled from: ObservableCreate.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.b0<T>, io.reactivex.disposables.c {

        /* renamed from: b  reason: collision with root package name */
        private static final long f73929b = -3434801548987643227L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73930a;

        a(io.reactivex.g0<? super T> g0Var) {
            this.f73930a = g0Var;
        }

        @Override // io.reactivex.b0
        public boolean a(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.f73930a.onError(th);
                dispose();
                return true;
            } catch (Throwable th2) {
                dispose();
                throw th2;
            }
        }

        @Override // io.reactivex.b0
        public void b(io.reactivex.disposables.c cVar) {
            DisposableHelper.set(this, cVar);
        }

        @Override // io.reactivex.b0
        public void c(n7.f fVar) {
            b(new CancellableDisposable(fVar));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.b0, io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            try {
                this.f73930a.onComplete();
            } finally {
                dispose();
            }
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (isDisposed()) {
            } else {
                this.f73930a.onNext(t9);
            }
        }

        @Override // io.reactivex.b0
        public io.reactivex.b0<T> serialize() {
            return new b(this);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    /* compiled from: ObservableCreate.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicInteger implements io.reactivex.b0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73931e = 4883307006032401862L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b0<T> f73932a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f73933b = new AtomicThrowable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f73934c = new io.reactivex.internal.queue.b<>(16);

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f73935d;

        b(io.reactivex.b0<T> b0Var) {
            this.f73932a = b0Var;
        }

        @Override // io.reactivex.b0
        public boolean a(Throwable th) {
            if (!this.f73932a.isDisposed() && !this.f73935d) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f73933b.addThrowable(th)) {
                    this.f73935d = true;
                    d();
                    return true;
                }
            }
            return false;
        }

        @Override // io.reactivex.b0
        public void b(io.reactivex.disposables.c cVar) {
            this.f73932a.b(cVar);
        }

        @Override // io.reactivex.b0
        public void c(n7.f fVar) {
            this.f73932a.c(fVar);
        }

        void d() {
            if (getAndIncrement() == 0) {
                h();
            }
        }

        void h() {
            io.reactivex.b0<T> b0Var = this.f73932a;
            io.reactivex.internal.queue.b<T> bVar = this.f73934c;
            AtomicThrowable atomicThrowable = this.f73933b;
            int i4 = 1;
            while (!b0Var.isDisposed()) {
                if (atomicThrowable.get() != null) {
                    bVar.clear();
                    b0Var.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z9 = this.f73935d;
                T poll = bVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    b0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    b0Var.onNext(poll);
                }
            }
            bVar.clear();
        }

        @Override // io.reactivex.b0, io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73932a.isDisposed();
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f73932a.isDisposed() || this.f73935d) {
                return;
            }
            this.f73935d = true;
            d();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            if (this.f73932a.isDisposed() || this.f73935d) {
                return;
            }
            if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f73932a.onNext(t9);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.internal.queue.b<T> bVar = this.f73934c;
                synchronized (bVar) {
                    bVar.offer(t9);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            h();
        }

        @Override // io.reactivex.b0
        public io.reactivex.b0<T> serialize() {
            return this;
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f73932a.toString();
        }
    }

    public c0(io.reactivex.c0<T> c0Var) {
        this.f73928a = c0Var;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var);
        g0Var.onSubscribe(aVar);
        try {
            this.f73928a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
