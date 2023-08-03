package io.reactivex.rxjava3.internal.operators.flowable;

/* compiled from: FlowableDistinctUntilChanged.java */
/* loaded from: classes4.dex */
public final class n0<T, K> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, K> f77604c;

    /* renamed from: d  reason: collision with root package name */
    final q7.d<? super K, ? super K> f77605d;

    /* compiled from: FlowableDistinctUntilChanged.java */
    /* loaded from: classes4.dex */
    static final class a<T, K> extends io.reactivex.rxjava3.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, K> f77606f;

        /* renamed from: g  reason: collision with root package name */
        final q7.d<? super K, ? super K> f77607g;

        /* renamed from: h  reason: collision with root package name */
        K f77608h;

        /* renamed from: i  reason: collision with root package name */
        boolean f77609i;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, q7.o<? super T, K> keySelector, q7.d<? super K, ? super K> comparer) {
            super(actual);
            this.f77606f = keySelector;
            this.f77607g = comparer;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81232d) {
                return false;
            }
            if (this.f81233e != 0) {
                return this.f81229a.h(t9);
            }
            try {
                K apply = this.f77606f.apply(t9);
                if (this.f77609i) {
                    boolean a10 = this.f77607g.a((K) this.f77608h, apply);
                    this.f77608h = apply;
                    if (a10) {
                        return false;
                    }
                } else {
                    this.f77609i = true;
                    this.f77608h = apply;
                }
                this.f81229a.onNext(t9);
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
            this.f81230b.request(1L);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            while (true) {
                T poll = this.f81231c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f77606f.apply(poll);
                if (!this.f77609i) {
                    this.f77609i = true;
                    this.f77608h = apply;
                    return poll;
                } else if (!this.f77607g.a((K) this.f77608h, apply)) {
                    this.f77608h = apply;
                    return poll;
                } else {
                    this.f77608h = apply;
                    if (this.f81233e != 1) {
                        this.f81230b.request(1L);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    /* compiled from: FlowableDistinctUntilChanged.java */
    /* loaded from: classes4.dex */
    static final class b<T, K> extends io.reactivex.rxjava3.internal.subscribers.b<T, T> implements io.reactivex.rxjava3.internal.fuseable.c<T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, K> f77610f;

        /* renamed from: g  reason: collision with root package name */
        final q7.d<? super K, ? super K> f77611g;

        /* renamed from: h  reason: collision with root package name */
        K f77612h;

        /* renamed from: i  reason: collision with root package name */
        boolean f77613i;

        b(org.reactivestreams.d<? super T> actual, q7.o<? super T, K> keySelector, q7.d<? super K, ? super K> comparer) {
            super(actual);
            this.f77610f = keySelector;
            this.f77611g = comparer;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81237d) {
                return false;
            }
            if (this.f81238e != 0) {
                this.f81234a.onNext(t9);
                return true;
            }
            try {
                K apply = this.f77610f.apply(t9);
                if (this.f77613i) {
                    boolean a10 = this.f77611g.a((K) this.f77612h, apply);
                    this.f77612h = apply;
                    if (a10) {
                        return false;
                    }
                } else {
                    this.f77613i = true;
                    this.f77612h = apply;
                }
                this.f81234a.onNext(t9);
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
            this.f81235b.request(1L);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            while (true) {
                T poll = this.f81236c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f77610f.apply(poll);
                if (!this.f77613i) {
                    this.f77613i = true;
                    this.f77612h = apply;
                    return poll;
                } else if (!this.f77611g.a((K) this.f77612h, apply)) {
                    this.f77612h = apply;
                    return poll;
                } else {
                    this.f77612h = apply;
                    if (this.f81238e != 1) {
                        this.f81235b.request(1L);
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public n0(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, K> keySelector, q7.d<? super K, ? super K> comparer) {
        super(source);
        this.f77604c = keySelector;
        this.f77605d = comparer;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76811b.G6(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f77604c, this.f77605d));
        } else {
            this.f76811b.G6(new b(s9, this.f77604c, this.f77605d));
        }
    }
}
