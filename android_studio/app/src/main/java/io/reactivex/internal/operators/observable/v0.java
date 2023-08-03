package io.reactivex.internal.operators.observable;

/* compiled from: ObservableFilter.java */
/* loaded from: classes3.dex */
public final class v0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super T> f74870b;

    /* compiled from: ObservableFilter.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.r<? super T> f74871f;

        a(io.reactivex.g0<? super T> g0Var, n7.r<? super T> rVar) {
            super(g0Var);
            this.f74871f = rVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f71215e == 0) {
                try {
                    if (this.f74871f.test(t9)) {
                        this.f71211a.onNext(t9);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    f(th);
                    return;
                }
            }
            this.f71211a.onNext(null);
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f71213c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f74871f.test(poll));
            return poll;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public v0(io.reactivex.e0<T> e0Var, n7.r<? super T> rVar) {
        super(e0Var);
        this.f74870b = rVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74870b));
    }
}
