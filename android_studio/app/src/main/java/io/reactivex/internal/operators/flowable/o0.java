package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableDistinctUntilChanged.java */
/* loaded from: classes3.dex */
public final class o0<T, K> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, K> f72408c;

    /* renamed from: d  reason: collision with root package name */
    final n7.d<? super K, ? super K> f72409d;

    /* compiled from: FlowableDistinctUntilChanged.java */
    /* loaded from: classes3.dex */
    static final class a<T, K> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, K> f72410f;

        /* renamed from: g  reason: collision with root package name */
        final n7.d<? super K, ? super K> f72411g;

        /* renamed from: h  reason: collision with root package name */
        K f72412h;

        /* renamed from: i  reason: collision with root package name */
        boolean f72413i;

        a(o7.a<? super T> aVar, n7.o<? super T, K> oVar, n7.d<? super K, ? super K> dVar) {
            super(aVar);
            this.f72410f = oVar;
            this.f72411g = dVar;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f75817d) {
                return false;
            }
            if (this.f75818e != 0) {
                return this.f75814a.h(t9);
            }
            try {
                K apply = this.f72410f.apply(t9);
                if (this.f72413i) {
                    boolean a10 = this.f72411g.a((K) this.f72412h, apply);
                    this.f72412h = apply;
                    if (a10) {
                        return false;
                    }
                } else {
                    this.f72413i = true;
                    this.f72412h = apply;
                }
                this.f75814a.onNext(t9);
                return true;
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
            while (true) {
                T poll = this.f75816c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f72410f.apply(poll);
                if (!this.f72413i) {
                    this.f72413i = true;
                    this.f72412h = apply;
                    return poll;
                } else if (!this.f72411g.a((K) this.f72412h, apply)) {
                    this.f72412h = apply;
                    return poll;
                } else {
                    this.f72412h = apply;
                    if (this.f75818e != 1) {
                        this.f75815b.request(1L);
                    }
                }
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    /* compiled from: FlowableDistinctUntilChanged.java */
    /* loaded from: classes3.dex */
    static final class b<T, K> extends io.reactivex.internal.subscribers.b<T, T> implements o7.a<T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.o<? super T, K> f72414f;

        /* renamed from: g  reason: collision with root package name */
        final n7.d<? super K, ? super K> f72415g;

        /* renamed from: h  reason: collision with root package name */
        K f72416h;

        /* renamed from: i  reason: collision with root package name */
        boolean f72417i;

        b(org.reactivestreams.d<? super T> dVar, n7.o<? super T, K> oVar, n7.d<? super K, ? super K> dVar2) {
            super(dVar);
            this.f72414f = oVar;
            this.f72415g = dVar2;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f75822d) {
                return false;
            }
            if (this.f75823e != 0) {
                this.f75819a.onNext(t9);
                return true;
            }
            try {
                K apply = this.f72414f.apply(t9);
                if (this.f72417i) {
                    boolean a10 = this.f72415g.a((K) this.f72416h, apply);
                    this.f72416h = apply;
                    if (a10) {
                        return false;
                    }
                } else {
                    this.f72417i = true;
                    this.f72416h = apply;
                }
                this.f75819a.onNext(t9);
                return true;
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
            while (true) {
                T poll = this.f75821c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f72414f.apply(poll);
                if (!this.f72417i) {
                    this.f72417i = true;
                    this.f72416h = apply;
                    return poll;
                } else if (!this.f72415g.a((K) this.f72416h, apply)) {
                    this.f72416h = apply;
                    return poll;
                } else {
                    this.f72416h = apply;
                    if (this.f75823e != 1) {
                        this.f75820b.request(1L);
                    }
                }
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public o0(io.reactivex.j<T> jVar, n7.o<? super T, K> oVar, n7.d<? super K, ? super K> dVar) {
        super(jVar);
        this.f72408c = oVar;
        this.f72409d = dVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (dVar instanceof o7.a) {
            this.f71538b.j6(new a((o7.a) dVar, this.f72408c, this.f72409d));
        } else {
            this.f71538b.j6(new b(dVar, this.f72408c, this.f72409d));
        }
    }
}
