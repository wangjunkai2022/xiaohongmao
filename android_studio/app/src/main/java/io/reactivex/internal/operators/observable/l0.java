package io.reactivex.internal.operators.observable;

/* compiled from: ObservableDistinctUntilChanged.java */
/* loaded from: classes3.dex */
public final class l0<T, K> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, K> f74359b;

    /* renamed from: c  reason: collision with root package name */
    final n7.d<? super K, ? super K> f74360c;

    /* compiled from: ObservableDistinctUntilChanged.java */
    /* loaded from: classes3.dex */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, K> f74361f;

        /* renamed from: g  reason: collision with root package name */
        final n7.d<? super K, ? super K> f74362g;

        /* renamed from: h  reason: collision with root package name */
        K f74363h;

        /* renamed from: i  reason: collision with root package name */
        boolean f74364i;

        a(io.reactivex.g0<? super T> g0Var, n7.o<? super T, K> oVar, n7.d<? super K, ? super K> dVar) {
            super(g0Var);
            this.f74361f = oVar;
            this.f74362g = dVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f71214d) {
                return;
            }
            if (this.f71215e != 0) {
                this.f71211a.onNext(t9);
                return;
            }
            try {
                K apply = this.f74361f.apply(t9);
                if (this.f74364i) {
                    boolean a10 = this.f74362g.a((K) this.f74363h, apply);
                    this.f74363h = apply;
                    if (a10) {
                        return;
                    }
                } else {
                    this.f74364i = true;
                    this.f74363h = apply;
                }
                this.f71211a.onNext(t9);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            while (true) {
                T poll = this.f71213c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f74361f.apply(poll);
                if (!this.f74364i) {
                    this.f74364i = true;
                    this.f74363h = apply;
                    return poll;
                } else if (!this.f74362g.a((K) this.f74363h, apply)) {
                    this.f74363h = apply;
                    return poll;
                } else {
                    this.f74363h = apply;
                }
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public l0(io.reactivex.e0<T> e0Var, n7.o<? super T, K> oVar, n7.d<? super K, ? super K> dVar) {
        super(e0Var);
        this.f74359b = oVar;
        this.f74360c = dVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74359b, this.f74360c));
    }
}
