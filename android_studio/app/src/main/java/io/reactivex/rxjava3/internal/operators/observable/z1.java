package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Objects;

/* compiled from: ObservableMap.java */
/* loaded from: classes4.dex */
public final class z1<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends U> f80487b;

    /* compiled from: ObservableMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends io.reactivex.rxjava3.internal.observers.a<T, U> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, ? extends U> f80488f;

        a(io.reactivex.rxjava3.core.n0<? super U> actual, q7.o<? super T, ? extends U> mapper) {
            super(actual);
            this.f80488f = mapper;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f76473d) {
                return;
            }
            if (this.f76474e != 0) {
                this.f76470a.onNext(null);
                return;
            }
            try {
                U apply = this.f80488f.apply(t9);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.f76470a.onNext(apply);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public U poll() throws Throwable {
            T poll = this.f76472c.poll();
            if (poll != null) {
                U apply = this.f80488f.apply(poll);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                return apply;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public z1(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends U> function) {
        super(source);
        this.f80487b = function;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        this.f79141a.a(new a(t9, this.f80487b));
    }
}
