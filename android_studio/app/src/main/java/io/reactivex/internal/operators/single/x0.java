package io.reactivex.internal.operators.single;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleUsing.java */
/* loaded from: classes4.dex */
public final class x0<T, U> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<U> f75554a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super U, ? extends io.reactivex.o0<? extends T>> f75555b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super U> f75556c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f75557d;

    /* compiled from: SingleUsing.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<Object> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75558e = -5331524057054083935L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75559a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super U> f75560b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f75561c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f75562d;

        a(io.reactivex.l0<? super T> l0Var, U u9, boolean z9, n7.g<? super U> gVar) {
            super(u9);
            this.f75559a = l0Var;
            this.f75561c = z9;
            this.f75560b = gVar;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f75560b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75562d.dispose();
            this.f75562d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75562d.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75562d = DisposableHelper.DISPOSED;
            if (this.f75561c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f75560b.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    th = new CompositeException(th, th2);
                }
            }
            this.f75559a.onError(th);
            if (this.f75561c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75562d, cVar)) {
                this.f75562d = cVar;
                this.f75559a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75562d = DisposableHelper.DISPOSED;
            if (this.f75561c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f75560b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f75559a.onError(th);
                    return;
                }
            }
            this.f75559a.onSuccess(t9);
            if (this.f75561c) {
                return;
            }
            a();
        }
    }

    public x0(Callable<U> callable, n7.o<? super U, ? extends io.reactivex.o0<? extends T>> oVar, n7.g<? super U> gVar, boolean z9) {
        this.f75554a = callable;
        this.f75555b = oVar;
        this.f75556c = gVar;
        this.f75557d = z9;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        try {
            U call = this.f75554a.call();
            try {
                ((io.reactivex.o0) io.reactivex.internal.functions.b.g(this.f75555b.apply(call), "The singleFunction returned a null SingleSource")).d(new a(l0Var, call, this.f75557d, this.f75556c));
            } catch (Throwable th) {
                th = th;
                io.reactivex.exceptions.a.b(th);
                if (this.f75557d) {
                    try {
                        this.f75556c.accept(call);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        th = new CompositeException(th, th2);
                    }
                }
                EmptyDisposable.error(th, l0Var);
                if (this.f75557d) {
                    return;
                }
                try {
                    this.f75556c.accept(call);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    io.reactivex.plugins.a.Y(th3);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            EmptyDisposable.error(th4, l0Var);
        }
    }
}
