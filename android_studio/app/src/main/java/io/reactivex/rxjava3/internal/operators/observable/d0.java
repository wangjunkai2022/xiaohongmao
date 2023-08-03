package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableDebounce.java */
/* loaded from: classes4.dex */
public final class d0<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<U>> f79285b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableDebounce.java */
    /* loaded from: classes4.dex */
    public static final class a<T, U> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79286a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<U>> f79287b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79288c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79289d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        volatile long f79290e;

        /* renamed from: f  reason: collision with root package name */
        boolean f79291f;

        /* compiled from: ObservableDebounce.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.d0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0666a<T, U> extends io.reactivex.rxjava3.observers.e<U> {

            /* renamed from: b  reason: collision with root package name */
            final a<T, U> f79292b;

            /* renamed from: c  reason: collision with root package name */
            final long f79293c;

            /* renamed from: d  reason: collision with root package name */
            final T f79294d;

            /* renamed from: e  reason: collision with root package name */
            boolean f79295e;

            /* renamed from: f  reason: collision with root package name */
            final AtomicBoolean f79296f = new AtomicBoolean();

            C0666a(a<T, U> parent, long index, T value) {
                this.f79292b = parent;
                this.f79293c = index;
                this.f79294d = value;
            }

            void b() {
                if (this.f79296f.compareAndSet(false, true)) {
                    this.f79292b.a(this.f79293c, this.f79294d);
                }
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                if (this.f79295e) {
                    return;
                }
                this.f79295e = true;
                b();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable t9) {
                if (this.f79295e) {
                    io.reactivex.rxjava3.plugins.a.Y(t9);
                    return;
                }
                this.f79295e = true;
                this.f79292b.onError(t9);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(U t9) {
                if (this.f79295e) {
                    return;
                }
                this.f79295e = true;
                dispose();
                b();
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<U>> debounceSelector) {
            this.f79286a = actual;
            this.f79287b = debounceSelector;
        }

        void a(long idx, T value) {
            if (idx == this.f79290e) {
                this.f79286a.onNext(value);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79288c.dispose();
            DisposableHelper.dispose(this.f79289d);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79288c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79291f) {
                return;
            }
            this.f79291f = true;
            io.reactivex.rxjava3.disposables.f fVar = this.f79289d.get();
            if (fVar != DisposableHelper.DISPOSED) {
                C0666a c0666a = (C0666a) fVar;
                if (c0666a != null) {
                    c0666a.b();
                }
                DisposableHelper.dispose(this.f79289d);
                this.f79286a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            DisposableHelper.dispose(this.f79289d);
            this.f79286a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79291f) {
                return;
            }
            long j4 = this.f79290e + 1;
            this.f79290e = j4;
            io.reactivex.rxjava3.disposables.f fVar = this.f79289d.get();
            if (fVar != null) {
                fVar.dispose();
            }
            try {
                io.reactivex.rxjava3.core.l0<U> apply = this.f79287b.apply(t9);
                Objects.requireNonNull(apply, "The ObservableSource supplied is null");
                io.reactivex.rxjava3.core.l0<U> l0Var = apply;
                C0666a c0666a = new C0666a(this, j4, t9);
                if (this.f79289d.compareAndSet(fVar, c0666a)) {
                    l0Var.a(c0666a);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                dispose();
                this.f79286a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79288c, d4)) {
                this.f79288c = d4;
                this.f79286a.onSubscribe(this);
            }
        }
    }

    public d0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<U>> debounceSelector) {
        super(source);
        this.f79285b = debounceSelector;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(new io.reactivex.rxjava3.observers.m(t9), this.f79285b));
    }
}
