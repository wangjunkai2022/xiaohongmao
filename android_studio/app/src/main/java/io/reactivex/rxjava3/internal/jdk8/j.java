package io.reactivex.rxjava3.internal.jdk8;

import java.util.Objects;
import java.util.Optional;

/* compiled from: FlowableMapOptional.java */
/* loaded from: classes4.dex */
public final class j<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f76346b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, Optional<? extends R>> f76347c;

    /* compiled from: FlowableMapOptional.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends io.reactivex.rxjava3.internal.subscribers.a<T, R> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76348f;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super R> downstream, q7.o<? super T, Optional<? extends R>> mapper) {
            super(downstream);
            this.f76348f = mapper;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81232d) {
                return true;
            }
            if (this.f81233e != 0) {
                this.f81229a.onNext(null);
                return true;
            }
            try {
                Optional<? extends R> apply = this.f76348f.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    return this.f81229a.h((R) optional.get());
                }
                return false;
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
        public R poll() throws Throwable {
            while (true) {
                T poll = this.f81231c.poll();
                if (poll == null) {
                    return null;
                }
                Optional<? extends R> apply = this.f76348f.apply(poll);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    return optional.get();
                }
                if (this.f81233e == 2) {
                    this.f81231c.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    /* compiled from: FlowableMapOptional.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends io.reactivex.rxjava3.internal.subscribers.b<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76349f;

        b(org.reactivestreams.d<? super R> downstream, q7.o<? super T, Optional<? extends R>> mapper) {
            super(downstream);
            this.f76349f = mapper;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81237d) {
                return true;
            }
            if (this.f81238e != 0) {
                this.f81234a.onNext(null);
                return true;
            }
            try {
                Optional<? extends R> apply = this.f76349f.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.f81234a.onNext((R) optional.get());
                    return true;
                }
                return false;
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
        public R poll() throws Throwable {
            while (true) {
                T poll = this.f81236c.poll();
                if (poll == null) {
                    return null;
                }
                Optional<? extends R> apply = this.f76349f.apply(poll);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    return optional.get();
                }
                if (this.f81238e == 2) {
                    this.f81236c.request(1L);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public j(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, Optional<? extends R>> mapper) {
        this.f76346b = source;
        this.f76347c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76346b.G6(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f76347c));
        } else {
            this.f76346b.G6(new b(s9, this.f76347c));
        }
    }
}
