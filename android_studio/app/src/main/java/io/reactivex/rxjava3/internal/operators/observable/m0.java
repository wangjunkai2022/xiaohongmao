package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableDoAfterNext.java */
/* loaded from: classes4.dex */
public final class m0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super T> f79743b;

    /* compiled from: ObservableDoAfterNext.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.g<? super T> f79744f;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.g<? super T> onAfterNext) {
            super(actual);
            this.f79744f = onAfterNext;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f76470a.onNext(t9);
            if (this.f76474e == 0) {
                try {
                    this.f79744f.accept(t9);
                } catch (Throwable th) {
                    f(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f76472c.poll();
            if (poll != null) {
                this.f79744f.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public m0(io.reactivex.rxjava3.core.l0<T> source, q7.g<? super T> onAfterNext) {
        super(source);
        this.f79743b = onAfterNext;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79743b));
    }
}
