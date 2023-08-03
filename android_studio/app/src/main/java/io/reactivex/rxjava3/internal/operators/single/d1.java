package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleUsing.java */
/* loaded from: classes4.dex */
public final class d1<T, U> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<U> f80764a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super U, ? extends io.reactivex.rxjava3.core.v0<? extends T>> f80765b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super U> f80766c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f80767d;

    /* compiled from: SingleUsing.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicReference<Object> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80768e = -5331524057054083935L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80769a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super U> f80770b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f80771c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80772d;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, U resource, boolean eager, q7.g<? super U> disposer) {
            super(resource);
            this.f80769a = actual;
            this.f80771c = eager;
            this.f80770b = disposer;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f80770b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f80771c) {
                a();
                this.f80772d.dispose();
                this.f80772d = DisposableHelper.DISPOSED;
                return;
            }
            this.f80772d.dispose();
            this.f80772d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80772d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80772d = DisposableHelper.DISPOSED;
            if (this.f80771c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f80770b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    e4 = new CompositeException(e4, th);
                }
            }
            this.f80769a.onError(e4);
            if (this.f80771c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80772d, d4)) {
                this.f80772d = d4;
                this.f80769a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80772d = DisposableHelper.DISPOSED;
            if (this.f80771c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f80770b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f80769a.onError(th);
                    return;
                }
            }
            this.f80769a.onSuccess(value);
            if (this.f80771c) {
                return;
            }
            a();
        }
    }

    public d1(q7.s<U> resourceSupplier, q7.o<? super U, ? extends io.reactivex.rxjava3.core.v0<? extends T>> singleFunction, q7.g<? super U> disposer, boolean eager) {
        this.f80764a = resourceSupplier;
        this.f80765b = singleFunction;
        this.f80766c = disposer;
        this.f80767d = eager;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        try {
            U u9 = this.f80764a.get();
            try {
                io.reactivex.rxjava3.core.v0<? extends T> apply = this.f80765b.apply(u9);
                Objects.requireNonNull(apply, "The singleFunction returned a null SingleSource");
                apply.d(new a(observer, u9, this.f80767d, this.f80766c));
            } catch (Throwable th) {
                th = th;
                io.reactivex.rxjava3.exceptions.a.b(th);
                if (this.f80767d) {
                    try {
                        this.f80766c.accept(u9);
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        th = new CompositeException(th, th2);
                    }
                }
                EmptyDisposable.error(th, observer);
                if (this.f80767d) {
                    return;
                }
                try {
                    this.f80766c.accept(u9);
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
