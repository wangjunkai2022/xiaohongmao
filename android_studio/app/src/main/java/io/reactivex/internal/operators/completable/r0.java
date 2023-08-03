package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableUsing.java */
/* loaded from: classes3.dex */
public final class r0<R> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Callable<R> f71449a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super R, ? extends io.reactivex.g> f71450b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super R> f71451c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f71452d;

    /* compiled from: CompletableUsing.java */
    /* loaded from: classes3.dex */
    static final class a<R> extends AtomicReference<Object> implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71453e = -674404550052917487L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71454a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super R> f71455b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f71456c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f71457d;

        a(io.reactivex.d dVar, R r9, n7.g<? super R> gVar, boolean z9) {
            super(r9);
            this.f71454a = dVar;
            this.f71455b = gVar;
            this.f71456c = z9;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f71455b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71457d.dispose();
            this.f71457d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71457d.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71457d = DisposableHelper.DISPOSED;
            if (this.f71456c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f71455b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f71454a.onError(th);
                    return;
                }
            }
            this.f71454a.onComplete();
            if (this.f71456c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71457d = DisposableHelper.DISPOSED;
            if (this.f71456c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f71455b.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    th = new CompositeException(th, th2);
                }
            }
            this.f71454a.onError(th);
            if (this.f71456c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f71457d, cVar)) {
                this.f71457d = cVar;
                this.f71454a.onSubscribe(this);
            }
        }
    }

    public r0(Callable<R> callable, n7.o<? super R, ? extends io.reactivex.g> oVar, n7.g<? super R> gVar, boolean z9) {
        this.f71449a = callable;
        this.f71450b = oVar;
        this.f71451c = gVar;
        this.f71452d = z9;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        try {
            R call = this.f71449a.call();
            try {
                ((io.reactivex.g) io.reactivex.internal.functions.b.g(this.f71450b.apply(call), "The completableFunction returned a null CompletableSource")).d(new a(dVar, call, this.f71451c, this.f71452d));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (this.f71452d) {
                    try {
                        this.f71451c.accept(call);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), dVar);
                        return;
                    }
                }
                EmptyDisposable.error(th, dVar);
                if (this.f71452d) {
                    return;
                }
                try {
                    this.f71451c.accept(call);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    io.reactivex.plugins.a.Y(th3);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            EmptyDisposable.error(th4, dVar);
        }
    }
}
