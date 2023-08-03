package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeUsing.java */
/* loaded from: classes3.dex */
public final class q1<T, D> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends D> f73437a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super D, ? extends io.reactivex.w<? extends T>> f73438b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super D> f73439c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f73440d;

    /* compiled from: MaybeUsing.java */
    /* loaded from: classes3.dex */
    static final class a<T, D> extends AtomicReference<Object> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73441e = -674404550052917487L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73442a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super D> f73443b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73444c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f73445d;

        a(io.reactivex.t<? super T> tVar, D d4, n7.g<? super D> gVar, boolean z9) {
            super(d4);
            this.f73442a = tVar;
            this.f73443b = gVar;
            this.f73444c = z9;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f73443b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73445d.dispose();
            this.f73445d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73445d.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73445d = DisposableHelper.DISPOSED;
            if (this.f73444c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f73443b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f73442a.onError(th);
                    return;
                }
            }
            this.f73442a.onComplete();
            if (this.f73444c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73445d = DisposableHelper.DISPOSED;
            if (this.f73444c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f73443b.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    th = new CompositeException(th, th2);
                }
            }
            this.f73442a.onError(th);
            if (this.f73444c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73445d, cVar)) {
                this.f73445d = cVar;
                this.f73442a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73445d = DisposableHelper.DISPOSED;
            if (this.f73444c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f73443b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f73442a.onError(th);
                    return;
                }
            }
            this.f73442a.onSuccess(t9);
            if (this.f73444c) {
                return;
            }
            a();
        }
    }

    public q1(Callable<? extends D> callable, n7.o<? super D, ? extends io.reactivex.w<? extends T>> oVar, n7.g<? super D> gVar, boolean z9) {
        this.f73437a = callable;
        this.f73438b = oVar;
        this.f73439c = gVar;
        this.f73440d = z9;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        try {
            D call = this.f73437a.call();
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73438b.apply(call), "The sourceSupplier returned a null MaybeSource")).b(new a(tVar, call, this.f73439c, this.f73440d));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (this.f73440d) {
                    try {
                        this.f73439c.accept(call);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), tVar);
                        return;
                    }
                }
                EmptyDisposable.error(th, tVar);
                if (this.f73440d) {
                    return;
                }
                try {
                    this.f73439c.accept(call);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    io.reactivex.plugins.a.Y(th3);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            EmptyDisposable.error(th4, tVar);
        }
    }
}
