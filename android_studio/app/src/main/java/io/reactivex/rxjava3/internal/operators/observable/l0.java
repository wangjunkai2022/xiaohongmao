package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableDistinctUntilChanged.java */
/* loaded from: classes4.dex */
public final class l0<T, K> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, K> f79657b;

    /* renamed from: c  reason: collision with root package name */
    final q7.d<? super K, ? super K> f79658c;

    /* compiled from: ObservableDistinctUntilChanged.java */
    /* loaded from: classes4.dex */
    static final class a<T, K> extends io.reactivex.rxjava3.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, K> f79659f;

        /* renamed from: g  reason: collision with root package name */
        final q7.d<? super K, ? super K> f79660g;

        /* renamed from: h  reason: collision with root package name */
        K f79661h;

        /* renamed from: i  reason: collision with root package name */
        boolean f79662i;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.o<? super T, K> keySelector, q7.d<? super K, ? super K> comparer) {
            super(actual);
            this.f79659f = keySelector;
            this.f79660g = comparer;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f76473d) {
                return;
            }
            if (this.f76474e != 0) {
                this.f76470a.onNext(t9);
                return;
            }
            try {
                K apply = this.f79659f.apply(t9);
                if (this.f79662i) {
                    boolean a10 = this.f79660g.a((K) this.f79661h, apply);
                    this.f79661h = apply;
                    if (a10) {
                        return;
                    }
                } else {
                    this.f79662i = true;
                    this.f79661h = apply;
                }
                this.f76470a.onNext(t9);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            while (true) {
                T poll = this.f76472c.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f79659f.apply(poll);
                if (!this.f79662i) {
                    this.f79662i = true;
                    this.f79661h = apply;
                    return poll;
                } else if (!this.f79660g.a((K) this.f79661h, apply)) {
                    this.f79661h = apply;
                    return poll;
                } else {
                    this.f79661h = apply;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public l0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, K> keySelector, q7.d<? super K, ? super K> comparer) {
        super(source);
        this.f79657b = keySelector;
        this.f79658c = comparer;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79657b, this.f79658c));
    }
}
