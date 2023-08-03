package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: SingleFlatMapIterableObservable.java */
/* loaded from: classes4.dex */
public final class c0<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80739a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Iterable<? extends R>> f80740b;

    /* compiled from: SingleFlatMapIterableObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueDisposable<R> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f80741h = -8938804753851907758L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f80742b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends Iterable<? extends R>> f80743c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80744d;

        /* renamed from: e  reason: collision with root package name */
        volatile Iterator<? extends R> f80745e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f80746f;

        /* renamed from: g  reason: collision with root package name */
        boolean f80747g;

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
            this.f80742b = actual;
            this.f80743c = mapper;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f80745e = null;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80746f = true;
            this.f80744d.dispose();
            this.f80744d = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80746f;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f80745e == null;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80744d = DisposableHelper.DISPOSED;
            this.f80742b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80744d, d4)) {
                this.f80744d = d4;
                this.f80742b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f80742b;
            try {
                Iterator<? extends R> it = this.f80743c.apply(value).iterator();
                if (!it.hasNext()) {
                    n0Var.onComplete();
                } else if (this.f80747g) {
                    this.f80745e = it;
                    n0Var.onNext(null);
                    n0Var.onComplete();
                } else {
                    while (!this.f80746f) {
                        try {
                            n0Var.onNext((R) it.next());
                            if (this.f80746f) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    n0Var.onComplete();
                                    return;
                                }
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                n0Var.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            n0Var.onError(th2);
                            return;
                        }
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                this.f80742b.onError(th3);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() {
            Iterator<? extends R> it = this.f80745e;
            if (it != null) {
                R next = it.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f80745e = null;
                }
                return next;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f80747g = true;
                return 2;
            }
            return 0;
        }
    }

    public c0(io.reactivex.rxjava3.core.v0<T> source, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
        this.f80739a = source;
        this.f80740b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        this.f80739a.d(new a(observer, this.f80740b));
    }
}
