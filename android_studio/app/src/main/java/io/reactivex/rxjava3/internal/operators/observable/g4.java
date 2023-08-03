package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableUsing.java */
/* loaded from: classes4.dex */
public final class g4<T, D> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final q7.s<? extends D> f79467a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super D, ? extends io.reactivex.rxjava3.core.l0<? extends T>> f79468b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super D> f79469c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f79470d;

    /* compiled from: ObservableUsing.java */
    /* loaded from: classes4.dex */
    static final class a<T, D> extends AtomicBoolean implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: f  reason: collision with root package name */
        private static final long f79471f = 5904473792286235046L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79472a;

        /* renamed from: b  reason: collision with root package name */
        final D f79473b;

        /* renamed from: c  reason: collision with root package name */
        final q7.g<? super D> f79474c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f79475d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79476e;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, D resource, q7.g<? super D> disposer, boolean eager) {
            this.f79472a = actual;
            this.f79473b = resource;
            this.f79474c = disposer;
            this.f79475d = eager;
        }

        void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f79474c.accept((D) this.f79473b);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79475d) {
                a();
                this.f79476e.dispose();
                this.f79476e = DisposableHelper.DISPOSED;
                return;
            }
            this.f79476e.dispose();
            this.f79476e = DisposableHelper.DISPOSED;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79475d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f79474c.accept((D) this.f79473b);
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f79472a.onError(th);
                        return;
                    }
                }
                this.f79476e.dispose();
                this.f79472a.onComplete();
                return;
            }
            this.f79472a.onComplete();
            this.f79476e.dispose();
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79475d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f79474c.accept((D) this.f79473b);
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        t9 = new CompositeException(t9, th);
                    }
                }
                this.f79476e.dispose();
                this.f79472a.onError(t9);
                return;
            }
            this.f79472a.onError(t9);
            this.f79476e.dispose();
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79472a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79476e, d4)) {
                this.f79476e = d4;
                this.f79472a.onSubscribe(this);
            }
        }
    }

    public g4(q7.s<? extends D> resourceSupplier, q7.o<? super D, ? extends io.reactivex.rxjava3.core.l0<? extends T>> sourceSupplier, q7.g<? super D> disposer, boolean eager) {
        this.f79467a = resourceSupplier;
        this.f79468b = sourceSupplier;
        this.f79469c = disposer;
        this.f79470d = eager;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        try {
            D d4 = this.f79467a.get();
            try {
                io.reactivex.rxjava3.core.l0<? extends T> apply = this.f79468b.apply(d4);
                Objects.requireNonNull(apply, "The sourceSupplier returned a null ObservableSource");
                apply.a(new a(observer, d4, this.f79469c, this.f79470d));
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                try {
                    this.f79469c.accept(d4);
                    EmptyDisposable.error(th, observer);
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    EmptyDisposable.error(new CompositeException(th, th2), observer);
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            EmptyDisposable.error(th3, observer);
        }
    }
}
