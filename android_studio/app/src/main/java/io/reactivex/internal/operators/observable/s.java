package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

/* compiled from: ObservableCollect.java */
/* loaded from: classes3.dex */
public final class s<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f74701b;

    /* renamed from: c  reason: collision with root package name */
    final n7.b<? super U, ? super T> f74702c;

    /* compiled from: ObservableCollect.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f74703a;

        /* renamed from: b  reason: collision with root package name */
        final n7.b<? super U, ? super T> f74704b;

        /* renamed from: c  reason: collision with root package name */
        final U f74705c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74706d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74707e;

        a(io.reactivex.g0<? super U> g0Var, U u9, n7.b<? super U, ? super T> bVar) {
            this.f74703a = g0Var;
            this.f74704b = bVar;
            this.f74705c = u9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74706d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74706d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74707e) {
                return;
            }
            this.f74707e = true;
            this.f74703a.onNext((U) this.f74705c);
            this.f74703a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74707e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74707e = true;
            this.f74703a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74707e) {
                return;
            }
            try {
                this.f74704b.accept((U) this.f74705c, t9);
            } catch (Throwable th) {
                this.f74706d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74706d, cVar)) {
                this.f74706d = cVar;
                this.f74703a.onSubscribe(this);
            }
        }
    }

    public s(io.reactivex.e0<T> e0Var, Callable<? extends U> callable, n7.b<? super U, ? super T> bVar) {
        super(e0Var);
        this.f74701b = callable;
        this.f74702c = bVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        try {
            this.f73827a.subscribe(new a(g0Var, io.reactivex.internal.functions.b.g(this.f74701b.call(), "The initialSupplier returned a null value"), this.f74702c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, g0Var);
        }
    }
}
