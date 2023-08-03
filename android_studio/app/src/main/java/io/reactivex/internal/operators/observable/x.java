package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatWithCompletable.java */
/* loaded from: classes3.dex */
public final class x<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f74980b;

    /* compiled from: ObservableConcatWithCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T>, io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f74981d = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74982a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.g f74983b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74984c;

        a(io.reactivex.g0<? super T> g0Var, io.reactivex.g gVar) {
            this.f74982a = g0Var;
            this.f74983b = gVar;
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
            if (this.f74984c) {
                this.f74982a.onComplete();
                return;
            }
            this.f74984c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.g gVar = this.f74983b;
            this.f74983b = null;
            gVar.d(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74982a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74982a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (!DisposableHelper.setOnce(this, cVar) || this.f74984c) {
                return;
            }
            this.f74982a.onSubscribe(this);
        }
    }

    public x(io.reactivex.z<T> zVar, io.reactivex.g gVar) {
        super(zVar);
        this.f74980b = gVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74980b));
    }
}
