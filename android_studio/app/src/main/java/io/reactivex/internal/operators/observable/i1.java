package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableGenerate.java */
/* loaded from: classes3.dex */
public final class i1<T, S> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<S> f74222a;

    /* renamed from: b  reason: collision with root package name */
    final n7.c<S, io.reactivex.i<T>, S> f74223b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super S> f74224c;

    /* compiled from: ObservableGenerate.java */
    /* loaded from: classes3.dex */
    static final class a<T, S> implements io.reactivex.i<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74225a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<S, ? super io.reactivex.i<T>, S> f74226b;

        /* renamed from: c  reason: collision with root package name */
        final n7.g<? super S> f74227c;

        /* renamed from: d  reason: collision with root package name */
        S f74228d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f74229e;

        /* renamed from: f  reason: collision with root package name */
        boolean f74230f;

        /* renamed from: g  reason: collision with root package name */
        boolean f74231g;

        a(io.reactivex.g0<? super T> g0Var, n7.c<S, ? super io.reactivex.i<T>, S> cVar, n7.g<? super S> gVar, S s9) {
            this.f74225a = g0Var;
            this.f74226b = cVar;
            this.f74227c = gVar;
            this.f74228d = s9;
        }

        private void d(S s9) {
            try {
                this.f74227c.accept(s9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74229e = true;
        }

        public void f() {
            S s9 = this.f74228d;
            if (this.f74229e) {
                this.f74228d = null;
                d(s9);
                return;
            }
            n7.c<S, ? super io.reactivex.i<T>, S> cVar = this.f74226b;
            while (!this.f74229e) {
                this.f74231g = false;
                try {
                    s9 = cVar.apply(s9, this);
                    if (this.f74230f) {
                        this.f74229e = true;
                        this.f74228d = null;
                        d(s9);
                        return;
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f74228d = null;
                    this.f74229e = true;
                    onError(th);
                    d(s9);
                    return;
                }
            }
            this.f74228d = null;
            d(s9);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74229e;
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f74230f) {
                return;
            }
            this.f74230f = true;
            this.f74225a.onComplete();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (this.f74230f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f74230f = true;
            this.f74225a.onError(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            if (this.f74230f) {
                return;
            }
            if (this.f74231g) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f74231g = true;
                this.f74225a.onNext(t9);
            }
        }
    }

    public i1(Callable<S> callable, n7.c<S, io.reactivex.i<T>, S> cVar, n7.g<? super S> gVar) {
        this.f74222a = callable;
        this.f74223b = cVar;
        this.f74224c = gVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        try {
            a aVar = new a(g0Var, this.f74223b, this.f74224c, this.f74222a.call());
            g0Var.onSubscribe(aVar);
            aVar.f();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
