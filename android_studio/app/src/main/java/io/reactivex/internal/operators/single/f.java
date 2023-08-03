package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;

/* compiled from: SingleDelay.java */
/* loaded from: classes4.dex */
public final class f<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75372a;

    /* renamed from: b  reason: collision with root package name */
    final long f75373b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f75374c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f75375d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f75376e;

    /* compiled from: SingleDelay.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final SequentialDisposable f75377a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75378b;

        /* compiled from: SingleDelay.java */
        /* renamed from: io.reactivex.internal.operators.single.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class RunnableC0607a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f75380a;

            RunnableC0607a(Throwable th) {
                this.f75380a = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f75378b.onError(this.f75380a);
            }
        }

        /* compiled from: SingleDelay.java */
        /* loaded from: classes4.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f75382a;

            b(T t9) {
                this.f75382a = t9;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f75378b.onSuccess((T) this.f75382a);
            }
        }

        a(SequentialDisposable sequentialDisposable, io.reactivex.l0<? super T> l0Var) {
            this.f75377a = sequentialDisposable;
            this.f75378b = l0Var;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            SequentialDisposable sequentialDisposable = this.f75377a;
            io.reactivex.h0 h0Var = f.this.f75375d;
            RunnableC0607a runnableC0607a = new RunnableC0607a(th);
            f fVar = f.this;
            sequentialDisposable.replace(h0Var.g(runnableC0607a, fVar.f75376e ? fVar.f75373b : 0L, fVar.f75374c));
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75377a.replace(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            SequentialDisposable sequentialDisposable = this.f75377a;
            io.reactivex.h0 h0Var = f.this.f75375d;
            b bVar = new b(t9);
            f fVar = f.this;
            sequentialDisposable.replace(h0Var.g(bVar, fVar.f75373b, fVar.f75374c));
        }
    }

    public f(io.reactivex.o0<? extends T> o0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        this.f75372a = o0Var;
        this.f75373b = j4;
        this.f75374c = timeUnit;
        this.f75375d = h0Var;
        this.f75376e = z9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        l0Var.onSubscribe(sequentialDisposable);
        this.f75372a.d(new a(sequentialDisposable, l0Var));
    }
}
