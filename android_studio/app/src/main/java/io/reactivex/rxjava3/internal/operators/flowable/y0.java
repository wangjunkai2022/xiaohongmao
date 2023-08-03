package io.reactivex.rxjava3.internal.operators.flowable;

/* compiled from: FlowableFilter.java */
/* loaded from: classes4.dex */
public final class y0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.r<? super T> f78307c;

    /* compiled from: FlowableFilter.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.r<? super T> f78308f;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, q7.r<? super T> filter) {
            super(actual);
            this.f78308f = filter;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81232d) {
                return false;
            }
            if (this.f81233e != 0) {
                return this.f81229a.h(null);
            }
            try {
                return this.f78308f.test(t9) && this.f81229a.h(t9);
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
            io.reactivex.rxjava3.internal.fuseable.n<T> nVar = this.f81231c;
            q7.r<? super T> rVar = this.f78308f;
            while (true) {
                T poll = nVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f81233e == 2) {
                    nVar.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    /* compiled from: FlowableFilter.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends io.reactivex.rxjava3.internal.subscribers.b<T, T> implements io.reactivex.rxjava3.internal.fuseable.c<T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.r<? super T> f78309f;

        b(org.reactivestreams.d<? super T> actual, q7.r<? super T> filter) {
            super(actual);
            this.f78309f = filter;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81237d) {
                return false;
            }
            if (this.f81238e != 0) {
                this.f81234a.onNext(null);
                return true;
            }
            try {
                boolean test = this.f78309f.test(t9);
                if (test) {
                    this.f81234a.onNext(t9);
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
            this.f81235b.request(1L);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            io.reactivex.rxjava3.internal.fuseable.n<T> nVar = this.f81236c;
            q7.r<? super T> rVar = this.f78309f;
            while (true) {
                T poll = nVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f81238e == 2) {
                    nVar.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public y0(io.reactivex.rxjava3.core.m<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f78307c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76811b.G6(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f78307c));
        } else {
            this.f76811b.G6(new b(s9, this.f78307c));
        }
    }
}
