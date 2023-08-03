package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import java.util.Objects;
import java.util.Optional;

/* compiled from: ObservableMapOptional.java */
/* loaded from: classes4.dex */
public final class x<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g0<T> f76425a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, Optional<? extends R>> f76426b;

    /* compiled from: ObservableMapOptional.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends io.reactivex.rxjava3.internal.observers.a<T, R> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76427f;

        a(n0<? super R> downstream, q7.o<? super T, Optional<? extends R>> mapper) {
            super(downstream);
            this.f76427f = mapper;
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
                Optional<? extends R> apply = this.f76427f.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.f76470a.onNext((R) optional.get());
                }
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public R poll() throws Throwable {
            Optional<? extends R> optional;
            do {
                T poll = this.f76472c.poll();
                if (poll == null) {
                    return null;
                }
                Optional<? extends R> apply = this.f76427f.apply(poll);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                optional = apply;
            } while (!optional.isPresent());
            return optional.get();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public x(io.reactivex.rxjava3.core.g0<T> source, q7.o<? super T, Optional<? extends R>> mapper) {
        this.f76425a = source;
        this.f76426b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        this.f76425a.a(new a(observer, this.f76426b));
    }
}
