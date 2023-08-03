package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatWithMaybe.java */
/* loaded from: classes3.dex */
public final class y<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f75029b;

    /* compiled from: ObservableConcatWithMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f75030d = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f75031a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.w<? extends T> f75032b;

        /* renamed from: c  reason: collision with root package name */
        boolean f75033c;

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.w<? extends T> wVar) {
            this.f75031a = g0Var;
            this.f75032b = wVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f75033c) {
                this.f75031a.onComplete();
                return;
            }
            this.f75033c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.w<? extends T> wVar = this.f75032b;
            this.f75032b = null;
            wVar.b(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f75031a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f75031a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (!DisposableHelper.setOnce(this, cVar) || this.f75033c) {
                return;
            }
            this.f75031a.onSubscribe(this);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f75031a.onNext(t9);
            this.f75031a.onComplete();
        }
    }

    public y(io.reactivex.z<T> zVar, io.reactivex.w<? extends T> wVar) {
        super(zVar);
        this.f75029b = wVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f75029b));
    }
}
