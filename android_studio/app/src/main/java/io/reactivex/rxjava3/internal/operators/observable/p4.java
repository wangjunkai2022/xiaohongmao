package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: ObservableZipIterable.java */
/* loaded from: classes4.dex */
public final class p4<T, U, V> extends io.reactivex.rxjava3.core.g0<V> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g0<? extends T> f79950a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<U> f79951b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<? super T, ? super U, ? extends V> f79952c;

    /* compiled from: ObservableZipIterable.java */
    /* loaded from: classes4.dex */
    static final class a<T, U, V> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super V> f79953a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f79954b;

        /* renamed from: c  reason: collision with root package name */
        final q7.c<? super T, ? super U, ? extends V> f79955c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79956d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79957e;

        a(io.reactivex.rxjava3.core.n0<? super V> actual, Iterator<U> iterator, q7.c<? super T, ? super U, ? extends V> zipper) {
            this.f79953a = actual;
            this.f79954b = iterator;
            this.f79955c = zipper;
        }

        void a(Throwable e4) {
            this.f79957e = true;
            this.f79956d.dispose();
            this.f79953a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79956d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79956d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79957e) {
                return;
            }
            this.f79957e = true;
            this.f79953a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79957e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79957e = true;
            this.f79953a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79957e) {
                return;
            }
            try {
                U next = this.f79954b.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                try {
                    V apply = this.f79955c.apply(t9, next);
                    Objects.requireNonNull(apply, "The zipper function returned a null value");
                    this.f79953a.onNext(apply);
                    try {
                        if (this.f79954b.hasNext()) {
                            return;
                        }
                        this.f79957e = true;
                        this.f79956d.dispose();
                        this.f79953a.onComplete();
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        a(th);
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    a(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                a(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79956d, d4)) {
                this.f79956d = d4;
                this.f79953a.onSubscribe(this);
            }
        }
    }

    public p4(io.reactivex.rxjava3.core.g0<? extends T> source, Iterable<U> other, q7.c<? super T, ? super U, ? extends V> zipper) {
        this.f79950a = source;
        this.f79951b = other;
        this.f79952c = zipper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super V> t9) {
        try {
            Iterator<U> it = this.f79951b.iterator();
            Objects.requireNonNull(it, "The iterator returned by other is null");
            Iterator<U> it2 = it;
            try {
                if (!it2.hasNext()) {
                    EmptyDisposable.complete(t9);
                } else {
                    this.f79950a.a(new a(t9, it2, this.f79952c));
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, t9);
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            EmptyDisposable.error(th2, t9);
        }
    }
}
