package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableDoAfterNext.java */
/* loaded from: classes3.dex */
public final class p0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super T> f72432c;

    /* compiled from: FlowableDoAfterNext.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.g<? super T> f72433f;

        a(o7.a<? super T> aVar, n7.g<? super T> gVar) {
            super(aVar);
            this.f72433f = gVar;
        }

        @Override // o7.a
        public boolean h(T t9) {
            boolean h4 = this.f75814a.h(t9);
            try {
                this.f72433f.accept(t9);
            } catch (Throwable th) {
                f(th);
            }
            return h4;
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f75814a.onNext(t9);
            if (this.f75818e == 0) {
                try {
                    this.f72433f.accept(t9);
                } catch (Throwable th) {
                    f(th);
                }
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f75816c.poll();
            if (poll != null) {
                this.f72433f.accept(poll);
            }
            return poll;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    /* compiled from: FlowableDoAfterNext.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.g<? super T> f72434f;

        b(org.reactivestreams.d<? super T> dVar, n7.g<? super T> gVar) {
            super(dVar);
            this.f72434f = gVar;
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75822d) {
                return;
            }
            this.f75819a.onNext(t9);
            if (this.f75823e == 0) {
                try {
                    this.f72434f.accept(t9);
                } catch (Throwable th) {
                    f(th);
                }
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f75821c.poll();
            if (poll != null) {
                this.f72434f.accept(poll);
            }
            return poll;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public p0(io.reactivex.j<T> jVar, n7.g<? super T> gVar) {
        super(jVar);
        this.f72432c = gVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (dVar instanceof o7.a) {
            this.f71538b.j6(new a((o7.a) dVar, this.f72432c));
        } else {
            this.f71538b.j6(new b(dVar, this.f72432c));
        }
    }
}
