package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeUsing.java */
/* loaded from: classes4.dex */
public final class t1<T, D> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends D> f78760a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super D, ? extends io.reactivex.rxjava3.core.b0<? extends T>> f78761b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super D> f78762c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f78763d;

    /* compiled from: MaybeUsing.java */
    /* loaded from: classes4.dex */
    static final class a<T, D> extends AtomicReference<Object> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78764e = -674404550052917487L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78765a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super D> f78766b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f78767c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78768d;

        a(io.reactivex.rxjava3.core.y<? super T> actual, D resource, q7.g<? super D> disposer, boolean eager) {
            super(resource);
            this.f78765a = actual;
            this.f78766b = disposer;
            this.f78767c = eager;
        }

        void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f78766b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f78767c) {
                a();
                this.f78768d.dispose();
                this.f78768d = DisposableHelper.DISPOSED;
                return;
            }
            this.f78768d.dispose();
            this.f78768d = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78768d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78768d = DisposableHelper.DISPOSED;
            if (this.f78767c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f78766b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f78765a.onError(th);
                    return;
                }
            }
            this.f78765a.onComplete();
            if (this.f78767c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78768d = DisposableHelper.DISPOSED;
            if (this.f78767c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f78766b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    e4 = new CompositeException(e4, th);
                }
            }
            this.f78765a.onError(e4);
            if (this.f78767c) {
                return;
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78768d, d4)) {
                this.f78768d = d4;
                this.f78765a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78768d = DisposableHelper.DISPOSED;
            if (this.f78767c) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f78766b.accept(andSet);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f78765a.onError(th);
                    return;
                }
            }
            this.f78765a.onSuccess(value);
            if (this.f78767c) {
                return;
            }
            a();
        }
    }

    public t1(q7.s<? extends D> resourceSupplier, q7.o<? super D, ? extends io.reactivex.rxjava3.core.b0<? extends T>> sourceSupplier, q7.g<? super D> resourceDisposer, boolean eager) {
        this.f78760a = resourceSupplier;
        this.f78761b = sourceSupplier;
        this.f78762c = resourceDisposer;
        this.f78763d = eager;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        try {
            D d4 = this.f78760a.get();
            try {
                io.reactivex.rxjava3.core.b0<? extends T> apply = this.f78761b.apply(d4);
                Objects.requireNonNull(apply, "The sourceSupplier returned a null MaybeSource");
                apply.b(new a(observer, d4, this.f78762c, this.f78763d));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                if (this.f78763d) {
                    try {
                        this.f78762c.accept(d4);
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), observer);
                        return;
                    }
                }
                EmptyDisposable.error(th, observer);
                if (this.f78763d) {
                    return;
                }
                try {
                    this.f78762c.accept(d4);
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
