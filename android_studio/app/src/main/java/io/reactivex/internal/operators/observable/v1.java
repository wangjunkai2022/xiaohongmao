package io.reactivex.internal.operators.observable;

/* compiled from: ObservableMap.java */
/* loaded from: classes3.dex */
public final class v1<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends U> f74872b;

    /* compiled from: ObservableMap.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> extends io.reactivex.internal.observers.a<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, ? extends U> f74873f;

        a(io.reactivex.g0<? super U> g0Var, n7.o<? super T, ? extends U> oVar) {
            super(g0Var);
            this.f74873f = oVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f71214d) {
                return;
            }
            if (this.f71215e != 0) {
                this.f71211a.onNext(null);
                return;
            }
            try {
                this.f71211a.onNext(io.reactivex.internal.functions.b.g(this.f74873f.apply(t9), "The mapper function returned a null value."));
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // o7.o
        @m7.f
        public U poll() throws Exception {
            T poll = this.f71213c.poll();
            if (poll != null) {
                return (U) io.reactivex.internal.functions.b.g(this.f74873f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public v1(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends U> oVar) {
        super(e0Var);
        this.f74872b = oVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74872b));
    }
}
