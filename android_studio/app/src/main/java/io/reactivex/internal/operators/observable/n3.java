package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: ObservableTake.java */
/* loaded from: classes3.dex */
public final class n3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f74513b;

    /* compiled from: ObservableTake.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74514a;

        /* renamed from: b  reason: collision with root package name */
        boolean f74515b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74516c;

        /* renamed from: d  reason: collision with root package name */
        long f74517d;

        a(io.reactivex.g0<? super T> g0Var, long j4) {
            this.f74514a = g0Var;
            this.f74517d = j4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74516c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74516c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74515b) {
                return;
            }
            this.f74515b = true;
            this.f74516c.dispose();
            this.f74514a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74515b) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74515b = true;
            this.f74516c.dispose();
            this.f74514a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74515b) {
                return;
            }
            long j4 = this.f74517d;
            long j10 = j4 - 1;
            this.f74517d = j10;
            if (j4 > 0) {
                boolean z9 = j10 == 0;
                this.f74514a.onNext(t9);
                if (z9) {
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74516c, cVar)) {
                this.f74516c = cVar;
                if (this.f74517d == 0) {
                    this.f74515b = true;
                    cVar.dispose();
                    EmptyDisposable.complete(this.f74514a);
                    return;
                }
                this.f74514a.onSubscribe(this);
            }
        }
    }

    public n3(io.reactivex.e0<T> e0Var, long j4) {
        super(e0Var);
        this.f74513b = j4;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74513b));
    }
}
