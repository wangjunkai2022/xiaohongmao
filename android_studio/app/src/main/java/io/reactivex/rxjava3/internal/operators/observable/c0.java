package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableCreate.java */
/* loaded from: classes4.dex */
public final class c0<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.j0<T> f79249a;

    /* compiled from: ObservableCreate.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.i0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: b  reason: collision with root package name */
        private static final long f79250b = -3434801548987643227L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79251a;

        a(io.reactivex.rxjava3.core.n0<? super T> observer) {
            this.f79251a = observer;
        }

        @Override // io.reactivex.rxjava3.core.i0
        public boolean a(Throwable t9) {
            if (t9 == null) {
                t9 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.f79251a.onError(t9);
                dispose();
                return true;
            } catch (Throwable th) {
                dispose();
                throw th;
            }
        }

        @Override // io.reactivex.rxjava3.core.i0
        public void b(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.set(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.i0
        public void c(q7.f c10) {
            b(new CancellableDisposable(c10));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.i0, io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            try {
                this.f79251a.onComplete();
            } finally {
                dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onError(Throwable t9) {
            if (a(t9)) {
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
            } else if (isDisposed()) {
            } else {
                this.f79251a.onNext(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.i0
        public io.reactivex.rxjava3.core.i0<T> serialize() {
            return new b(this);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    /* compiled from: ObservableCreate.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicInteger implements io.reactivex.rxjava3.core.i0<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f79252e = 4883307006032401862L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.i0<T> f79253a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f79254b = new AtomicThrowable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f79255c = new io.reactivex.rxjava3.internal.queue.b<>(16);

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f79256d;

        b(io.reactivex.rxjava3.core.i0<T> emitter) {
            this.f79253a = emitter;
        }

        @Override // io.reactivex.rxjava3.core.i0
        public boolean a(Throwable t9) {
            if (!this.f79256d && !this.f79253a.isDisposed()) {
                if (t9 == null) {
                    t9 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
                }
                if (this.f79254b.tryAddThrowable(t9)) {
                    this.f79256d = true;
                    d();
                    return true;
                }
            }
            return false;
        }

        @Override // io.reactivex.rxjava3.core.i0
        public void b(io.reactivex.rxjava3.disposables.f d4) {
            this.f79253a.b(d4);
        }

        @Override // io.reactivex.rxjava3.core.i0
        public void c(q7.f c10) {
            this.f79253a.c(c10);
        }

        void d() {
            if (getAndIncrement() == 0) {
                h();
            }
        }

        void h() {
            io.reactivex.rxjava3.core.i0<T> i0Var = this.f79253a;
            io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f79255c;
            AtomicThrowable atomicThrowable = this.f79254b;
            int i4 = 1;
            while (!i0Var.isDisposed()) {
                if (atomicThrowable.get() != null) {
                    bVar.clear();
                    atomicThrowable.tryTerminateConsumer(i0Var);
                    return;
                }
                boolean z9 = this.f79256d;
                T poll = bVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    i0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    i0Var.onNext(poll);
                }
            }
            bVar.clear();
        }

        @Override // io.reactivex.rxjava3.core.i0, io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79253a.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onComplete() {
            if (this.f79256d || this.f79253a.isDisposed()) {
                return;
            }
            this.f79256d = true;
            d();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onError(Throwable t9) {
            if (a(t9)) {
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            if (this.f79256d || this.f79253a.isDisposed()) {
                return;
            }
            if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f79253a.onNext(t9);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f79255c;
                synchronized (bVar) {
                    bVar.offer(t9);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            h();
        }

        @Override // io.reactivex.rxjava3.core.i0
        public io.reactivex.rxjava3.core.i0<T> serialize() {
            return this;
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f79253a.toString();
        }
    }

    public c0(io.reactivex.rxjava3.core.j0<T> source) {
        this.f79249a = source;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        try {
            this.f79249a.a(aVar);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            aVar.onError(th);
        }
    }
}
