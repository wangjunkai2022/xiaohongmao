package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleTimeout.java */
/* loaded from: classes4.dex */
public final class s0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75500a;

    /* renamed from: b  reason: collision with root package name */
    final long f75501b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f75502c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f75503d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75504e;

    /* compiled from: SingleTimeout.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T>, Runnable, io.reactivex.disposables.c {

        /* renamed from: g  reason: collision with root package name */
        private static final long f75505g = 37497744973048446L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75506a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f75507b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0608a<T> f75508c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.o0<? extends T> f75509d;

        /* renamed from: e  reason: collision with root package name */
        final long f75510e;

        /* renamed from: f  reason: collision with root package name */
        final TimeUnit f75511f;

        /* compiled from: SingleTimeout.java */
        /* renamed from: io.reactivex.internal.operators.single.s0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0608a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.l0<T> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f75512b = 2071387740092105509L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.l0<? super T> f75513a;

            C0608a(io.reactivex.l0<? super T> l0Var) {
                this.f75513a = l0Var;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f75513a.onError(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(T t9) {
                this.f75513a.onSuccess(t9);
            }
        }

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.o0<? extends T> o0Var, long j4, TimeUnit timeUnit) {
            this.f75506a = l0Var;
            this.f75509d = o0Var;
            this.f75510e = j4;
            this.f75511f = timeUnit;
            if (o0Var != null) {
                this.f75508c = new C0608a<>(l0Var);
            } else {
                this.f75508c = null;
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f75507b);
            C0608a<T> c0608a = this.f75508c;
            if (c0608a != null) {
                DisposableHelper.dispose(c0608a);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper && compareAndSet(cVar, disposableHelper)) {
                DisposableHelper.dispose(this.f75507b);
                this.f75506a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper || !compareAndSet(cVar, disposableHelper)) {
                return;
            }
            DisposableHelper.dispose(this.f75507b);
            this.f75506a.onSuccess(t9);
        }

        @Override // java.lang.Runnable
        public void run() {
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper || !compareAndSet(cVar, disposableHelper)) {
                return;
            }
            if (cVar != null) {
                cVar.dispose();
            }
            io.reactivex.o0<? extends T> o0Var = this.f75509d;
            if (o0Var == null) {
                this.f75506a.onError(new TimeoutException(io.reactivex.internal.util.g.e(this.f75510e, this.f75511f)));
                return;
            }
            this.f75509d = null;
            o0Var.d(this.f75508c);
        }
    }

    public s0(io.reactivex.o0<T> o0Var, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, io.reactivex.o0<? extends T> o0Var2) {
        this.f75500a = o0Var;
        this.f75501b = j4;
        this.f75502c = timeUnit;
        this.f75503d = h0Var;
        this.f75504e = o0Var2;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        a aVar = new a(l0Var, this.f75504e, this.f75501b, this.f75502c);
        l0Var.onSubscribe(aVar);
        DisposableHelper.replace(aVar.f75507b, this.f75503d.g(aVar, this.f75501b, this.f75502c));
        this.f75500a.d(aVar);
    }
}
