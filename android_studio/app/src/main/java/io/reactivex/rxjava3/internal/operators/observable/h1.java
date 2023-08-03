package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: ObservableFromIterable.java */
/* loaded from: classes4.dex */
public final class h1<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends T> f79494a;

    /* compiled from: ObservableFromIterable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79495a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends T> f79496b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f79497c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79498d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79499e;

        /* renamed from: f  reason: collision with root package name */
        boolean f79500f;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, Iterator<? extends T> it) {
            this.f79495a = actual;
            this.f79496b = it;
        }

        void a() {
            while (!isDisposed()) {
                try {
                    T next = this.f79496b.next();
                    Objects.requireNonNull(next, "The iterator returned a null value");
                    this.f79495a.onNext(next);
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.f79496b.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.f79495a.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f79495a.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.f79495a.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f79499e = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79497c = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79497c;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f79499e;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            if (this.f79499e) {
                return null;
            }
            if (this.f79500f) {
                if (!this.f79496b.hasNext()) {
                    this.f79499e = true;
                    return null;
                }
            } else {
                this.f79500f = true;
            }
            T next = this.f79496b.next();
            Objects.requireNonNull(next, "The iterator returned a null value");
            return next;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 1) != 0) {
                this.f79498d = true;
                return 1;
            }
            return 0;
        }
    }

    public h1(Iterable<? extends T> source) {
        this.f79494a = source;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        try {
            Iterator<? extends T> it = this.f79494a.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(observer);
                    return;
                }
                a aVar = new a(observer, it);
                observer.onSubscribe(aVar);
                if (aVar.f79498d) {
                    return;
                }
                aVar.a();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
            }
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            EmptyDisposable.error(th2, observer);
        }
    }
}
