package io.reactivex.internal.operators.mixed;

import io.reactivex.e0;
import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableAndThenObservable.java */
/* loaded from: classes3.dex */
public final class a<R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f73536a;

    /* renamed from: b  reason: collision with root package name */
    final e0<? extends R> f73537b;

    /* compiled from: CompletableAndThenObservable.java */
    /* renamed from: io.reactivex.internal.operators.mixed.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0572a<R> extends AtomicReference<io.reactivex.disposables.c> implements g0<R>, io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73538c = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super R> f73539a;

        /* renamed from: b  reason: collision with root package name */
        e0<? extends R> f73540b;

        C0572a(g0<? super R> g0Var, e0<? extends R> e0Var) {
            this.f73540b = e0Var;
            this.f73539a = g0Var;
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
            e0<? extends R> e0Var = this.f73540b;
            if (e0Var == null) {
                this.f73539a.onComplete();
                return;
            }
            this.f73540b = null;
            e0Var.subscribe(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f73539a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r9) {
            this.f73539a.onNext(r9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }
    }

    public a(io.reactivex.g gVar, e0<? extends R> e0Var) {
        this.f73536a = gVar;
        this.f73537b = e0Var;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super R> g0Var) {
        C0572a c0572a = new C0572a(g0Var, this.f73537b);
        g0Var.onSubscribe(c0572a);
        this.f73536a.d(c0572a);
    }
}
