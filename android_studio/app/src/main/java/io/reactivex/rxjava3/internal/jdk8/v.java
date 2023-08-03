package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;

/* compiled from: ObservableFromStream.java */
/* loaded from: classes4.dex */
public final class v<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final Stream<T> f76416a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableFromStream.java */
    /* loaded from: classes4.dex */
    public static final class a<T> implements io.reactivex.rxjava3.internal.fuseable.l<T> {

        /* renamed from: a  reason: collision with root package name */
        final n0<? super T> f76417a;

        /* renamed from: b  reason: collision with root package name */
        Iterator<T> f76418b;

        /* renamed from: c  reason: collision with root package name */
        AutoCloseable f76419c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f76420d;

        /* renamed from: e  reason: collision with root package name */
        boolean f76421e;

        /* renamed from: f  reason: collision with root package name */
        boolean f76422f;

        a(n0<? super T> downstream, Iterator<T> iterator, AutoCloseable closeable) {
            this.f76417a = downstream;
            this.f76418b = iterator;
            this.f76419c = closeable;
        }

        public void a() {
            if (this.f76422f) {
                return;
            }
            Iterator<T> it = this.f76418b;
            n0<? super T> n0Var = this.f76417a;
            while (!this.f76420d) {
                try {
                    T next = it.next();
                    Objects.requireNonNull(next, "The Stream's Iterator.next returned a null value");
                    if (!this.f76420d) {
                        n0Var.onNext(next);
                        if (!this.f76420d) {
                            try {
                                if (!it.hasNext()) {
                                    n0Var.onComplete();
                                    this.f76420d = true;
                                }
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                n0Var.onError(th);
                                this.f76420d = true;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    n0Var.onError(th2);
                    this.f76420d = true;
                }
            }
            clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f76418b = null;
            AutoCloseable autoCloseable = this.f76419c;
            this.f76419c = null;
            if (autoCloseable != null) {
                v.A8(autoCloseable);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76420d = true;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76420d;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            Iterator<T> it = this.f76418b;
            if (it != null) {
                if (!this.f76421e || it.hasNext()) {
                    return false;
                }
                clear();
                return true;
            }
            return true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(@p7.e T value) {
            throw new UnsupportedOperationException();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            Iterator<T> it = this.f76418b;
            if (it == null) {
                return null;
            }
            if (!this.f76421e) {
                this.f76421e = true;
            } else if (!it.hasNext()) {
                clear();
                return null;
            }
            T next = this.f76418b.next();
            Objects.requireNonNull(next, "The Stream's Iterator.next() returned a null value");
            return next;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 1) != 0) {
                this.f76422f = true;
                return 1;
            }
            return 0;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(@p7.e T v12, @p7.e T v22) {
            throw new UnsupportedOperationException();
        }
    }

    public v(Stream<T> stream) {
        this.f76416a = stream;
    }

    static void A8(AutoCloseable c10) {
        try {
            c10.close();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    public static <T> void B8(n0<? super T> observer, Stream<T> stream) {
        try {
            Iterator<T> it = stream.iterator();
            if (!it.hasNext()) {
                EmptyDisposable.complete(observer);
                A8(stream);
                return;
            }
            a aVar = new a(observer, it, stream);
            observer.onSubscribe(aVar);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
            A8(stream);
        }
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> observer) {
        B8(observer, this.f76416a);
    }
}
