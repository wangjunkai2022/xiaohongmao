package io.reactivex.internal.operators.observable;

/* compiled from: ObservableDoAfterNext.java */
/* loaded from: classes3.dex */
public final class m0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super T> f74413b;

    /* compiled from: ObservableDoAfterNext.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.g<? super T> f74414f;

        a(io.reactivex.g0<? super T> g0Var, n7.g<? super T> gVar) {
            super(g0Var);
            this.f74414f = gVar;
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f71211a.onNext(t9);
            if (this.f71215e == 0) {
                try {
                    this.f74414f.accept(t9);
                } catch (Throwable th) {
                    f(th);
                }
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f71213c.poll();
            if (poll != null) {
                this.f74414f.accept(poll);
            }
            return poll;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public m0(io.reactivex.e0<T> e0Var, n7.g<? super T> gVar) {
        super(e0Var);
        this.f74413b = gVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74413b));
    }
}
