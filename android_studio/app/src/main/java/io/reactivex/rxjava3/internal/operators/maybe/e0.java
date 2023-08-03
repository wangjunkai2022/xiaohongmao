package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: MaybeFlatMapIterableObservable.java */
/* loaded from: classes4.dex */
public final class e0<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78534a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Iterable<? extends R>> f78535b;

    /* compiled from: MaybeFlatMapIterableObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends io.reactivex.rxjava3.internal.observers.b<R> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f78536a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends Iterable<? extends R>> f78537b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78538c;

        /* renamed from: d  reason: collision with root package name */
        volatile Iterator<? extends R> f78539d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f78540e;

        /* renamed from: f  reason: collision with root package name */
        boolean f78541f;

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
            this.f78536a = actual;
            this.f78537b = mapper;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f78539d = null;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78540e = true;
            this.f78538c.dispose();
            this.f78538c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78540e;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f78539d == null;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78536a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78538c = DisposableHelper.DISPOSED;
            this.f78536a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78538c, d4)) {
                this.f78538c = d4;
                this.f78536a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f78536a;
            try {
                Iterator<? extends R> it = this.f78537b.apply(value).iterator();
                if (!it.hasNext()) {
                    n0Var.onComplete();
                    return;
                }
                this.f78539d = it;
                if (this.f78541f) {
                    n0Var.onNext(null);
                    n0Var.onComplete();
                    return;
                }
                while (!this.f78540e) {
                    try {
                        n0Var.onNext((R) it.next());
                        if (this.f78540e) {
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
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                n0Var.onError(th3);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() {
            Iterator<? extends R> it = this.f78539d;
            if (it != null) {
                R next = it.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                if (!it.hasNext()) {
                    this.f78539d = null;
                }
                return next;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f78541f = true;
                return 2;
            }
            return 0;
        }
    }

    public e0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
        this.f78534a = source;
        this.f78535b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        this.f78534a.b(new a(observer, this.f78535b));
    }
}
