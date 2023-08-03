package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableUsing.java */
/* loaded from: classes4.dex */
public final class t0<R> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<R> f76725a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super R, ? extends io.reactivex.rxjava3.core.g> f76726b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super R> f76727c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f76728d;

    /* compiled from: CompletableUsing.java */
    /* loaded from: classes4.dex */
    static final class a<R> extends AtomicReference<Object> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f76729e = -674404550052917487L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76730a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super R> f76731b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f76732c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76733d;

        a(io.reactivex.rxjava3.core.d actual, R resource, q7.g<? super R> disposer, boolean eager) {
            super(resource);
            this.f76730a = actual;
            this.f76731b = disposer;
            this.f76732c = eager;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f76731b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f76732c) {
                a();
                this.f76733d.dispose();
                this.f76733d = DisposableHelper.DISPOSED;
                return;
            }
            this.f76733d.dispose();
            this.f76733d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76733d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76733d = DisposableHelper.DISPOSED;
            if (this.f76732c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f76731b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f76730a.onError(th);
                    return;
                }
            }
            this.f76730a.onComplete();
            if (this.f76732c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76733d = DisposableHelper.DISPOSED;
            if (this.f76732c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f76731b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    e4 = new CompositeException(e4, th);
                }
            }
            this.f76730a.onError(e4);
            if (this.f76732c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76733d, d4)) {
                this.f76733d = d4;
                this.f76730a.onSubscribe(this);
            }
        }
    }

    public t0(q7.s<R> resourceSupplier, q7.o<? super R, ? extends io.reactivex.rxjava3.core.g> completableFunction, q7.g<? super R> disposer, boolean eager) {
        this.f76725a = resourceSupplier;
        this.f76726b = completableFunction;
        this.f76727c = disposer;
        this.f76728d = eager;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        try {
            R r9 = this.f76725a.get();
            try {
                io.reactivex.rxjava3.core.g apply = this.f76726b.apply(r9);
                Objects.requireNonNull(apply, "The completableFunction returned a null CompletableSource");
                apply.d(new a(observer, r9, this.f76727c, this.f76728d));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                if (this.f76728d) {
                    try {
                        this.f76727c.accept(r9);
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), observer);
                        return;
                    }
                }
                EmptyDisposable.error(th, observer);
                if (this.f76728d) {
                    return;
                }
                try {
                    this.f76727c.accept(r9);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    io.reactivex.rxjava3.plugins.a.Y(th3);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.rxjava3.exceptions.a.b(th4);
            EmptyDisposable.error(th4, observer);
        }
    }
}
