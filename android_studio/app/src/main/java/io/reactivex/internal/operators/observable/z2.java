package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableScanSeed.java */
/* loaded from: classes3.dex */
public final class z2<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.c<R, ? super T, R> f75121b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<R> f75122c;

    /* compiled from: ObservableScanSeed.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f75123a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<R, ? super T, R> f75124b;

        /* renamed from: c  reason: collision with root package name */
        R f75125c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f75126d;

        /* renamed from: e  reason: collision with root package name */
        boolean f75127e;

        a(io.reactivex.g0<? super R> g0Var, n7.c<R, ? super T, R> cVar, R r9) {
            this.f75123a = g0Var;
            this.f75124b = cVar;
            this.f75125c = r9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75126d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75126d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f75127e) {
                return;
            }
            this.f75127e = true;
            this.f75123a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f75127e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75127e = true;
            this.f75123a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f75127e) {
                return;
            }
            try {
                R r9 = (R) io.reactivex.internal.functions.b.g(this.f75124b.apply(this.f75125c, t9), "The accumulator returned a null value");
                this.f75125c = r9;
                this.f75123a.onNext(r9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75126d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75126d, cVar)) {
                this.f75126d = cVar;
                this.f75123a.onSubscribe(this);
                this.f75123a.onNext((R) this.f75125c);
            }
        }
    }

    public z2(io.reactivex.e0<T> e0Var, Callable<R> callable, n7.c<R, ? super T, R> cVar) {
        super(e0Var);
        this.f75121b = cVar;
        this.f75122c = callable;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        try {
            this.f73827a.subscribe(new a(g0Var, this.f75121b, io.reactivex.internal.functions.b.g(this.f75122c.call(), "The seed supplied is null")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, g0Var);
        }
    }
}
