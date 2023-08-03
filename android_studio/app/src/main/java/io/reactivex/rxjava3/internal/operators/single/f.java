package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;

/* compiled from: SingleDelay.java */
/* loaded from: classes4.dex */
public final class f<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f80794a;

    /* renamed from: b  reason: collision with root package name */
    final long f80795b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f80796c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80797d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f80798e;

    /* compiled from: SingleDelay.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final SequentialDisposable f80799a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80800b;

        /* compiled from: SingleDelay.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.single.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0687a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f80802a;

            RunnableC0687a(Throwable e4) {
                this.f80802a = e4;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f80800b.onError(this.f80802a);
            }
        }

        /* compiled from: SingleDelay.java */
        /* loaded from: classes4.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f80804a;

            b(T value) {
                this.f80804a = value;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f80800b.onSuccess((T) this.f80804a);
            }
        }

        a(SequentialDisposable sd, io.reactivex.rxjava3.core.s0<? super T> observer) {
            this.f80799a = sd;
            this.f80800b = observer;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(final Throwable e4) {
            SequentialDisposable sequentialDisposable = this.f80799a;
            io.reactivex.rxjava3.core.o0 o0Var = f.this.f80797d;
            RunnableC0687a runnableC0687a = new RunnableC0687a(e4);
            f fVar = f.this;
            sequentialDisposable.replace(o0Var.g(runnableC0687a, fVar.f80798e ? fVar.f80795b : 0L, fVar.f80796c));
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80799a.replace(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(final T value) {
            SequentialDisposable sequentialDisposable = this.f80799a;
            io.reactivex.rxjava3.core.o0 o0Var = f.this.f80797d;
            b bVar = new b(value);
            f fVar = f.this;
            sequentialDisposable.replace(o0Var.g(bVar, fVar.f80795b, fVar.f80796c));
        }
    }

    public f(io.reactivex.rxjava3.core.v0<? extends T> source, long time, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError) {
        this.f80794a = source;
        this.f80795b = time;
        this.f80796c = unit;
        this.f80797d = scheduler;
        this.f80798e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        this.f80794a.d(new a(sequentialDisposable, observer));
    }
}
