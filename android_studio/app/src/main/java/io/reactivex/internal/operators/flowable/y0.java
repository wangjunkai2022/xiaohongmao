package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableFilter.java */
/* loaded from: classes3.dex */
public final class y0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.r<? super T> f73032c;

    /* compiled from: FlowableFilter.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.r<? super T> f73033f;

        a(o7.a<? super T> aVar, n7.r<? super T> rVar) {
            super(aVar);
            this.f73033f = rVar;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f75817d) {
                return false;
            }
            if (this.f75818e != 0) {
                return this.f75814a.h(null);
            }
            try {
                return this.f73033f.test(t9) && this.f75814a.h(t9);
            } catch (Throwable th) {
                f(th);
                return true;
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f75815b.request(1L);
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            o7.l<T> lVar = this.f75816c;
            n7.r<? super T> rVar = this.f73033f;
            while (true) {
                T poll = lVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f75818e == 2) {
                    lVar.request(1L);
                }
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    /* compiled from: FlowableFilter.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.b<T, T> implements o7.a<T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.r<? super T> f73034f;

        b(org.reactivestreams.d<? super T> dVar, n7.r<? super T> rVar) {
            super(dVar);
            this.f73034f = rVar;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f75822d) {
                return false;
            }
            if (this.f75823e != 0) {
                this.f75819a.onNext(null);
                return true;
            }
            try {
                boolean test = this.f73034f.test(t9);
                if (test) {
                    this.f75819a.onNext(t9);
                }
                return test;
            } catch (Throwable th) {
                f(th);
                return true;
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f75820b.request(1L);
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            o7.l<T> lVar = this.f75821c;
            n7.r<? super T> rVar = this.f73034f;
            while (true) {
                T poll = lVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f75823e == 2) {
                    lVar.request(1L);
                }
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public y0(io.reactivex.j<T> jVar, n7.r<? super T> rVar) {
        super(jVar);
        this.f73032c = rVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (dVar instanceof o7.a) {
            this.f71538b.j6(new a((o7.a) dVar, this.f73032c));
        } else {
            this.f71538b.j6(new b(dVar, this.f73032c));
        }
    }
}
