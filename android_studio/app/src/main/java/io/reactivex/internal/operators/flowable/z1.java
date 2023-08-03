package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableMap.java */
/* loaded from: classes3.dex */
public final class z1<T, U> extends io.reactivex.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends U> f73102c;

    /* compiled from: FlowableMap.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> extends io.reactivex.internal.subscribers.a<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, ? extends U> f73103f;

        a(o7.a<? super U> aVar, n7.o<? super T, ? extends U> oVar) {
            super(aVar);
            this.f73103f = oVar;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f75817d) {
                return false;
            }
            try {
                return this.f75814a.h(io.reactivex.internal.functions.b.g(this.f73103f.apply(t9), "The mapper function returned a null value."));
            } catch (Throwable th) {
                f(th);
                return true;
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75817d) {
                return;
            }
            if (this.f75818e != 0) {
                this.f75814a.onNext(null);
                return;
            }
            try {
                this.f75814a.onNext(io.reactivex.internal.functions.b.g(this.f73103f.apply(t9), "The mapper function returned a null value."));
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // o7.o
        @m7.f
        public U poll() throws Exception {
            T poll = this.f75816c.poll();
            if (poll != null) {
                return (U) io.reactivex.internal.functions.b.g(this.f73103f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    /* compiled from: FlowableMap.java */
    /* loaded from: classes3.dex */
    static final class b<T, U> extends io.reactivex.internal.subscribers.b<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, ? extends U> f73104f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(org.reactivestreams.d<? super U> dVar, n7.o<? super T, ? extends U> oVar) {
            super(dVar);
            this.f73104f = oVar;
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75822d) {
                return;
            }
            if (this.f75823e != 0) {
                this.f75819a.onNext(null);
                return;
            }
            try {
                this.f75819a.onNext(io.reactivex.internal.functions.b.g(this.f73104f.apply(t9), "The mapper function returned a null value."));
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // o7.o
        @m7.f
        public U poll() throws Exception {
            T poll = this.f75821c.poll();
            if (poll != null) {
                return (U) io.reactivex.internal.functions.b.g(this.f73104f.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public z1(io.reactivex.j<T> jVar, n7.o<? super T, ? extends U> oVar) {
        super(jVar);
        this.f73102c = oVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super U> dVar) {
        if (dVar instanceof o7.a) {
            this.f71538b.j6(new a((o7.a) dVar, this.f73102c));
        } else {
            this.f71538b.j6(new b(dVar, this.f73102c));
        }
    }
}
