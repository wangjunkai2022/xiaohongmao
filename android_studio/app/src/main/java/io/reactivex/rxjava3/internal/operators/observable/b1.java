package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: ObservableFlattenIterable.java */
/* loaded from: classes4.dex */
public final class b1<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Iterable<? extends R>> f79209b;

    /* compiled from: ObservableFlattenIterable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79210a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends Iterable<? extends R>> f79211b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79212c;

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
            this.f79210a = actual;
            this.f79211b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79212c.dispose();
            this.f79212c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79212c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            io.reactivex.rxjava3.disposables.f fVar = this.f79212c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper) {
                return;
            }
            this.f79212c = disposableHelper;
            this.f79210a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            io.reactivex.rxjava3.disposables.f fVar = this.f79212c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (fVar == disposableHelper) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f79212c = disposableHelper;
            this.f79210a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            if (this.f79212c == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                Iterator<? extends R> it = this.f79211b.apply(value).iterator();
                io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f79210a;
                while (it.hasNext()) {
                    try {
                        try {
                            Object obj = (R) it.next();
                            Objects.requireNonNull(obj, "The iterator returned a null value");
                            n0Var.onNext(obj);
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f79212c.dispose();
                            onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        this.f79212c.dispose();
                        onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                this.f79212c.dispose();
                onError(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79212c, d4)) {
                this.f79212c = d4;
                this.f79210a.onSubscribe(this);
            }
        }
    }

    public b1(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends Iterable<? extends R>> mapper) {
        super(source);
        this.f79209b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        this.f79141a.a(new a(observer, this.f79209b));
    }
}
