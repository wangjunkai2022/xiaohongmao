package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableRepeatWhen.java */
/* loaded from: classes3.dex */
public final class r2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super io.reactivex.z<Object>, ? extends io.reactivex.e0<?>> f74681b;

    /* compiled from: ObservableRepeatWhen.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f74682i = 802743776666017014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74683a;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.subjects.i<Object> f74686d;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.e0<T> f74689g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f74690h;

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f74684b = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f74685c = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final a<T>.C0594a f74687e = new C0594a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74688f = new AtomicReference<>();

        /* compiled from: ObservableRepeatWhen.java */
        /* renamed from: io.reactivex.internal.operators.observable.r2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0594a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f74691b = 3254781284376480842L;

            C0594a() {
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                a.this.a();
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                a.this.b(th);
            }

            @Override // io.reactivex.g0
            public void onNext(Object obj) {
                a.this.c();
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.subjects.i<Object> iVar, io.reactivex.e0<T> e0Var) {
            this.f74683a = g0Var;
            this.f74686d = iVar;
            this.f74689g = e0Var;
        }

        void a() {
            DisposableHelper.dispose(this.f74688f);
            io.reactivex.internal.util.h.a(this.f74683a, this, this.f74685c);
        }

        void b(Throwable th) {
            DisposableHelper.dispose(this.f74688f);
            io.reactivex.internal.util.h.c(this.f74683a, th, this, this.f74685c);
        }

        void c() {
            d();
        }

        void d() {
            if (this.f74684b.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f74690h) {
                        this.f74690h = true;
                        this.f74689g.subscribe(this);
                    }
                    if (this.f74684b.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f74688f);
            DisposableHelper.dispose(this.f74687e);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f74688f.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            DisposableHelper.replace(this.f74688f, null);
            this.f74690h = false;
            this.f74686d.onNext(0);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f74687e);
            io.reactivex.internal.util.h.c(this.f74683a, th, this, this.f74685c);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            io.reactivex.internal.util.h.e(this.f74683a, t9, this, this.f74685c);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74688f, cVar);
        }
    }

    public r2(io.reactivex.e0<T> e0Var, n7.o<? super io.reactivex.z<Object>, ? extends io.reactivex.e0<?>> oVar) {
        super(e0Var);
        this.f74681b = oVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        io.reactivex.subjects.i<T> g4 = io.reactivex.subjects.e.i().g();
        try {
            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74681b.apply(g4), "The handler returned a null ObservableSource");
            a aVar = new a(g0Var, g4, this.f73827a);
            g0Var.onSubscribe(aVar);
            e0Var.subscribe(aVar.f74687e);
            aVar.d();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
