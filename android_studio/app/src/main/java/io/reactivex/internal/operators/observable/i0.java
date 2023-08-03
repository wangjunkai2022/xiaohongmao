package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableDematerialize.java */
/* loaded from: classes3.dex */
public final class i0<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.y<R>> f74217b;

    /* compiled from: ObservableDematerialize.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74218a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.y<R>> f74219b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74220c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74221d;

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends io.reactivex.y<R>> oVar) {
            this.f74218a = g0Var;
            this.f74219b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74221d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74221d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74220c) {
                return;
            }
            this.f74220c = true;
            this.f74218a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74220c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74220c = true;
            this.f74218a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74220c) {
                if (t9 instanceof io.reactivex.y) {
                    io.reactivex.y yVar = (io.reactivex.y) t9;
                    if (yVar.g()) {
                        io.reactivex.plugins.a.Y(yVar.d());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                io.reactivex.y yVar2 = (io.reactivex.y) io.reactivex.internal.functions.b.g(this.f74219b.apply(t9), "The selector returned a null Notification");
                if (yVar2.g()) {
                    this.f74221d.dispose();
                    onError(yVar2.d());
                } else if (yVar2.f()) {
                    this.f74221d.dispose();
                    onComplete();
                } else {
                    this.f74218a.onNext((Object) yVar2.e());
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74221d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74221d, cVar)) {
                this.f74221d = cVar;
                this.f74218a.onSubscribe(this);
            }
        }
    }

    public i0(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.y<R>> oVar) {
        super(e0Var);
        this.f74217b = oVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74217b));
    }
}
