package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableUsing.java */
/* loaded from: classes3.dex */
public final class d4<T, D> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends D> f73994a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super D, ? extends io.reactivex.e0<? extends T>> f73995b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super D> f73996c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f73997d;

    /* compiled from: ObservableUsing.java */
    /* loaded from: classes3.dex */
    static final class a<T, D> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: f  reason: collision with root package name */
        private static final long f73998f = 5904473792286235046L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73999a;

        /* renamed from: b  reason: collision with root package name */
        final D f74000b;

        /* renamed from: c  reason: collision with root package name */
        final n7.g<? super D> f74001c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f74002d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74003e;

        a(io.reactivex.g0<? super T> g0Var, D d4, n7.g<? super D> gVar, boolean z9) {
            this.f73999a = g0Var;
            this.f74000b = d4;
            this.f74001c = gVar;
            this.f74002d = z9;
        }

        void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f74001c.accept((D) this.f74000b);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            a();
            this.f74003e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74002d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f74001c.accept((D) this.f74000b);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f73999a.onError(th);
                        return;
                    }
                }
                this.f74003e.dispose();
                this.f73999a.onComplete();
                return;
            }
            this.f73999a.onComplete();
            this.f74003e.dispose();
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74002d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f74001c.accept((D) this.f74000b);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        th = new CompositeException(th, th2);
                    }
                }
                this.f74003e.dispose();
                this.f73999a.onError(th);
                return;
            }
            this.f73999a.onError(th);
            this.f74003e.dispose();
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f73999a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74003e, cVar)) {
                this.f74003e = cVar;
                this.f73999a.onSubscribe(this);
            }
        }
    }

    public d4(Callable<? extends D> callable, n7.o<? super D, ? extends io.reactivex.e0<? extends T>> oVar, n7.g<? super D> gVar, boolean z9) {
        this.f73994a = callable;
        this.f73995b = oVar;
        this.f73996c = gVar;
        this.f73997d = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        try {
            D call = this.f73994a.call();
            try {
                ((io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f73995b.apply(call), "The sourceSupplier returned a null ObservableSource")).subscribe(new a(g0Var, call, this.f73996c, this.f73997d));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                try {
                    this.f73996c.accept(call);
                    EmptyDisposable.error(th, g0Var);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptyDisposable.error(new CompositeException(th, th2), g0Var);
                }
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            EmptyDisposable.error(th3, g0Var);
        }
    }
}
