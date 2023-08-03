package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableFilter.java */
/* loaded from: classes4.dex */
public final class v0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.r<? super T> f80246b;

    /* compiled from: ObservableFilter.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.r<? super T> f80247f;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.r<? super T> filter) {
            super(actual);
            this.f80247f = filter;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f76474e == 0) {
                try {
                    if (this.f80247f.test(t9)) {
                        this.f76470a.onNext(t9);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    f(th);
                    return;
                }
            }
            this.f76470a.onNext(null);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll;
            do {
                poll = this.f76472c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f80247f.test(poll));
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public v0(io.reactivex.rxjava3.core.l0<T> source, q7.r<? super T> predicate) {
        super(source);
        this.f80246b = predicate;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f80246b));
    }
}
